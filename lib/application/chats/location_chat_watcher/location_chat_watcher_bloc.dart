import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:friendlinus/domain/data/chats/i_chat_repository.dart';
import 'package:friendlinus/domain/data/chats/location_chat.dart';
import 'package:friendlinus/domain/data/chats/location_failure.dart';
import 'package:friendlinus/domain/data/data_failure.dart';
import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart';

part 'location_chat_watcher_event.dart';
part 'location_chat_watcher_state.dart';
part 'location_chat_watcher_bloc.freezed.dart';

@injectable
class LocationChatWatcherBloc
    extends Bloc<LocationChatWatcherEvent, LocationChatWatcherState> {
  final IChatRepository _chatRepository;

  LocationChatWatcherBloc(this._chatRepository)
      : super(const LocationChatWatcherState.initial());

  StreamSubscription<Either<DataFailure, List<LocationChat>>>?
      _chatStreamSubscription;

  @override
  Stream<LocationChatWatcherState> mapEventToState(
    LocationChatWatcherEvent event,
  ) async* {
    yield* event.map(
      retrieveChatsStarted: (e) async* {
        yield const LocationChatWatcherState.loadInProgress();
        Either<LocationFailure, Position> failureOrPosition =
            await _chatRepository.getLastKnownLocation();
        LocationFailure? locationFailure;
        Position? lastKnownPosition;

        failureOrPosition.fold(
            (f) => locationFailure = f, (p) => lastKnownPosition = p);
        if (locationFailure != null) {
          yield LocationChatWatcherState.loadLocationFailure(locationFailure!);
        } else {
          DataFailure? dataFailure;
          List<String>? chatIds = [];
          Either<DataFailure, List<String>> failureOrChatIds =
              await _chatRepository.getNearestChatIds(lastKnownPosition!);
          failureOrChatIds.fold((f) => dataFailure = f, (ids) => chatIds = ids);
          if (dataFailure != null) {
            yield LocationChatWatcherState.loadDataFailure(dataFailure!);
          } else {
            await _chatStreamSubscription?.cancel();
            _chatStreamSubscription = _chatRepository
                .retrieveLocationChats(chatIds!)
                .listen((failureOrChats) => add(
                    LocationChatWatcherEvent.chatsReceived(failureOrChats)));
          }
        }
      },
      refreshedLocation: (e) async* {
        await _chatStreamSubscription?.cancel();
        Either<LocationFailure, Position> failureOrPosition =
            await _chatRepository.getCurrentLocation();
        LocationFailure? failure;
        Position? newPosition;

        failureOrPosition.fold((f) => failure = f, (p) => newPosition = p);
        if (failure != null) {
          yield LocationChatWatcherState.loadLocationFailure(failure!);
        } else {
          print('latitude:' + newPosition!.latitude.toString());
          print('longitude:' + newPosition!.longitude.toString());
          add(LocationChatWatcherEvent.retrieveChatsFromNewLocationStarted(
              newPosition!));
        }
      },
      retrieveChatsFromNewLocationStarted: (e) async* {
        DataFailure? dataFailure;
        List<String>? chatIds = [];
        Either<DataFailure, List<String>> failureOrChatIds =
            await _chatRepository.getNearestChatIds(e.position);
        failureOrChatIds.fold((f) => dataFailure = f, (ids) => chatIds = ids);
        if (dataFailure != null) {
          yield LocationChatWatcherState.loadDataFailure(dataFailure!);
        } else {
          await _chatStreamSubscription?.cancel();
          _chatStreamSubscription = _chatRepository
              .retrieveLocationChats(chatIds!)
              .listen((failureOrChats) =>
                  add(LocationChatWatcherEvent.chatsReceived(failureOrChats)));
        }
      },
      chatsReceived: (e) async* {
        yield e.failureOrChats.fold(
            (f) => LocationChatWatcherState.loadDataFailure(f),
            (c) => LocationChatWatcherState.loadSuccess(c));
      },
    );
  }

  @override
  Future<void> close() async {
    await _chatStreamSubscription?.cancel();
    return super.close();
  }
}

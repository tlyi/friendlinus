import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:friendlinus/domain/data/chats/i_chat_repository.dart';
import 'package:friendlinus/domain/data/chats/location_chat.dart';
import 'package:friendlinus/domain/data/chats/location_failure.dart';
import 'package:friendlinus/domain/data/chats/value_objects.dart';
import 'package:friendlinus/domain/data/data_failure.dart';
import 'package:friendlinus/domain/data/forum/value_objects.dart';
import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart';

part 'location_chat_form_event.dart';
part 'location_chat_form_state.dart';
part 'location_chat_form_bloc.freezed.dart';

@injectable
class LocationChatFormBloc
    extends Bloc<LocationChatFormEvent, LocationChatFormState> {
  IChatRepository _chatRepository;

  LocationChatFormBloc(this._chatRepository)
      : super(LocationChatFormState.initial());

  @override
  Stream<LocationChatFormState> mapEventToState(
    LocationChatFormEvent event,
  ) async* {
    yield* event.map(titleChanged: (e) async* {
      yield state.copyWith(
          locationChat: state.locationChat.copyWith(
        chatTitle: Title(e.titleStr),
      ));
    }, messageChanged: (e) async* {
      yield state.copyWith(introMessage: IntroMessage(e.messageStr));
    }, locationSet: (e) async* {
      yield state.copyWith(isGettingLocation: true);
      Either<LocationFailure, Position> failureOrCurrentLocation =
          await _chatRepository.getCurrentLocation();

      yield failureOrCurrentLocation.fold((failure) {
        print(failure);
        return state.copyWith(
          locationSet: false,
          isGettingLocation: false,
          failureOrCurrentLocation: failureOrCurrentLocation,
        );
      },
          (position) => state.copyWith(
              locationSet: true,
              isGettingLocation: false,
              failureOrCurrentLocation: failureOrCurrentLocation,
              locationChat: state.locationChat.copyWith(
                  latitude: position.latitude, longitude: position.longitude)));
      
      print('after setting: ${state.locationSet}');
    }, createdChat: (e) async* {
      Either<DataFailure, Unit>? failureOrSuccess;

      bool isTitleValid = state.locationChat.chatTitle.isValid();
      bool isMessageValid = state.introMessage.isValid();
      String userId = await _chatRepository.getOwnId();
      print(state.locationSet);
      print('title: $isTitleValid');
      print('message: $isMessageValid');
      if (isTitleValid && isMessageValid && state.locationSet) {
        yield state.copyWith(
            isSaving: true,
            locationChat: state.locationChat.copyWith(
              lastMessage: state.introMessage.getOrCrash(),
              creatorUserId: userId,
              
            ),
            createFailureOrSuccessOption: none());
        print('uploading');
        failureOrSuccess = await _chatRepository
            .createLocationChat(state.locationChat.copyWith(
          lastSenderId: userId,
          lastMessage: state.introMessage.getOrCrash(),
          creatorUserId: userId,
        ));
      }

      yield state.copyWith(
        isSaving: false,
        showErrorMessages: true,
        createFailureOrSuccessOption: optionOf(failureOrSuccess),
      );
    });
  }
}

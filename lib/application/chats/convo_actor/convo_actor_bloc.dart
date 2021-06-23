import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:friendlinus/domain/core/value_objects.dart';
import 'package:friendlinus/domain/data/chats/chat_message/chat_message.dart';
import 'package:friendlinus/domain/data/chats/i_chat_repository.dart';
import 'package:friendlinus/domain/data/chats/value_objects.dart';
import 'package:friendlinus/domain/data/data_failure.dart';
import 'package:injectable/injectable.dart';

part 'convo_actor_event.dart';
part 'convo_actor_state.dart';
part 'convo_actor_bloc.freezed.dart';

@injectable
class ConvoActorBloc extends Bloc<ConvoActorEvent, ConvoActorState> {
  final IChatRepository _chatRepository;
  ConvoActorBloc(this._chatRepository) : super(ConvoActorState.initial());

  @override
  Stream<ConvoActorState> mapEventToState(
    ConvoActorEvent event,
  ) async* {
    yield* event.map(convoOpened: (e) async* {
      final ownId = await _chatRepository.getOwnId();
      yield state.copyWith(
        ownId: ownId,
        convoId: e.convoId,
        chatMessage: state.chatMessage.copyWith(senderId: ownId),
      );
    }, messageChanged: (e) async* {
      yield state.copyWith(
          chatMessage:
              state.chatMessage.copyWith(messageBody: MessageBody(e.message)));
    }, photoChanged: (e) async* {
      final failureOrString = await _chatRepository.uploadPhoto(
          e.photo, state.convoId, state.messageId);
      String url = '';
      failureOrString.fold(
        (f) => print(f),
        (s) {
          url = s;
        },
      );
      yield state.copyWith(
          photoUrl: failureOrString,
          chatMessage: state.chatMessage.copyWith(photoUrl: url));
    }, messageSent: (e) async* {
      Either<DataFailure, Unit> failureOrSuccess;
      failureOrSuccess = await _chatRepository.createMessage(
          convoId: state.convoId,
          messageId: state.messageId,
          chatMessage: state.chatMessage);
      yield state.copyWith(
          sentFailureOrSuccessOption: optionOf(failureOrSuccess),
          messageId: UniqueId('').getOrCrash());
    });
  }
}

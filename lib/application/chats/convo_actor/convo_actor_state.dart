part of 'convo_actor_bloc.dart';

@freezed
class ConvoActorState with _$ConvoActorState {
  const factory ConvoActorState({
    required Either<DataFailure, String> photoUrl,
    required ChatMessage chatMessage,
    required Option<Either<DataFailure, Unit>> sentFailureOrSuccessOption,
    required String ownId,
    required String convoId,
    required String messageId,
  }) = _ConvoActorState;

  factory ConvoActorState.initial() => ConvoActorState(
      photoUrl: right(''),
      chatMessage: ChatMessage.empty(),
      sentFailureOrSuccessOption: none(),
      ownId: '',
      convoId: '',
      messageId: UniqueId('').getOrCrash());
}

part of 'convo_actor_bloc.dart';

@freezed
class ConvoActorEvent with _$ConvoActorEvent {
  const factory ConvoActorEvent.convoOpened(String convoId) = _ConvoOpened;
  const factory ConvoActorEvent.messageChanged(String message) =
      _MessageChanged;
  const factory ConvoActorEvent.photoChanged(File photo) = _PhotoChanged;
  const factory ConvoActorEvent.messageSent() = _MessageSent;
  const factory ConvoActorEvent.messageRead(String messageId) = _MessageRead;
  const factory ConvoActorEvent.lastMessageRead() = _LastMessageRead;
}

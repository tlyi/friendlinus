part of 'chat_bloc.dart';

@freezed
class ChatEvent with _$ChatEvent {
  const factory ChatEvent.chatStarted(String otherId) = _ChatStarted;
}

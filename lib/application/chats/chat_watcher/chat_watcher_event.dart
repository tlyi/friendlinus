part of 'chat_watcher_bloc.dart';

@freezed
class ChatWatcherEvent with _$ChatWatcherEvent {
  const factory ChatWatcherEvent.started() = _Started;
}
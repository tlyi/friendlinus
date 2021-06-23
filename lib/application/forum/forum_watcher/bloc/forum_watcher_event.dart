part of 'forum_watcher_bloc.dart';

@freezed
class ForumWatcherEvent with _$ForumWatcherEvent {
  const factory ForumWatcherEvent.started() = _Started;
}
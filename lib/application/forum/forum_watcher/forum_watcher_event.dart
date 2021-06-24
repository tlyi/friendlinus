part of 'forum_watcher_bloc.dart';

@freezed
class ForumWatcherEvent with _$ForumWatcherEvent {
  const factory ForumWatcherEvent.retrieveForumsStarted() =
      _RetrieveForumsStarted;
  const factory ForumWatcherEvent.forumsReceived(
      Either<DataFailure, List<ForumPost>> failureOrForums) = _ForumsReceived;
}

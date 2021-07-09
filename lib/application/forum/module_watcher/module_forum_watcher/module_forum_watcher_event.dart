part of 'module_forum_watcher_bloc.dart';

@freezed
class ModuleForumWatcherEvent with _$ModuleForumWatcherEvent {
  const factory ModuleForumWatcherEvent.retrieveForumsStarted(String moduleCode) =
      _RetrieveForumsStarted;
  const factory ModuleForumWatcherEvent.forumsReceived(
      Either<DataFailure, List<ForumPost>> failureOrForums) = _ForumsReceived;
}
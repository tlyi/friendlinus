part of 'forum_watcher_bloc.dart';

@freezed
class ForumWatcherState with _$ForumWatcherState {
  const factory ForumWatcherState.initial() = _Initial;
  const factory ForumWatcherState.loadInProgress() = _LoadInProgress;
  const factory ForumWatcherState.loadSuccess(List<ForumPost> forums) =
      _LoadSuccess;
  const factory ForumWatcherState.loadFailure(DataFailure dataFailure) =
      _LoadFailure;
}

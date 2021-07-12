part of 'feed_bloc.dart';

@freezed
class FeedState with _$FeedState {
  const factory FeedState.initial() = _Initial;
  const factory FeedState.loadInProgress() = _LoadInProgress;
  const factory FeedState.loadSuccess(List<ForumPost> forums) = _LoadSuccess;
    const factory FeedState.loadLike(List<ForumPost> forums) = _LoadLike;

  const factory FeedState.loadFailure(DataFailure dataFailure) = _LoadFailure;
}

part of 'friend_feed_bloc.dart';

@freezed
class FriendFeedState with _$FriendFeedState {
  const factory FriendFeedState.initial() = _Initial;
  const factory FriendFeedState.loadInProgress() = _LoadInProgress;
  const factory FriendFeedState.loadSuccess(List<ForumPost> forums) =
      _LoadSuccess;
  const factory FriendFeedState.loadFailure(DataFailure failure) = _LoadFailure;
}

part of '../bloc/friend_feed_bloc.dart';

@freezed
class FriendFeedEvent with _$FriendFeedEvent {
  const factory FriendFeedEvent.loaded() = _Loaded;
  const factory FriendFeedEvent.refreshFeed() = _RefreshFeed;
  const factory FriendFeedEvent.liked(
      List<ForumPost> forums, int index, String userId) = _Liked;
  const factory FriendFeedEvent.unliked(
      List<ForumPost> forums, int index, String userId) = _Unliked;
}
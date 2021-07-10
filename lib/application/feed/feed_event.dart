part of 'feed_bloc.dart';

@freezed
class FeedEvent with _$FeedEvent {
  const factory FeedEvent.loaded() = _Loaded;
  const factory FeedEvent.refreshFriendFeed() = _RefreshFriendFeed;
  const factory FeedEvent.refreshModuleFeed() = _RefreshModuleFeed;
}

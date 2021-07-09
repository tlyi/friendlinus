part of 'friend_feed_bloc.dart';

@freezed
class FriendFeedEvent with _$FriendFeedEvent {
  const factory FriendFeedEvent.started() = _Started;
}

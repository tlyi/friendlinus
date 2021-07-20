part of 'module_feed_bloc.dart';

@freezed
class ModuleFeedEvent with _$ModuleFeedEvent {
  const factory ModuleFeedEvent.loaded() = _Loaded;
  const factory ModuleFeedEvent.refreshFeed() = _RefreshFeed;
  const factory ModuleFeedEvent.liked(
      List<ForumPost> forums, int index, String userId) = _Liked;
  const factory ModuleFeedEvent.unliked(
      List<ForumPost> forums, int index, String userId) = _Unliked;
}
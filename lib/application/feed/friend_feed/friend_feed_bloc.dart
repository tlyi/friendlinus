import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:friendlinus/domain/data/data_failure.dart';
import 'package:friendlinus/domain/data/forum/forum_post/forum_post.dart';
import 'package:injectable/injectable.dart';
import 'package:friendlinus/domain/data/forum/i_forum_repository.dart';


part 'friend_feed_event.dart';
part 'friend_feed_state.dart';
part 'friend_feed_bloc.freezed.dart';

@injectable
class FriendFeedBloc extends Bloc<FriendFeedEvent, FriendFeedState> {
    final IForumRepository _forumRepository;
  FriendFeedBloc(this._forumRepository) : super(const FriendFeedState.initial());

  @override
  Stream<FriendFeedState> mapEventToState(
    FriendFeedEvent event,
  ) async* {
    yield* event.map(
      loaded: (e) async* {
        yield const FriendFeedState.loadInProgress();
      },
      refreshFeed: (e) async* {
        yield const FriendFeedState.loadInProgress();
        final userId = await _forumRepository.getOwnId();
        print('at friend feed');
        final Either<DataFailure, List<ForumPost>> failureOrForums =
            await _forumRepository.retrieveFriendFeed(userId);
        yield failureOrForums.fold((f) => FriendFeedState.loadFailure(f),
            (forums) => FriendFeedState.loadSuccess(forums));
      },
      liked: (e) async* {
        List<ForumPost> forums = e.forums;
        ForumPost forumLiked = forums[e.index];
        List<String> likedUserIds = forumLiked.likedUserIds;
        likedUserIds.add(e.userId);
        forums[e.index] = forumLiked.copyWith(
            likes: forumLiked.likes + 1, likedUserIds: likedUserIds);
        yield FriendFeedState.loadLike(forums);
      },
      unliked: (e) async* {
        List<ForumPost> forums = e.forums;
        ForumPost forumLiked = forums[e.index];
        List<String> likedUserIds = forumLiked.likedUserIds;
        likedUserIds.remove(e.userId);
        forums[e.index] = forumLiked.copyWith(
            likes: forumLiked.likes - 1, likedUserIds: likedUserIds);
        yield FriendFeedState.loadLike(forums);
      },
    );
  }
}

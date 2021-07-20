import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:friendlinus/domain/data/data_failure.dart';
import 'package:friendlinus/domain/data/forum/forum_post/forum_post.dart';
import 'package:injectable/injectable.dart';
import 'package:friendlinus/domain/data/forum/i_forum_repository.dart';


part 'module_feed_event.dart';
part 'module_feed_state.dart';
part 'module_feed_bloc.freezed.dart';

@injectable
class ModuleFeedBloc extends Bloc<ModuleFeedEvent, ModuleFeedState> {
    final IForumRepository _forumRepository;
  ModuleFeedBloc(this._forumRepository) : super(const ModuleFeedState.initial());

  @override
  Stream<ModuleFeedState> mapEventToState(
    ModuleFeedEvent event,
  ) async* {
    yield* event.map(
      loaded: (e) async* {
        yield const ModuleFeedState.loadInProgress();
      },
      refreshFeed: (e) async* {
        yield const ModuleFeedState.loadInProgress();
        final userId = await _forumRepository.getOwnId();
        print('at module feed');
        final Either<DataFailure, List<ForumPost>> failureOrForums =
            await _forumRepository.retrieveModuleFeed();
        yield failureOrForums.fold((f) => ModuleFeedState.loadFailure(f),
            (forums) => ModuleFeedState.loadSuccess(forums));
      },
      liked: (e) async* {
        List<ForumPost> forums = e.forums;
        ForumPost forumLiked = forums[e.index];
        List<String> likedUserIds = forumLiked.likedUserIds;
        likedUserIds.add(e.userId);
        forums[e.index] = forumLiked.copyWith(
            likes: forumLiked.likes + 1, likedUserIds: likedUserIds);
        yield ModuleFeedState.loadLike(forums);
      },
      unliked: (e) async* {
        List<ForumPost> forums = e.forums;
        ForumPost forumLiked = forums[e.index];
        List<String> likedUserIds = forumLiked.likedUserIds;
        likedUserIds.remove(e.userId);
        forums[e.index] = forumLiked.copyWith(
            likes: forumLiked.likes - 1, likedUserIds: likedUserIds);
        yield ModuleFeedState.loadLike(forums);
      },
    );
  }
}

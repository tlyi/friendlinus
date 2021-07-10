import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:friendlinus/domain/data/data_failure.dart';
import 'package:friendlinus/domain/data/forum/forum_post/forum_post.dart';
import 'package:friendlinus/domain/data/forum/i_forum_repository.dart';
import 'package:friendlinus/domain/data/profile/i_profile_repository.dart';
import 'package:injectable/injectable.dart';

part 'feed_event.dart';
part 'feed_state.dart';
part 'feed_bloc.freezed.dart';

@injectable
class FeedBloc extends Bloc<FeedEvent, FeedState> {
  final IForumRepository _forumRepository;
  FeedBloc(this._forumRepository) : super(const FeedState.initial());

  @override
  Stream<FeedState> mapEventToState(
    FeedEvent event,
  ) async* {
    yield* event.map(
      loaded: (e) async* {
        yield const FeedState.loadInProgress();
      },
      refreshFriendFeed: (e) async* {
        yield const FeedState.loadInProgress();
        final userId = await _forumRepository.getOwnId();
        print('at friend feed');
        final Either<DataFailure, List<ForumPost>> failureOrForums =
            await _forumRepository.retrieveFriendFeed(userId);
        yield failureOrForums.fold((f) => FeedState.loadFailure(f),
            (forums) => FeedState.loadSuccess(forums));
      },
      refreshModuleFeed: (e) async* {
        yield const FeedState.loadInProgress();
        final userId = await _forumRepository.getOwnId();
        print('at module feed');
        final Either<DataFailure, List<ForumPost>> failureOrForums =
            await _forumRepository.retrieveModuleFeed();
        yield failureOrForums.fold((f) => FeedState.loadFailure(f),
            (forums) => FeedState.loadSuccess(forums));
      },
    );
  }
}

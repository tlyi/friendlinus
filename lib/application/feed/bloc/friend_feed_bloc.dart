import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:friendlinus/domain/data/data_failure.dart';
import 'package:friendlinus/domain/data/forum/forum_post/forum_post.dart';
import 'package:friendlinus/domain/data/forum/i_forum_repository.dart';
import 'package:friendlinus/domain/data/profile/i_profile_repository.dart';
import 'package:injectable/injectable.dart';

part 'friend_feed_event.dart';
part 'friend_feed_state.dart';
part 'friend_feed_bloc.freezed.dart';

@injectable
class FriendFeedBloc extends Bloc<FriendFeedEvent, FriendFeedState> {
  IForumRepository _forumRepository;
  FriendFeedBloc(this._forumRepository)
      : super(const FriendFeedState.initial());

  @override
  Stream<FriendFeedState> mapEventToState(
    FriendFeedEvent event,
  ) async* {
    yield* event.map(
      started: (e) async* {
        yield FriendFeedState.loadInProgress();
        final userId = await _forumRepository.getOwnId();

        final Either<DataFailure, List<ForumPost>> failureOrForums =
            await _forumRepository.retrieveFriendFeed(userId);
        yield failureOrForums.fold((f) => FriendFeedState.loadFailure(f),
            (forums) => FriendFeedState.loadSuccess(forums));
      },
    );
  }
}

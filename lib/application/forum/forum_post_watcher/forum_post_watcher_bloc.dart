import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:friendlinus/domain/data/data_failure.dart';
import 'package:friendlinus/domain/data/forum/forum_post/forum_post.dart';
import 'package:friendlinus/domain/data/forum/i_forum_repository.dart';
import 'package:friendlinus/domain/data/profile/i_profile_repository.dart';
import 'package:injectable/injectable.dart';

part 'forum_post_watcher_event.dart';
part 'forum_post_watcher_state.dart';
part 'forum_post_watcher_bloc.freezed.dart';

@injectable
class ForumPostWatcherBloc
    extends Bloc<ForumPostWatcherEvent, ForumPostWatcherState> {
  final IForumRepository _forumRepository;
  final IProfileRepository _profileRepository;

  ForumPostWatcherBloc(this._forumRepository, this._profileRepository)
      : super(ForumPostWatcherState.initial());

  StreamSubscription<Either<DataFailure, ForumPost>>?
      _forumPostStreamSubscription;

  @override
  Stream<ForumPostWatcherState> mapEventToState(
    ForumPostWatcherEvent event,
  ) async* {
    yield* event.map(retrieveForumPostStarted: (e) async* {
      yield const ForumPostWatcherState.loadInProgress();
      await _forumPostStreamSubscription?.cancel();
      _forumPostStreamSubscription = _forumRepository
          .retrieveForumPost(e.forumId)
          .listen((failureOrForumPost) =>
              add(ForumPostWatcherEvent.forumPostReceived(failureOrForumPost)));
    }, forumPostReceived: (e) async* {
      e.failureOrForumPost.fold((f) async* {
        yield ForumPostWatcherState.loadFailure(f);
      }, (forum) => add(ForumPostWatcherEvent.posterUsernameRetrieved(forum)));
    }, posterUsernameRetrieved: (e) async* {
      Either<DataFailure, String> posterUsernameOrFailure =
          await _profileRepository.getUsername(e.forum.posterUserId);
      String posterUsername = posterUsernameOrFailure.getOrElse(() => '');
      yield ForumPostWatcherState.loadSuccess(e.forum, posterUsername);
    });
  }

  @override
  Future<void> close() async {
    await _forumPostStreamSubscription?.cancel();
    return super.close();
  }
}

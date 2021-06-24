import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:friendlinus/domain/data/data_failure.dart';
import 'package:friendlinus/domain/data/forum/forum_post.dart';
import 'package:friendlinus/domain/data/forum/i_forum_repository.dart';

part 'forum_watcher_event.dart';
part 'forum_watcher_state.dart';
part 'forum_watcher_bloc.freezed.dart';

class ForumWatcherBloc extends Bloc<ForumWatcherEvent, ForumWatcherState> {
  final IForumRepository _forumRepository;
  ForumWatcherBloc(this._forumRepository)
      : super(const ForumWatcherState.initial());

  StreamSubscription<Either<DataFailure, List<ForumPost>>>?
      _forumStreamSubscription;

  @override
  Stream<ForumWatcherState> mapEventToState(
    ForumWatcherEvent event,
  ) async* {
    yield* event.map(
      retrieveForumsStarted: (e) async* {
        yield const ForumWatcherState.loadInProgress();
        await _forumStreamSubscription?.cancel();
        _forumStreamSubscription = _forumRepository.retrieveForums().listen(
            (failureOrForums) =>
                add(ForumWatcherEvent.forumsReceived(failureOrForums)));
      },
      forumsReceived: (e) async* {
        yield e.failureOrForums.fold((f) => ForumWatcherState.loadFailure(f),
            (forums) => ForumWatcherState.loadSuccess(forums));
      },
    );
  }

  @override
  Future<void> close() async {
    await _forumStreamSubscription?.cancel();
    return super.close();
  }
}

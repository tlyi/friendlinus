import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:friendlinus/domain/data/data_failure.dart';
import 'package:friendlinus/domain/data/forum/comment/comment.dart';
import 'package:friendlinus/domain/data/forum/i_forum_repository.dart';
import 'package:injectable/injectable.dart';

part 'comment_watcher_event.dart';
part 'comment_watcher_state.dart';
part 'comment_watcher_bloc.freezed.dart';

@injectable
class CommentWatcherBloc
    extends Bloc<CommentWatcherEvent, CommentWatcherState> {
  final IForumRepository _forumRepository;

  CommentWatcherBloc(this._forumRepository)
      : super(CommentWatcherState.initial());

  StreamSubscription<Either<DataFailure, List<Comment>>>?
      _commentStreamSubscription;

  @override
  Stream<CommentWatcherState> mapEventToState(
    CommentWatcherEvent event,
  ) async* {
    yield* event.map(
      retrieveCommentsStarted: (e) async* {
        yield const CommentWatcherState.loadInProgress();
        await _commentStreamSubscription?.cancel();
        _commentStreamSubscription = _forumRepository.retrieveComments(e.forumId).listen(
            (failureOrComments) =>
                add(CommentWatcherEvent.commentsReceived(failureOrComments)));
      },
      commentsReceived: (e) async* {
        yield e.failureOrComments.fold(
            (f) => CommentWatcherState.loadFailure(f),
            (comments) => CommentWatcherState.loadSuccess(comments));
      },
    );
  }

  @override
  Future<void> close() async {
    await _commentStreamSubscription?.cancel();
    return super.close();
  }
}

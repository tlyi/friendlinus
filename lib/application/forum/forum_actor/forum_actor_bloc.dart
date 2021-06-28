import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:friendlinus/domain/data/data_failure.dart';
import 'package:friendlinus/domain/data/forum/comment/comment.dart';
import 'package:friendlinus/domain/data/forum/i_forum_repository.dart';
import 'package:friendlinus/domain/data/forum/value_objects.dart';
import 'package:injectable/injectable.dart';

part 'forum_actor_event.dart';
part 'forum_actor_state.dart';
part 'forum_actor_bloc.freezed.dart';

@injectable
class ForumActorBloc extends Bloc<ForumActorEvent, ForumActorState> {
  final IForumRepository _forumRepository;
  ForumActorBloc(this._forumRepository) : super(ForumActorState.initial());

  @override
  Stream<ForumActorState> mapEventToState(
    ForumActorEvent event,
  ) async* {
    yield* event.map(
      started: (e) async* {
        final userId = await _forumRepository.getOwnId();
        yield state.copyWith(
          userId: userId,
        );
      },
      liked: (e) async* {
        await _forumRepository.like(e.forumId, state.userId);
      },
      unliked: (e) async* {
        await _forumRepository.unlike(e.forumId, state.userId);
      },
      voted: (e) async* {
        await _forumRepository.vote(e.forumId, e.index, state.userId);
      },
      anonStateChanged: (e) async* {
        if (state.comment.isAnon) {
          yield state.copyWith(comment: state.comment.copyWith(isAnon: false));
        } else {
          yield state.copyWith(comment: state.comment.copyWith(isAnon: true));
        }
      },
      commentChanged: (e) async* {
        yield state.copyWith(
            comment:
                state.comment.copyWith(commentText: CommentText(e.commentStr)),
            createFailureOrSuccessOption: none());
      },
      commentCreated: (e) async* {
        Either<DataFailure, Unit>? failureOrSuccess;
        final isCommentValid = state.comment.commentText.isValid();
        if (isCommentValid) {
          yield state.copyWith(
              isLoading: true,
              createFailureOrSuccessOption: none(),
              comment: state.comment.copyWith(userId: state.userId));
          failureOrSuccess = await _forumRepository.createComment(
              state.comment.copyWith(userId: state.userId), e.forumId);
        }

        yield state.copyWith(
            isLoading: false,
            showErrorMessages: true,
            createFailureOrSuccessOption: optionOf(failureOrSuccess));
      },
    );
  }
}

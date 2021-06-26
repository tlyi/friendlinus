import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:friendlinus/domain/auth/i_auth_facade.dart';
import 'package:friendlinus/domain/core/errors.dart';
import 'package:friendlinus/domain/core/value_objects.dart';
import 'package:friendlinus/domain/data/data_failure.dart';
import 'package:friendlinus/domain/data/forum/forum_post.dart';
import 'package:friendlinus/domain/data/forum/i_forum_repository.dart';
import 'package:friendlinus/domain/data/forum/poll.dart';
import 'package:friendlinus/domain/data/forum/value_objects.dart';
import 'package:friendlinus/domain/data/profile/i_profile_repository.dart';
import 'package:friendlinus/injection.dart';
import 'package:injectable/injectable.dart';

part 'forum_form_event.dart';
part 'forum_form_state.dart';
part 'forum_form_bloc.freezed.dart';

@injectable
class ForumFormBloc extends Bloc<ForumFormEvent, ForumFormState> {
  final IForumRepository _forumRepository;
  final IProfileRepository _profileRepository;

  ForumFormBloc(this._forumRepository, this._profileRepository)
      : super(ForumFormState.initial());

  @override
  Stream<ForumFormState> mapEventToState(
    ForumFormEvent event,
  ) async* {
    yield* event.map(
      titleChanged: (e) async* {
        yield state.copyWith(
            forumPost: state.forumPost.copyWith(
          title: Title(e.titleStr),
        ));
      },
      tagChanged: (e) async* {
        yield state.copyWith(
            forumPost: state.forumPost.copyWith(
          tag: Tag(e.tagStr),
        ));
      },
      bodyChanged: (e) async* {
        yield state.copyWith(
            forumPost: state.forumPost.copyWith(
          body: Body(e.bodyStr),
        ));
      },
      anonStateChanged: (e) async* {
        if (state.forumPost.isAnon) {
          //Reverses state for the UI switch widget
          yield state.copyWith(
              forumPost: state.forumPost.copyWith(isAnon: false));
        } else {
          yield state.copyWith(
              forumPost: state.forumPost.copyWith(isAnon: true));
        }
      },
      photoAdded: (e) async* {
        final failureOrString = await _forumRepository.uploadPhoto(
            e.photo, state.forumPost.forumId);
        String url = '';
        failureOrString.fold(
          (f) => print(f),
          (s) {
            url = s;
          },
        );
        yield state.copyWith(
            photoUrl: failureOrString,
            forumPost: state.forumPost.copyWith(
              photoUrl: url,
              photoAdded: true,
              pollAdded: false,
            ));
      },
      pollAdded: (e) async* {
        yield state.copyWith(
            forumPost: state.forumPost.copyWith(
          pollAdded: true,
          photoAdded: false,
        ));
      },
      pollNumOptionsChanged: (e) async* {
        yield state.copyWith(
            poll: state.poll.copyWith(
          numOptions: e.numOptions,
          optionList: List.filled(e.numOptions, PollOption('')),
          voteList: List.filled(e.numOptions, 0),
        ));
      },
      pollTitleChanged: (e) async* {
        yield state.copyWith(
            poll: state.poll.copyWith(title: Title(e.pollTitleStr)));
      },
      pollOptionChanged: (e) async* {
        List<PollOption> currOptionList = List.from(state.poll.optionList);
        currOptionList[e.index] = PollOption(e.optionStr);
        yield state.copyWith(
            poll: state.poll.copyWith(optionList: currOptionList));
      },
      photoRemoved: (e) async* {
        yield state.copyWith(
            forumPost: state.forumPost.copyWith(photoAdded: false));
      },
      pollRemoved: (e) async* {
        yield state.copyWith(
            forumPost: state.forumPost.copyWith(pollAdded: false));
      },
      createdPost: (e) async* {
        Either<DataFailure, Unit> failureOrSuccess;
        final String userId = await _forumRepository.getOwnId();
        yield state.copyWith(
            isLoading: true,
            forumPost: state.forumPost.copyWith(posterUserId: userId),
            poll: state.poll.copyWith(creatorUuid: userId));

        _profileRepository.addForum(state.forumPost.forumId);
        if (state.forumPost.pollAdded) {
          Either<DataFailure, Unit> pollFailureOrSuccess;
          pollFailureOrSuccess = await _forumRepository.createPoll(
              state.poll.copyWith(creatorUuid: userId),
              state.forumPost.forumId);
          yield state.copyWith(
              createPollFailureOrSuccessOption: optionOf(pollFailureOrSuccess));
        }

        failureOrSuccess = await _forumRepository.create(
            state.forumPost.copyWith(posterUserId: userId),
            state.forumPost.forumId);

        yield state.copyWith(
          isLoading: false,
          createFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
    );
  }
}

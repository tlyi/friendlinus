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
      createdPost: (e) async* {
        Either<DataFailure, Unit> failureOrSuccess;
        final userOption = await getIt<IAuthFacade>().getSignedInUser();
        final user = userOption.getOrElse(() => throw NotAuthenticatedError());
        final String userID = user.id.getOrCrash();
        yield state.copyWith(
          isLoading: true,
          forumPost: state.forumPost.copyWith(posterUserId: userID),
        );
        _profileRepository.addForum(state.forumId);
        //TODO: Add to userID's forum list here

        failureOrSuccess =
            await _forumRepository.create(state.forumPost, state.forumId);

        yield state.copyWith(
          isLoading: false,
          createFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
      photoAdded: (e) async* {
        final failureOrString =
            await _forumRepository.uploadPhoto(e.photo, state.forumId);
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
        ));
      },
    );
  }
}

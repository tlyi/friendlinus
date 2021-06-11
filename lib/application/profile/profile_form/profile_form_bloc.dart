import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:friendlinus/domain/core/failures.dart';
import 'package:friendlinus/domain/data/data_failure.dart';
import 'package:friendlinus/domain/data/profile/i_profile_repository.dart';
import 'package:friendlinus/domain/data/profile/profile.dart';
import 'package:friendlinus/domain/data/profile/value_objects.dart';
import 'package:injectable/injectable.dart';

part 'profile_form_event.dart';
part 'profile_form_state.dart';
part 'profile_form_bloc.freezed.dart';

@injectable
class ProfileFormBloc extends Bloc<ProfileFormEvent, ProfileFormState> {
  final IProfileRepository _profileRepository;

  ProfileFormBloc(this._profileRepository) : super(ProfileFormState.initial());

  @override
  Stream<ProfileFormState> mapEventToState(
    ProfileFormEvent event,
  ) async* {
    yield* event.map(photoChanged: (e) async* {
      final failureOrString = await _profileRepository.uploadPhoto(e.photo);
      String url = '';
      failureOrString.fold(
        (f) => print(f),
        (s) {
          url = s;
        },
      );
      yield state.copyWith(
          photoUrl: failureOrString,
          profile: state.profile.copyWith(photoUrl: url));
    }, usernameChanged: (e) async* {
      String username = '';
      final failureOrUnique =
          await _profileRepository.verifyUsernameUnique(e.usernameStr);
      failureOrUnique.fold(
          (f) => print('Error with server, uhm not sure how to handle this'),
          (unique) {
        if (unique) {
          username = e.usernameStr;
        } else if (state.currentUsername == e.usernameStr) {
          username = e.usernameStr;
        } else {
          username = ' not unique ';
        }
      });
      yield state.copyWith(
        profile: state.profile.copyWith(username: Username(username)),
      );
    }, courseChanged: (e) async* {
      yield state.copyWith(
        profile: state.profile.copyWith(course: Course(e.courseStr)),
      );
    }, bioChanged: (e) async* {
      yield state.copyWith(
        profile: state.profile.copyWith(bio: Bio(e.bioStr)),
      );
    }, moduleChanged: (e) async* {
      yield state.copyWith(
        profile: state.profile.copyWith(module: Mod(e.moduleStr)),
      );
    }, saved: (e) async* {
      Either<DataFailure, Unit> failureOrSuccess;

      yield state.copyWith(
        isSaving: true,
        saveFailureOrSuccessOption: none(),
      );

      failureOrSuccess = await _profileRepository.create(state.profile);

      yield state.copyWith(
        isSaving: false,
        saveFailureOrSuccessOption: optionOf(failureOrSuccess),
      );
    }, getProfile: (e) async* {
      Either<DataFailure, Profile> failureOrSuccess;
      failureOrSuccess = await _profileRepository.readOwnProfile();
      final profile = failureOrSuccess.getOrElse(() => Profile.empty());
      yield state.copyWith(
        isLoading: false,
        currentProfile: failureOrSuccess,
        profile: profile,
        currentUsername: profile.username.getOrCrash(),
      );
    });
  }
}
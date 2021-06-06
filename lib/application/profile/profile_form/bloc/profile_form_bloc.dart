import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:friendlinus/domain/data/data_failure.dart';
import 'package:friendlinus/domain/data/i_data_repository.dart';
import 'package:injectable/injectable.dart';

part 'profile_form_event.dart';
part 'profile_form_state.dart';
part 'profile_form_bloc.freezed.dart';

@injectable
class ProfileFormBloc extends Bloc<ProfileFormEvent, ProfileFormState> {
  final IDataRepository _dataRepository;

  ProfileFormBloc(this._dataRepository) : super(ProfileFormState.initial());

  @override
  Stream<ProfileFormState> mapEventToState(
    ProfileFormEvent event,
  ) async* {
    yield* event.map(
      usernameChanged: (e) async* {
        yield state.copyWith(
          username: e.username,
        );
      },
      courseChanged: (e) async* {
        yield state.copyWith(
          course: e.course,
        );
      },
      bioChanged: (e) async* {
        yield state.copyWith(
          bio: e.bio,
        );
      },
      moduleChanged: (e) async* {
        yield state.copyWith(
          module: e.module,
        );
      },
      saved: (e) async* {
        Either<DataFailure, Unit> failureOrSuccess;

        yield state.copyWith(
          isSaving: true,
          saveFailureOrSuccessOption: none(),
        );

        failureOrSuccess = await _dataRepository.create(
            state.username, state.course, state.bio, state.module);

        print('Should have updated firestore alr');

        yield state.copyWith(
          isSaving: false,
          saveFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
    );
  }
}

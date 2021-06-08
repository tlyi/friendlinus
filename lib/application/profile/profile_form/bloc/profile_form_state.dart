part of 'profile_form_bloc.dart';

@freezed
class ProfileFormState with _$ProfileFormState {
  const factory ProfileFormState({
    required Either<DataFailure, String> photoUrl,
    required String username,
    required String course,
    required String bio,
    required String module,
    required bool isSaving,
    required Option<Either<DataFailure, Unit>> saveFailureOrSuccessOption,
  }) = _ProfileFormState;

  factory ProfileFormState.initial() => ProfileFormState(
        photoUrl: right(''),
        username: '',
        course: '',
        bio: '',
        module: '',
        isSaving: false,
        saveFailureOrSuccessOption: none(),
      );
}

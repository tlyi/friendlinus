part of 'profile_form_bloc.dart';

@freezed
class ProfileFormState with _$ProfileFormState {
  const factory ProfileFormState({
    required Either<DataFailure, String> photoUrl,
    required Profile profile,
    required bool isSaving,
    required Option<Either<DataFailure, Unit>> saveFailureOrSuccessOption,
    required bool isLoading,
    required Either<DataFailure, Profile> currentProfile,
    required String currentUsername,
  }) = _ProfileFormState;

  factory ProfileFormState.initial() => ProfileFormState(
        photoUrl: right(constants.DEFAULT_PHOTO_URL),
        profile: Profile.empty(),
        isSaving: false,
        saveFailureOrSuccessOption: none(),
        isLoading: true,
        currentProfile: right(Profile.empty()),
        currentUsername: '',
      );
}

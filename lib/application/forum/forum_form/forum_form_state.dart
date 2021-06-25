part of 'forum_form_bloc.dart';

@freezed
class ForumFormState with _$ForumFormState {
  const factory ForumFormState({
    required ForumPost forumPost,
    required Either<DataFailure, String> photoUrl,
    required Poll poll,
    required Option<Either<DataFailure, Unit>> createPollFailureOrSuccessOption,
    required Option<Either<DataFailure, Unit>> createFailureOrSuccessOption,
    required bool isLoading,
  }) = _ForumFormState;

  factory ForumFormState.initial() => ForumFormState(
        forumPost: ForumPost.empty(),
        photoUrl: right(''),
        poll: Poll.empty(),
        createFailureOrSuccessOption: none(),
        createPollFailureOrSuccessOption: none(),
        isLoading: false,
      );
}

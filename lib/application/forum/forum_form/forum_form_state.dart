part of 'forum_form_bloc.dart';

@freezed
class ForumFormState with _$ForumFormState {
  const factory ForumFormState({
    required String forumId,
    required ForumPost forumPost,
    required Either<DataFailure, String> photoUrl,
   required Option<Either<DataFailure, Unit>> createFailureOrSuccessOption,
    required bool isLoading,
  }) = _ForumFormState;

  factory ForumFormState.initial() => ForumFormState(
        forumId: UniqueId('').getOrCrash(),
        forumPost: ForumPost.empty(),
        photoUrl: right(''),
        createFailureOrSuccessOption: none(),
        isLoading: false,
      );
}

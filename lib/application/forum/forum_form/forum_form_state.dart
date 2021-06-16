part of 'forum_form_bloc.dart';

@freezed
class ForumFormState with _$ForumFormState {
  const factory ForumFormState({
    required ForumPost forumPost,
    required bool addedImage,
    required Either<DataFailure, String> photoUrl,
    required bool addedPoll,
  }) = _ForumFormState;

  factory ForumFormState.initial() => ForumFormState(
        forumPost: ForumPost.empty(),
        addedImage: false,
        addedPoll: false,
        photoUrl: right(''),
      );
}

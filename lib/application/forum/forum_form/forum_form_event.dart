part of 'forum_form_bloc.dart';

@freezed
class ForumFormEvent with _$ForumFormEvent {
  const factory ForumFormEvent.titleChanged(String titleStr) = _TitleChanged;
  const factory ForumFormEvent.tagChanged(String tagStr) = _TagChanged;
  const factory ForumFormEvent.bodyChanged(String bodyStr) = _BodyChanged;
  const factory ForumFormEvent.anonStateChanged() = _AnonStateChanged;
  const factory ForumFormEvent.photoAdded(File photo, String forumId) =
      _PhotoAdded;
  const factory ForumFormEvent.pollAdded() = _PollAdded;
  const factory ForumFormEvent.pollNumOptionsChanged(int numOptions) =
      _PollNumOptionsChanged;
  const factory ForumFormEvent.pollOptionChanged(int index, String optionStr) =
      _PollOptionChanged;
  const factory ForumFormEvent.photoRemoved() = _PhotoRemoved;
  const factory ForumFormEvent.pollRemoved() = _PollRemoved;

  const factory ForumFormEvent.createdPost() = _CreatedPost;
  //Implement delete forum/picture/poll
}

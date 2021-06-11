part of 'profile_form_bloc.dart';

@freezed
class ProfileFormEvent with _$ProfileFormEvent {
  const factory ProfileFormEvent.photoChanged(File photo) = _PhotoChanged;
  const factory ProfileFormEvent.usernameChanged(String usernameStr) =
      _UsernameChanged;
  const factory ProfileFormEvent.courseChanged(String courseStr) =
      _CourseChanged;
  const factory ProfileFormEvent.bioChanged(String bioStr) = _BioChanged;
  const factory ProfileFormEvent.moduleChanged(String moduleStr) =
      _ModuleChanged;
  const factory ProfileFormEvent.saved() = _Saved;
  const factory ProfileFormEvent.getProfile() = _GetProfile;
}

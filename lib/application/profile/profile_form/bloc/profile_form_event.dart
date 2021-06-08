part of 'profile_form_bloc.dart';

@freezed
class ProfileFormEvent with _$ProfileFormEvent {
  const factory ProfileFormEvent.photoChanged(File photo) = _PhotoChanged;
  const factory ProfileFormEvent.usernameChanged(String username) =
      _UsernameChanged;
  const factory ProfileFormEvent.courseChanged(String course) = _CourseChanged;
  const factory ProfileFormEvent.bioChanged(String bio) = _BioChanged;
  const factory ProfileFormEvent.moduleChanged(String module) = _ModuleChanged;
  const factory ProfileFormEvent.saved() = _Saved;
}

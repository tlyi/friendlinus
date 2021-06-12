part of 'search_profile_bloc.dart';

@freezed
class SearchProfileEvent with _$SearchProfileEvent {
  const factory SearchProfileEvent.searchChanged(String query) = _SearchChanged;
  const factory SearchProfileEvent.profileSelected(String username) =
      _ProfileSelected;
}

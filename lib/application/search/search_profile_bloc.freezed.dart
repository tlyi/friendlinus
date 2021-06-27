// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'search_profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SearchProfileEventTearOff {
  const _$SearchProfileEventTearOff();

  _SearchChanged searchChanged(String query) {
    return _SearchChanged(
      query,
    );
  }

  _ProfileSelected profileSelected(String username) {
    return _ProfileSelected(
      username,
    );
  }
}

/// @nodoc
const $SearchProfileEvent = _$SearchProfileEventTearOff();

/// @nodoc
mixin _$SearchProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) searchChanged,
    required TResult Function(String username) profileSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? searchChanged,
    TResult Function(String username)? profileSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchChanged value) searchChanged,
    required TResult Function(_ProfileSelected value) profileSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchChanged value)? searchChanged,
    TResult Function(_ProfileSelected value)? profileSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchProfileEventCopyWith<$Res> {
  factory $SearchProfileEventCopyWith(
          SearchProfileEvent value, $Res Function(SearchProfileEvent) then) =
      _$SearchProfileEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchProfileEventCopyWithImpl<$Res>
    implements $SearchProfileEventCopyWith<$Res> {
  _$SearchProfileEventCopyWithImpl(this._value, this._then);

  final SearchProfileEvent _value;
  // ignore: unused_field
  final $Res Function(SearchProfileEvent) _then;
}

/// @nodoc
abstract class _$SearchChangedCopyWith<$Res> {
  factory _$SearchChangedCopyWith(
          _SearchChanged value, $Res Function(_SearchChanged) then) =
      __$SearchChangedCopyWithImpl<$Res>;
  $Res call({String query});
}

/// @nodoc
class __$SearchChangedCopyWithImpl<$Res>
    extends _$SearchProfileEventCopyWithImpl<$Res>
    implements _$SearchChangedCopyWith<$Res> {
  __$SearchChangedCopyWithImpl(
      _SearchChanged _value, $Res Function(_SearchChanged) _then)
      : super(_value, (v) => _then(v as _SearchChanged));

  @override
  _SearchChanged get _value => super._value as _SearchChanged;

  @override
  $Res call({
    Object? query = freezed,
  }) {
    return _then(_SearchChanged(
      query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SearchChanged implements _SearchChanged {
  const _$_SearchChanged(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'SearchProfileEvent.searchChanged(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchChanged &&
            (identical(other.query, query) ||
                const DeepCollectionEquality().equals(other.query, query)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(query);

  @JsonKey(ignore: true)
  @override
  _$SearchChangedCopyWith<_SearchChanged> get copyWith =>
      __$SearchChangedCopyWithImpl<_SearchChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) searchChanged,
    required TResult Function(String username) profileSelected,
  }) {
    return searchChanged(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? searchChanged,
    TResult Function(String username)? profileSelected,
    required TResult orElse(),
  }) {
    if (searchChanged != null) {
      return searchChanged(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchChanged value) searchChanged,
    required TResult Function(_ProfileSelected value) profileSelected,
  }) {
    return searchChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchChanged value)? searchChanged,
    TResult Function(_ProfileSelected value)? profileSelected,
    required TResult orElse(),
  }) {
    if (searchChanged != null) {
      return searchChanged(this);
    }
    return orElse();
  }
}

abstract class _SearchChanged implements SearchProfileEvent {
  const factory _SearchChanged(String query) = _$_SearchChanged;

  String get query => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SearchChangedCopyWith<_SearchChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ProfileSelectedCopyWith<$Res> {
  factory _$ProfileSelectedCopyWith(
          _ProfileSelected value, $Res Function(_ProfileSelected) then) =
      __$ProfileSelectedCopyWithImpl<$Res>;
  $Res call({String username});
}

/// @nodoc
class __$ProfileSelectedCopyWithImpl<$Res>
    extends _$SearchProfileEventCopyWithImpl<$Res>
    implements _$ProfileSelectedCopyWith<$Res> {
  __$ProfileSelectedCopyWithImpl(
      _ProfileSelected _value, $Res Function(_ProfileSelected) _then)
      : super(_value, (v) => _then(v as _ProfileSelected));

  @override
  _ProfileSelected get _value => super._value as _ProfileSelected;

  @override
  $Res call({
    Object? username = freezed,
  }) {
    return _then(_ProfileSelected(
      username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ProfileSelected implements _ProfileSelected {
  const _$_ProfileSelected(this.username);

  @override
  final String username;

  @override
  String toString() {
    return 'SearchProfileEvent.profileSelected(username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProfileSelected &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(username);

  @JsonKey(ignore: true)
  @override
  _$ProfileSelectedCopyWith<_ProfileSelected> get copyWith =>
      __$ProfileSelectedCopyWithImpl<_ProfileSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) searchChanged,
    required TResult Function(String username) profileSelected,
  }) {
    return profileSelected(username);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? searchChanged,
    TResult Function(String username)? profileSelected,
    required TResult orElse(),
  }) {
    if (profileSelected != null) {
      return profileSelected(username);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchChanged value) searchChanged,
    required TResult Function(_ProfileSelected value) profileSelected,
  }) {
    return profileSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchChanged value)? searchChanged,
    TResult Function(_ProfileSelected value)? profileSelected,
    required TResult orElse(),
  }) {
    if (profileSelected != null) {
      return profileSelected(this);
    }
    return orElse();
  }
}

abstract class _ProfileSelected implements SearchProfileEvent {
  const factory _ProfileSelected(String username) = _$_ProfileSelected;

  String get username => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ProfileSelectedCopyWith<_ProfileSelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SearchProfileStateTearOff {
  const _$SearchProfileStateTearOff();

  _SearchProfileState call(
      {required Either<DataFailure, List<Profile>> searchProfileResults,
      required bool isSearching,
      required bool displayResults,
      required bool isLoadingProfile,
      required bool isLoadedProfile,
      required Either<DataFailure, Profile> selectedProfile,
      required String ownId}) {
    return _SearchProfileState(
      searchProfileResults: searchProfileResults,
      isSearching: isSearching,
      displayResults: displayResults,
      isLoadingProfile: isLoadingProfile,
      isLoadedProfile: isLoadedProfile,
      selectedProfile: selectedProfile,
      ownId: ownId,
    );
  }
}

/// @nodoc
const $SearchProfileState = _$SearchProfileStateTearOff();

/// @nodoc
mixin _$SearchProfileState {
  Either<DataFailure, List<Profile>> get searchProfileResults =>
      throw _privateConstructorUsedError;
  bool get isSearching => throw _privateConstructorUsedError;
  bool get displayResults => throw _privateConstructorUsedError;
  bool get isLoadingProfile => throw _privateConstructorUsedError;
  bool get isLoadedProfile => throw _privateConstructorUsedError;
  Either<DataFailure, Profile> get selectedProfile =>
      throw _privateConstructorUsedError;
  String get ownId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchProfileStateCopyWith<SearchProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchProfileStateCopyWith<$Res> {
  factory $SearchProfileStateCopyWith(
          SearchProfileState value, $Res Function(SearchProfileState) then) =
      _$SearchProfileStateCopyWithImpl<$Res>;
  $Res call(
      {Either<DataFailure, List<Profile>> searchProfileResults,
      bool isSearching,
      bool displayResults,
      bool isLoadingProfile,
      bool isLoadedProfile,
      Either<DataFailure, Profile> selectedProfile,
      String ownId});
}

/// @nodoc
class _$SearchProfileStateCopyWithImpl<$Res>
    implements $SearchProfileStateCopyWith<$Res> {
  _$SearchProfileStateCopyWithImpl(this._value, this._then);

  final SearchProfileState _value;
  // ignore: unused_field
  final $Res Function(SearchProfileState) _then;

  @override
  $Res call({
    Object? searchProfileResults = freezed,
    Object? isSearching = freezed,
    Object? displayResults = freezed,
    Object? isLoadingProfile = freezed,
    Object? isLoadedProfile = freezed,
    Object? selectedProfile = freezed,
    Object? ownId = freezed,
  }) {
    return _then(_value.copyWith(
      searchProfileResults: searchProfileResults == freezed
          ? _value.searchProfileResults
          : searchProfileResults // ignore: cast_nullable_to_non_nullable
              as Either<DataFailure, List<Profile>>,
      isSearching: isSearching == freezed
          ? _value.isSearching
          : isSearching // ignore: cast_nullable_to_non_nullable
              as bool,
      displayResults: displayResults == freezed
          ? _value.displayResults
          : displayResults // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingProfile: isLoadingProfile == freezed
          ? _value.isLoadingProfile
          : isLoadingProfile // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadedProfile: isLoadedProfile == freezed
          ? _value.isLoadedProfile
          : isLoadedProfile // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedProfile: selectedProfile == freezed
          ? _value.selectedProfile
          : selectedProfile // ignore: cast_nullable_to_non_nullable
              as Either<DataFailure, Profile>,
      ownId: ownId == freezed
          ? _value.ownId
          : ownId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$SearchProfileStateCopyWith<$Res>
    implements $SearchProfileStateCopyWith<$Res> {
  factory _$SearchProfileStateCopyWith(
          _SearchProfileState value, $Res Function(_SearchProfileState) then) =
      __$SearchProfileStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Either<DataFailure, List<Profile>> searchProfileResults,
      bool isSearching,
      bool displayResults,
      bool isLoadingProfile,
      bool isLoadedProfile,
      Either<DataFailure, Profile> selectedProfile,
      String ownId});
}

/// @nodoc
class __$SearchProfileStateCopyWithImpl<$Res>
    extends _$SearchProfileStateCopyWithImpl<$Res>
    implements _$SearchProfileStateCopyWith<$Res> {
  __$SearchProfileStateCopyWithImpl(
      _SearchProfileState _value, $Res Function(_SearchProfileState) _then)
      : super(_value, (v) => _then(v as _SearchProfileState));

  @override
  _SearchProfileState get _value => super._value as _SearchProfileState;

  @override
  $Res call({
    Object? searchProfileResults = freezed,
    Object? isSearching = freezed,
    Object? displayResults = freezed,
    Object? isLoadingProfile = freezed,
    Object? isLoadedProfile = freezed,
    Object? selectedProfile = freezed,
    Object? ownId = freezed,
  }) {
    return _then(_SearchProfileState(
      searchProfileResults: searchProfileResults == freezed
          ? _value.searchProfileResults
          : searchProfileResults // ignore: cast_nullable_to_non_nullable
              as Either<DataFailure, List<Profile>>,
      isSearching: isSearching == freezed
          ? _value.isSearching
          : isSearching // ignore: cast_nullable_to_non_nullable
              as bool,
      displayResults: displayResults == freezed
          ? _value.displayResults
          : displayResults // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingProfile: isLoadingProfile == freezed
          ? _value.isLoadingProfile
          : isLoadingProfile // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadedProfile: isLoadedProfile == freezed
          ? _value.isLoadedProfile
          : isLoadedProfile // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedProfile: selectedProfile == freezed
          ? _value.selectedProfile
          : selectedProfile // ignore: cast_nullable_to_non_nullable
              as Either<DataFailure, Profile>,
      ownId: ownId == freezed
          ? _value.ownId
          : ownId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SearchProfileState implements _SearchProfileState {
  const _$_SearchProfileState(
      {required this.searchProfileResults,
      required this.isSearching,
      required this.displayResults,
      required this.isLoadingProfile,
      required this.isLoadedProfile,
      required this.selectedProfile,
      required this.ownId});

  @override
  final Either<DataFailure, List<Profile>> searchProfileResults;
  @override
  final bool isSearching;
  @override
  final bool displayResults;
  @override
  final bool isLoadingProfile;
  @override
  final bool isLoadedProfile;
  @override
  final Either<DataFailure, Profile> selectedProfile;
  @override
  final String ownId;

  @override
  String toString() {
    return 'SearchProfileState(searchProfileResults: $searchProfileResults, isSearching: $isSearching, displayResults: $displayResults, isLoadingProfile: $isLoadingProfile, isLoadedProfile: $isLoadedProfile, selectedProfile: $selectedProfile, ownId: $ownId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchProfileState &&
            (identical(other.searchProfileResults, searchProfileResults) ||
                const DeepCollectionEquality().equals(
                    other.searchProfileResults, searchProfileResults)) &&
            (identical(other.isSearching, isSearching) ||
                const DeepCollectionEquality()
                    .equals(other.isSearching, isSearching)) &&
            (identical(other.displayResults, displayResults) ||
                const DeepCollectionEquality()
                    .equals(other.displayResults, displayResults)) &&
            (identical(other.isLoadingProfile, isLoadingProfile) ||
                const DeepCollectionEquality()
                    .equals(other.isLoadingProfile, isLoadingProfile)) &&
            (identical(other.isLoadedProfile, isLoadedProfile) ||
                const DeepCollectionEquality()
                    .equals(other.isLoadedProfile, isLoadedProfile)) &&
            (identical(other.selectedProfile, selectedProfile) ||
                const DeepCollectionEquality()
                    .equals(other.selectedProfile, selectedProfile)) &&
            (identical(other.ownId, ownId) ||
                const DeepCollectionEquality().equals(other.ownId, ownId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(searchProfileResults) ^
      const DeepCollectionEquality().hash(isSearching) ^
      const DeepCollectionEquality().hash(displayResults) ^
      const DeepCollectionEquality().hash(isLoadingProfile) ^
      const DeepCollectionEquality().hash(isLoadedProfile) ^
      const DeepCollectionEquality().hash(selectedProfile) ^
      const DeepCollectionEquality().hash(ownId);

  @JsonKey(ignore: true)
  @override
  _$SearchProfileStateCopyWith<_SearchProfileState> get copyWith =>
      __$SearchProfileStateCopyWithImpl<_SearchProfileState>(this, _$identity);
}

abstract class _SearchProfileState implements SearchProfileState {
  const factory _SearchProfileState(
      {required Either<DataFailure, List<Profile>> searchProfileResults,
      required bool isSearching,
      required bool displayResults,
      required bool isLoadingProfile,
      required bool isLoadedProfile,
      required Either<DataFailure, Profile> selectedProfile,
      required String ownId}) = _$_SearchProfileState;

  @override
  Either<DataFailure, List<Profile>> get searchProfileResults =>
      throw _privateConstructorUsedError;
  @override
  bool get isSearching => throw _privateConstructorUsedError;
  @override
  bool get displayResults => throw _privateConstructorUsedError;
  @override
  bool get isLoadingProfile => throw _privateConstructorUsedError;
  @override
  bool get isLoadedProfile => throw _privateConstructorUsedError;
  @override
  Either<DataFailure, Profile> get selectedProfile =>
      throw _privateConstructorUsedError;
  @override
  String get ownId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SearchProfileStateCopyWith<_SearchProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

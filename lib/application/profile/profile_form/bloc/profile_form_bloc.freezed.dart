// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'profile_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ProfileFormEventTearOff {
  const _$ProfileFormEventTearOff();

  _PhotoChanged photoChanged(File photo) {
    return _PhotoChanged(
      photo,
    );
  }

  _UsernameChanged usernameChanged(String username) {
    return _UsernameChanged(
      username,
    );
  }

  _CourseChanged courseChanged(String course) {
    return _CourseChanged(
      course,
    );
  }

  _BioChanged bioChanged(String bio) {
    return _BioChanged(
      bio,
    );
  }

  _ModuleChanged moduleChanged(String module) {
    return _ModuleChanged(
      module,
    );
  }

  _Saved saved() {
    return const _Saved();
  }
}

/// @nodoc
const $ProfileFormEvent = _$ProfileFormEventTearOff();

/// @nodoc
mixin _$ProfileFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(File photo) photoChanged,
    required TResult Function(String username) usernameChanged,
    required TResult Function(String course) courseChanged,
    required TResult Function(String bio) bioChanged,
    required TResult Function(String module) moduleChanged,
    required TResult Function() saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(File photo)? photoChanged,
    TResult Function(String username)? usernameChanged,
    TResult Function(String course)? courseChanged,
    TResult Function(String bio)? bioChanged,
    TResult Function(String module)? moduleChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PhotoChanged value) photoChanged,
    required TResult Function(_UsernameChanged value) usernameChanged,
    required TResult Function(_CourseChanged value) courseChanged,
    required TResult Function(_BioChanged value) bioChanged,
    required TResult Function(_ModuleChanged value) moduleChanged,
    required TResult Function(_Saved value) saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PhotoChanged value)? photoChanged,
    TResult Function(_UsernameChanged value)? usernameChanged,
    TResult Function(_CourseChanged value)? courseChanged,
    TResult Function(_BioChanged value)? bioChanged,
    TResult Function(_ModuleChanged value)? moduleChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileFormEventCopyWith<$Res> {
  factory $ProfileFormEventCopyWith(
          ProfileFormEvent value, $Res Function(ProfileFormEvent) then) =
      _$ProfileFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProfileFormEventCopyWithImpl<$Res>
    implements $ProfileFormEventCopyWith<$Res> {
  _$ProfileFormEventCopyWithImpl(this._value, this._then);

  final ProfileFormEvent _value;
  // ignore: unused_field
  final $Res Function(ProfileFormEvent) _then;
}

/// @nodoc
abstract class _$PhotoChangedCopyWith<$Res> {
  factory _$PhotoChangedCopyWith(
          _PhotoChanged value, $Res Function(_PhotoChanged) then) =
      __$PhotoChangedCopyWithImpl<$Res>;
  $Res call({File photo});
}

/// @nodoc
class __$PhotoChangedCopyWithImpl<$Res>
    extends _$ProfileFormEventCopyWithImpl<$Res>
    implements _$PhotoChangedCopyWith<$Res> {
  __$PhotoChangedCopyWithImpl(
      _PhotoChanged _value, $Res Function(_PhotoChanged) _then)
      : super(_value, (v) => _then(v as _PhotoChanged));

  @override
  _PhotoChanged get _value => super._value as _PhotoChanged;

  @override
  $Res call({
    Object? photo = freezed,
  }) {
    return _then(_PhotoChanged(
      photo == freezed
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as File,
    ));
  }
}

/// @nodoc

class _$_PhotoChanged implements _PhotoChanged {
  const _$_PhotoChanged(this.photo);

  @override
  final File photo;

  @override
  String toString() {
    return 'ProfileFormEvent.photoChanged(photo: $photo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PhotoChanged &&
            (identical(other.photo, photo) ||
                const DeepCollectionEquality().equals(other.photo, photo)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(photo);

  @JsonKey(ignore: true)
  @override
  _$PhotoChangedCopyWith<_PhotoChanged> get copyWith =>
      __$PhotoChangedCopyWithImpl<_PhotoChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(File photo) photoChanged,
    required TResult Function(String username) usernameChanged,
    required TResult Function(String course) courseChanged,
    required TResult Function(String bio) bioChanged,
    required TResult Function(String module) moduleChanged,
    required TResult Function() saved,
  }) {
    return photoChanged(photo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(File photo)? photoChanged,
    TResult Function(String username)? usernameChanged,
    TResult Function(String course)? courseChanged,
    TResult Function(String bio)? bioChanged,
    TResult Function(String module)? moduleChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (photoChanged != null) {
      return photoChanged(photo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PhotoChanged value) photoChanged,
    required TResult Function(_UsernameChanged value) usernameChanged,
    required TResult Function(_CourseChanged value) courseChanged,
    required TResult Function(_BioChanged value) bioChanged,
    required TResult Function(_ModuleChanged value) moduleChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return photoChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PhotoChanged value)? photoChanged,
    TResult Function(_UsernameChanged value)? usernameChanged,
    TResult Function(_CourseChanged value)? courseChanged,
    TResult Function(_BioChanged value)? bioChanged,
    TResult Function(_ModuleChanged value)? moduleChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (photoChanged != null) {
      return photoChanged(this);
    }
    return orElse();
  }
}

abstract class _PhotoChanged implements ProfileFormEvent {
  const factory _PhotoChanged(File photo) = _$_PhotoChanged;

  File get photo => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$PhotoChangedCopyWith<_PhotoChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UsernameChangedCopyWith<$Res> {
  factory _$UsernameChangedCopyWith(
          _UsernameChanged value, $Res Function(_UsernameChanged) then) =
      __$UsernameChangedCopyWithImpl<$Res>;
  $Res call({String username});
}

/// @nodoc
class __$UsernameChangedCopyWithImpl<$Res>
    extends _$ProfileFormEventCopyWithImpl<$Res>
    implements _$UsernameChangedCopyWith<$Res> {
  __$UsernameChangedCopyWithImpl(
      _UsernameChanged _value, $Res Function(_UsernameChanged) _then)
      : super(_value, (v) => _then(v as _UsernameChanged));

  @override
  _UsernameChanged get _value => super._value as _UsernameChanged;

  @override
  $Res call({
    Object? username = freezed,
  }) {
    return _then(_UsernameChanged(
      username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UsernameChanged implements _UsernameChanged {
  const _$_UsernameChanged(this.username);

  @override
  final String username;

  @override
  String toString() {
    return 'ProfileFormEvent.usernameChanged(username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UsernameChanged &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(username);

  @JsonKey(ignore: true)
  @override
  _$UsernameChangedCopyWith<_UsernameChanged> get copyWith =>
      __$UsernameChangedCopyWithImpl<_UsernameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(File photo) photoChanged,
    required TResult Function(String username) usernameChanged,
    required TResult Function(String course) courseChanged,
    required TResult Function(String bio) bioChanged,
    required TResult Function(String module) moduleChanged,
    required TResult Function() saved,
  }) {
    return usernameChanged(username);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(File photo)? photoChanged,
    TResult Function(String username)? usernameChanged,
    TResult Function(String course)? courseChanged,
    TResult Function(String bio)? bioChanged,
    TResult Function(String module)? moduleChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (usernameChanged != null) {
      return usernameChanged(username);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PhotoChanged value) photoChanged,
    required TResult Function(_UsernameChanged value) usernameChanged,
    required TResult Function(_CourseChanged value) courseChanged,
    required TResult Function(_BioChanged value) bioChanged,
    required TResult Function(_ModuleChanged value) moduleChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return usernameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PhotoChanged value)? photoChanged,
    TResult Function(_UsernameChanged value)? usernameChanged,
    TResult Function(_CourseChanged value)? courseChanged,
    TResult Function(_BioChanged value)? bioChanged,
    TResult Function(_ModuleChanged value)? moduleChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (usernameChanged != null) {
      return usernameChanged(this);
    }
    return orElse();
  }
}

abstract class _UsernameChanged implements ProfileFormEvent {
  const factory _UsernameChanged(String username) = _$_UsernameChanged;

  String get username => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$UsernameChangedCopyWith<_UsernameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CourseChangedCopyWith<$Res> {
  factory _$CourseChangedCopyWith(
          _CourseChanged value, $Res Function(_CourseChanged) then) =
      __$CourseChangedCopyWithImpl<$Res>;
  $Res call({String course});
}

/// @nodoc
class __$CourseChangedCopyWithImpl<$Res>
    extends _$ProfileFormEventCopyWithImpl<$Res>
    implements _$CourseChangedCopyWith<$Res> {
  __$CourseChangedCopyWithImpl(
      _CourseChanged _value, $Res Function(_CourseChanged) _then)
      : super(_value, (v) => _then(v as _CourseChanged));

  @override
  _CourseChanged get _value => super._value as _CourseChanged;

  @override
  $Res call({
    Object? course = freezed,
  }) {
    return _then(_CourseChanged(
      course == freezed
          ? _value.course
          : course // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CourseChanged implements _CourseChanged {
  const _$_CourseChanged(this.course);

  @override
  final String course;

  @override
  String toString() {
    return 'ProfileFormEvent.courseChanged(course: $course)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CourseChanged &&
            (identical(other.course, course) ||
                const DeepCollectionEquality().equals(other.course, course)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(course);

  @JsonKey(ignore: true)
  @override
  _$CourseChangedCopyWith<_CourseChanged> get copyWith =>
      __$CourseChangedCopyWithImpl<_CourseChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(File photo) photoChanged,
    required TResult Function(String username) usernameChanged,
    required TResult Function(String course) courseChanged,
    required TResult Function(String bio) bioChanged,
    required TResult Function(String module) moduleChanged,
    required TResult Function() saved,
  }) {
    return courseChanged(course);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(File photo)? photoChanged,
    TResult Function(String username)? usernameChanged,
    TResult Function(String course)? courseChanged,
    TResult Function(String bio)? bioChanged,
    TResult Function(String module)? moduleChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (courseChanged != null) {
      return courseChanged(course);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PhotoChanged value) photoChanged,
    required TResult Function(_UsernameChanged value) usernameChanged,
    required TResult Function(_CourseChanged value) courseChanged,
    required TResult Function(_BioChanged value) bioChanged,
    required TResult Function(_ModuleChanged value) moduleChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return courseChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PhotoChanged value)? photoChanged,
    TResult Function(_UsernameChanged value)? usernameChanged,
    TResult Function(_CourseChanged value)? courseChanged,
    TResult Function(_BioChanged value)? bioChanged,
    TResult Function(_ModuleChanged value)? moduleChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (courseChanged != null) {
      return courseChanged(this);
    }
    return orElse();
  }
}

abstract class _CourseChanged implements ProfileFormEvent {
  const factory _CourseChanged(String course) = _$_CourseChanged;

  String get course => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$CourseChangedCopyWith<_CourseChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$BioChangedCopyWith<$Res> {
  factory _$BioChangedCopyWith(
          _BioChanged value, $Res Function(_BioChanged) then) =
      __$BioChangedCopyWithImpl<$Res>;
  $Res call({String bio});
}

/// @nodoc
class __$BioChangedCopyWithImpl<$Res>
    extends _$ProfileFormEventCopyWithImpl<$Res>
    implements _$BioChangedCopyWith<$Res> {
  __$BioChangedCopyWithImpl(
      _BioChanged _value, $Res Function(_BioChanged) _then)
      : super(_value, (v) => _then(v as _BioChanged));

  @override
  _BioChanged get _value => super._value as _BioChanged;

  @override
  $Res call({
    Object? bio = freezed,
  }) {
    return _then(_BioChanged(
      bio == freezed
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_BioChanged implements _BioChanged {
  const _$_BioChanged(this.bio);

  @override
  final String bio;

  @override
  String toString() {
    return 'ProfileFormEvent.bioChanged(bio: $bio)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BioChanged &&
            (identical(other.bio, bio) ||
                const DeepCollectionEquality().equals(other.bio, bio)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(bio);

  @JsonKey(ignore: true)
  @override
  _$BioChangedCopyWith<_BioChanged> get copyWith =>
      __$BioChangedCopyWithImpl<_BioChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(File photo) photoChanged,
    required TResult Function(String username) usernameChanged,
    required TResult Function(String course) courseChanged,
    required TResult Function(String bio) bioChanged,
    required TResult Function(String module) moduleChanged,
    required TResult Function() saved,
  }) {
    return bioChanged(bio);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(File photo)? photoChanged,
    TResult Function(String username)? usernameChanged,
    TResult Function(String course)? courseChanged,
    TResult Function(String bio)? bioChanged,
    TResult Function(String module)? moduleChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (bioChanged != null) {
      return bioChanged(bio);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PhotoChanged value) photoChanged,
    required TResult Function(_UsernameChanged value) usernameChanged,
    required TResult Function(_CourseChanged value) courseChanged,
    required TResult Function(_BioChanged value) bioChanged,
    required TResult Function(_ModuleChanged value) moduleChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return bioChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PhotoChanged value)? photoChanged,
    TResult Function(_UsernameChanged value)? usernameChanged,
    TResult Function(_CourseChanged value)? courseChanged,
    TResult Function(_BioChanged value)? bioChanged,
    TResult Function(_ModuleChanged value)? moduleChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (bioChanged != null) {
      return bioChanged(this);
    }
    return orElse();
  }
}

abstract class _BioChanged implements ProfileFormEvent {
  const factory _BioChanged(String bio) = _$_BioChanged;

  String get bio => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$BioChangedCopyWith<_BioChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ModuleChangedCopyWith<$Res> {
  factory _$ModuleChangedCopyWith(
          _ModuleChanged value, $Res Function(_ModuleChanged) then) =
      __$ModuleChangedCopyWithImpl<$Res>;
  $Res call({String module});
}

/// @nodoc
class __$ModuleChangedCopyWithImpl<$Res>
    extends _$ProfileFormEventCopyWithImpl<$Res>
    implements _$ModuleChangedCopyWith<$Res> {
  __$ModuleChangedCopyWithImpl(
      _ModuleChanged _value, $Res Function(_ModuleChanged) _then)
      : super(_value, (v) => _then(v as _ModuleChanged));

  @override
  _ModuleChanged get _value => super._value as _ModuleChanged;

  @override
  $Res call({
    Object? module = freezed,
  }) {
    return _then(_ModuleChanged(
      module == freezed
          ? _value.module
          : module // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ModuleChanged implements _ModuleChanged {
  const _$_ModuleChanged(this.module);

  @override
  final String module;

  @override
  String toString() {
    return 'ProfileFormEvent.moduleChanged(module: $module)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ModuleChanged &&
            (identical(other.module, module) ||
                const DeepCollectionEquality().equals(other.module, module)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(module);

  @JsonKey(ignore: true)
  @override
  _$ModuleChangedCopyWith<_ModuleChanged> get copyWith =>
      __$ModuleChangedCopyWithImpl<_ModuleChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(File photo) photoChanged,
    required TResult Function(String username) usernameChanged,
    required TResult Function(String course) courseChanged,
    required TResult Function(String bio) bioChanged,
    required TResult Function(String module) moduleChanged,
    required TResult Function() saved,
  }) {
    return moduleChanged(module);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(File photo)? photoChanged,
    TResult Function(String username)? usernameChanged,
    TResult Function(String course)? courseChanged,
    TResult Function(String bio)? bioChanged,
    TResult Function(String module)? moduleChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (moduleChanged != null) {
      return moduleChanged(module);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PhotoChanged value) photoChanged,
    required TResult Function(_UsernameChanged value) usernameChanged,
    required TResult Function(_CourseChanged value) courseChanged,
    required TResult Function(_BioChanged value) bioChanged,
    required TResult Function(_ModuleChanged value) moduleChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return moduleChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PhotoChanged value)? photoChanged,
    TResult Function(_UsernameChanged value)? usernameChanged,
    TResult Function(_CourseChanged value)? courseChanged,
    TResult Function(_BioChanged value)? bioChanged,
    TResult Function(_ModuleChanged value)? moduleChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (moduleChanged != null) {
      return moduleChanged(this);
    }
    return orElse();
  }
}

abstract class _ModuleChanged implements ProfileFormEvent {
  const factory _ModuleChanged(String module) = _$_ModuleChanged;

  String get module => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ModuleChangedCopyWith<_ModuleChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SavedCopyWith<$Res> {
  factory _$SavedCopyWith(_Saved value, $Res Function(_Saved) then) =
      __$SavedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SavedCopyWithImpl<$Res> extends _$ProfileFormEventCopyWithImpl<$Res>
    implements _$SavedCopyWith<$Res> {
  __$SavedCopyWithImpl(_Saved _value, $Res Function(_Saved) _then)
      : super(_value, (v) => _then(v as _Saved));

  @override
  _Saved get _value => super._value as _Saved;
}

/// @nodoc

class _$_Saved implements _Saved {
  const _$_Saved();

  @override
  String toString() {
    return 'ProfileFormEvent.saved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Saved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(File photo) photoChanged,
    required TResult Function(String username) usernameChanged,
    required TResult Function(String course) courseChanged,
    required TResult Function(String bio) bioChanged,
    required TResult Function(String module) moduleChanged,
    required TResult Function() saved,
  }) {
    return saved();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(File photo)? photoChanged,
    TResult Function(String username)? usernameChanged,
    TResult Function(String course)? courseChanged,
    TResult Function(String bio)? bioChanged,
    TResult Function(String module)? moduleChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PhotoChanged value) photoChanged,
    required TResult Function(_UsernameChanged value) usernameChanged,
    required TResult Function(_CourseChanged value) courseChanged,
    required TResult Function(_BioChanged value) bioChanged,
    required TResult Function(_ModuleChanged value) moduleChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PhotoChanged value)? photoChanged,
    TResult Function(_UsernameChanged value)? usernameChanged,
    TResult Function(_CourseChanged value)? courseChanged,
    TResult Function(_BioChanged value)? bioChanged,
    TResult Function(_ModuleChanged value)? moduleChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _Saved implements ProfileFormEvent {
  const factory _Saved() = _$_Saved;
}

/// @nodoc
class _$ProfileFormStateTearOff {
  const _$ProfileFormStateTearOff();

  _ProfileFormState call(
      {required Either<DataFailure, String> photoUrl,
      required String username,
      required String course,
      required String bio,
      required String module,
      required bool isSaving,
      required Option<Either<DataFailure, Unit>> saveFailureOrSuccessOption}) {
    return _ProfileFormState(
      photoUrl: photoUrl,
      username: username,
      course: course,
      bio: bio,
      module: module,
      isSaving: isSaving,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption,
    );
  }
}

/// @nodoc
const $ProfileFormState = _$ProfileFormStateTearOff();

/// @nodoc
mixin _$ProfileFormState {
  Either<DataFailure, String> get photoUrl =>
      throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get course => throw _privateConstructorUsedError;
  String get bio => throw _privateConstructorUsedError;
  String get module => throw _privateConstructorUsedError;
  bool get isSaving => throw _privateConstructorUsedError;
  Option<Either<DataFailure, Unit>> get saveFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileFormStateCopyWith<ProfileFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileFormStateCopyWith<$Res> {
  factory $ProfileFormStateCopyWith(
          ProfileFormState value, $Res Function(ProfileFormState) then) =
      _$ProfileFormStateCopyWithImpl<$Res>;
  $Res call(
      {Either<DataFailure, String> photoUrl,
      String username,
      String course,
      String bio,
      String module,
      bool isSaving,
      Option<Either<DataFailure, Unit>> saveFailureOrSuccessOption});
}

/// @nodoc
class _$ProfileFormStateCopyWithImpl<$Res>
    implements $ProfileFormStateCopyWith<$Res> {
  _$ProfileFormStateCopyWithImpl(this._value, this._then);

  final ProfileFormState _value;
  // ignore: unused_field
  final $Res Function(ProfileFormState) _then;

  @override
  $Res call({
    Object? photoUrl = freezed,
    Object? username = freezed,
    Object? course = freezed,
    Object? bio = freezed,
    Object? module = freezed,
    Object? isSaving = freezed,
    Object? saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      photoUrl: photoUrl == freezed
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as Either<DataFailure, String>,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      course: course == freezed
          ? _value.course
          : course // ignore: cast_nullable_to_non_nullable
              as String,
      bio: bio == freezed
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String,
      module: module == freezed
          ? _value.module
          : module // ignore: cast_nullable_to_non_nullable
              as String,
      isSaving: isSaving == freezed
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<DataFailure, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$ProfileFormStateCopyWith<$Res>
    implements $ProfileFormStateCopyWith<$Res> {
  factory _$ProfileFormStateCopyWith(
          _ProfileFormState value, $Res Function(_ProfileFormState) then) =
      __$ProfileFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Either<DataFailure, String> photoUrl,
      String username,
      String course,
      String bio,
      String module,
      bool isSaving,
      Option<Either<DataFailure, Unit>> saveFailureOrSuccessOption});
}

/// @nodoc
class __$ProfileFormStateCopyWithImpl<$Res>
    extends _$ProfileFormStateCopyWithImpl<$Res>
    implements _$ProfileFormStateCopyWith<$Res> {
  __$ProfileFormStateCopyWithImpl(
      _ProfileFormState _value, $Res Function(_ProfileFormState) _then)
      : super(_value, (v) => _then(v as _ProfileFormState));

  @override
  _ProfileFormState get _value => super._value as _ProfileFormState;

  @override
  $Res call({
    Object? photoUrl = freezed,
    Object? username = freezed,
    Object? course = freezed,
    Object? bio = freezed,
    Object? module = freezed,
    Object? isSaving = freezed,
    Object? saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_ProfileFormState(
      photoUrl: photoUrl == freezed
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as Either<DataFailure, String>,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      course: course == freezed
          ? _value.course
          : course // ignore: cast_nullable_to_non_nullable
              as String,
      bio: bio == freezed
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String,
      module: module == freezed
          ? _value.module
          : module // ignore: cast_nullable_to_non_nullable
              as String,
      isSaving: isSaving == freezed
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<DataFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_ProfileFormState implements _ProfileFormState {
  const _$_ProfileFormState(
      {required this.photoUrl,
      required this.username,
      required this.course,
      required this.bio,
      required this.module,
      required this.isSaving,
      required this.saveFailureOrSuccessOption});

  @override
  final Either<DataFailure, String> photoUrl;
  @override
  final String username;
  @override
  final String course;
  @override
  final String bio;
  @override
  final String module;
  @override
  final bool isSaving;
  @override
  final Option<Either<DataFailure, Unit>> saveFailureOrSuccessOption;

  @override
  String toString() {
    return 'ProfileFormState(photoUrl: $photoUrl, username: $username, course: $course, bio: $bio, module: $module, isSaving: $isSaving, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProfileFormState &&
            (identical(other.photoUrl, photoUrl) ||
                const DeepCollectionEquality()
                    .equals(other.photoUrl, photoUrl)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.course, course) ||
                const DeepCollectionEquality().equals(other.course, course)) &&
            (identical(other.bio, bio) ||
                const DeepCollectionEquality().equals(other.bio, bio)) &&
            (identical(other.module, module) ||
                const DeepCollectionEquality().equals(other.module, module)) &&
            (identical(other.isSaving, isSaving) ||
                const DeepCollectionEquality()
                    .equals(other.isSaving, isSaving)) &&
            (identical(other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(photoUrl) ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(course) ^
      const DeepCollectionEquality().hash(bio) ^
      const DeepCollectionEquality().hash(module) ^
      const DeepCollectionEquality().hash(isSaving) ^
      const DeepCollectionEquality().hash(saveFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$ProfileFormStateCopyWith<_ProfileFormState> get copyWith =>
      __$ProfileFormStateCopyWithImpl<_ProfileFormState>(this, _$identity);
}

abstract class _ProfileFormState implements ProfileFormState {
  const factory _ProfileFormState(
      {required Either<DataFailure, String> photoUrl,
      required String username,
      required String course,
      required String bio,
      required String module,
      required bool isSaving,
      required Option<Either<DataFailure, Unit>>
          saveFailureOrSuccessOption}) = _$_ProfileFormState;

  @override
  Either<DataFailure, String> get photoUrl =>
      throw _privateConstructorUsedError;
  @override
  String get username => throw _privateConstructorUsedError;
  @override
  String get course => throw _privateConstructorUsedError;
  @override
  String get bio => throw _privateConstructorUsedError;
  @override
  String get module => throw _privateConstructorUsedError;
  @override
  bool get isSaving => throw _privateConstructorUsedError;
  @override
  Option<Either<DataFailure, Unit>> get saveFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ProfileFormStateCopyWith<_ProfileFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

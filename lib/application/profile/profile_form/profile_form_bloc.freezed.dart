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

  _UsernameChanged usernameChanged(String usernameStr) {
    return _UsernameChanged(
      usernameStr,
    );
  }

  _CourseChanged courseChanged(String courseStr) {
    return _CourseChanged(
      courseStr,
    );
  }

  _BioChanged bioChanged(String bioStr) {
    return _BioChanged(
      bioStr,
    );
  }

  _ModuleChanged moduleChanged(String moduleStr) {
    return _ModuleChanged(
      moduleStr,
    );
  }

  _Saved saved() {
    return const _Saved();
  }

  _GetProfile getProfile() {
    return const _GetProfile();
  }
}

/// @nodoc
const $ProfileFormEvent = _$ProfileFormEventTearOff();

/// @nodoc
mixin _$ProfileFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(File photo) photoChanged,
    required TResult Function(String usernameStr) usernameChanged,
    required TResult Function(String courseStr) courseChanged,
    required TResult Function(String bioStr) bioChanged,
    required TResult Function(String moduleStr) moduleChanged,
    required TResult Function() saved,
    required TResult Function() getProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(File photo)? photoChanged,
    TResult Function(String usernameStr)? usernameChanged,
    TResult Function(String courseStr)? courseChanged,
    TResult Function(String bioStr)? bioChanged,
    TResult Function(String moduleStr)? moduleChanged,
    TResult Function()? saved,
    TResult Function()? getProfile,
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
    required TResult Function(_GetProfile value) getProfile,
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
    TResult Function(_GetProfile value)? getProfile,
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
    required TResult Function(String usernameStr) usernameChanged,
    required TResult Function(String courseStr) courseChanged,
    required TResult Function(String bioStr) bioChanged,
    required TResult Function(String moduleStr) moduleChanged,
    required TResult Function() saved,
    required TResult Function() getProfile,
  }) {
    return photoChanged(photo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(File photo)? photoChanged,
    TResult Function(String usernameStr)? usernameChanged,
    TResult Function(String courseStr)? courseChanged,
    TResult Function(String bioStr)? bioChanged,
    TResult Function(String moduleStr)? moduleChanged,
    TResult Function()? saved,
    TResult Function()? getProfile,
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
    required TResult Function(_GetProfile value) getProfile,
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
    TResult Function(_GetProfile value)? getProfile,
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
  $Res call({String usernameStr});
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
    Object? usernameStr = freezed,
  }) {
    return _then(_UsernameChanged(
      usernameStr == freezed
          ? _value.usernameStr
          : usernameStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UsernameChanged implements _UsernameChanged {
  const _$_UsernameChanged(this.usernameStr);

  @override
  final String usernameStr;

  @override
  String toString() {
    return 'ProfileFormEvent.usernameChanged(usernameStr: $usernameStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UsernameChanged &&
            (identical(other.usernameStr, usernameStr) ||
                const DeepCollectionEquality()
                    .equals(other.usernameStr, usernameStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(usernameStr);

  @JsonKey(ignore: true)
  @override
  _$UsernameChangedCopyWith<_UsernameChanged> get copyWith =>
      __$UsernameChangedCopyWithImpl<_UsernameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(File photo) photoChanged,
    required TResult Function(String usernameStr) usernameChanged,
    required TResult Function(String courseStr) courseChanged,
    required TResult Function(String bioStr) bioChanged,
    required TResult Function(String moduleStr) moduleChanged,
    required TResult Function() saved,
    required TResult Function() getProfile,
  }) {
    return usernameChanged(usernameStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(File photo)? photoChanged,
    TResult Function(String usernameStr)? usernameChanged,
    TResult Function(String courseStr)? courseChanged,
    TResult Function(String bioStr)? bioChanged,
    TResult Function(String moduleStr)? moduleChanged,
    TResult Function()? saved,
    TResult Function()? getProfile,
    required TResult orElse(),
  }) {
    if (usernameChanged != null) {
      return usernameChanged(usernameStr);
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
    required TResult Function(_GetProfile value) getProfile,
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
    TResult Function(_GetProfile value)? getProfile,
    required TResult orElse(),
  }) {
    if (usernameChanged != null) {
      return usernameChanged(this);
    }
    return orElse();
  }
}

abstract class _UsernameChanged implements ProfileFormEvent {
  const factory _UsernameChanged(String usernameStr) = _$_UsernameChanged;

  String get usernameStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$UsernameChangedCopyWith<_UsernameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CourseChangedCopyWith<$Res> {
  factory _$CourseChangedCopyWith(
          _CourseChanged value, $Res Function(_CourseChanged) then) =
      __$CourseChangedCopyWithImpl<$Res>;
  $Res call({String courseStr});
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
    Object? courseStr = freezed,
  }) {
    return _then(_CourseChanged(
      courseStr == freezed
          ? _value.courseStr
          : courseStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CourseChanged implements _CourseChanged {
  const _$_CourseChanged(this.courseStr);

  @override
  final String courseStr;

  @override
  String toString() {
    return 'ProfileFormEvent.courseChanged(courseStr: $courseStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CourseChanged &&
            (identical(other.courseStr, courseStr) ||
                const DeepCollectionEquality()
                    .equals(other.courseStr, courseStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(courseStr);

  @JsonKey(ignore: true)
  @override
  _$CourseChangedCopyWith<_CourseChanged> get copyWith =>
      __$CourseChangedCopyWithImpl<_CourseChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(File photo) photoChanged,
    required TResult Function(String usernameStr) usernameChanged,
    required TResult Function(String courseStr) courseChanged,
    required TResult Function(String bioStr) bioChanged,
    required TResult Function(String moduleStr) moduleChanged,
    required TResult Function() saved,
    required TResult Function() getProfile,
  }) {
    return courseChanged(courseStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(File photo)? photoChanged,
    TResult Function(String usernameStr)? usernameChanged,
    TResult Function(String courseStr)? courseChanged,
    TResult Function(String bioStr)? bioChanged,
    TResult Function(String moduleStr)? moduleChanged,
    TResult Function()? saved,
    TResult Function()? getProfile,
    required TResult orElse(),
  }) {
    if (courseChanged != null) {
      return courseChanged(courseStr);
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
    required TResult Function(_GetProfile value) getProfile,
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
    TResult Function(_GetProfile value)? getProfile,
    required TResult orElse(),
  }) {
    if (courseChanged != null) {
      return courseChanged(this);
    }
    return orElse();
  }
}

abstract class _CourseChanged implements ProfileFormEvent {
  const factory _CourseChanged(String courseStr) = _$_CourseChanged;

  String get courseStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$CourseChangedCopyWith<_CourseChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$BioChangedCopyWith<$Res> {
  factory _$BioChangedCopyWith(
          _BioChanged value, $Res Function(_BioChanged) then) =
      __$BioChangedCopyWithImpl<$Res>;
  $Res call({String bioStr});
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
    Object? bioStr = freezed,
  }) {
    return _then(_BioChanged(
      bioStr == freezed
          ? _value.bioStr
          : bioStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_BioChanged implements _BioChanged {
  const _$_BioChanged(this.bioStr);

  @override
  final String bioStr;

  @override
  String toString() {
    return 'ProfileFormEvent.bioChanged(bioStr: $bioStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BioChanged &&
            (identical(other.bioStr, bioStr) ||
                const DeepCollectionEquality().equals(other.bioStr, bioStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(bioStr);

  @JsonKey(ignore: true)
  @override
  _$BioChangedCopyWith<_BioChanged> get copyWith =>
      __$BioChangedCopyWithImpl<_BioChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(File photo) photoChanged,
    required TResult Function(String usernameStr) usernameChanged,
    required TResult Function(String courseStr) courseChanged,
    required TResult Function(String bioStr) bioChanged,
    required TResult Function(String moduleStr) moduleChanged,
    required TResult Function() saved,
    required TResult Function() getProfile,
  }) {
    return bioChanged(bioStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(File photo)? photoChanged,
    TResult Function(String usernameStr)? usernameChanged,
    TResult Function(String courseStr)? courseChanged,
    TResult Function(String bioStr)? bioChanged,
    TResult Function(String moduleStr)? moduleChanged,
    TResult Function()? saved,
    TResult Function()? getProfile,
    required TResult orElse(),
  }) {
    if (bioChanged != null) {
      return bioChanged(bioStr);
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
    required TResult Function(_GetProfile value) getProfile,
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
    TResult Function(_GetProfile value)? getProfile,
    required TResult orElse(),
  }) {
    if (bioChanged != null) {
      return bioChanged(this);
    }
    return orElse();
  }
}

abstract class _BioChanged implements ProfileFormEvent {
  const factory _BioChanged(String bioStr) = _$_BioChanged;

  String get bioStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$BioChangedCopyWith<_BioChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ModuleChangedCopyWith<$Res> {
  factory _$ModuleChangedCopyWith(
          _ModuleChanged value, $Res Function(_ModuleChanged) then) =
      __$ModuleChangedCopyWithImpl<$Res>;
  $Res call({String moduleStr});
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
    Object? moduleStr = freezed,
  }) {
    return _then(_ModuleChanged(
      moduleStr == freezed
          ? _value.moduleStr
          : moduleStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ModuleChanged implements _ModuleChanged {
  const _$_ModuleChanged(this.moduleStr);

  @override
  final String moduleStr;

  @override
  String toString() {
    return 'ProfileFormEvent.moduleChanged(moduleStr: $moduleStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ModuleChanged &&
            (identical(other.moduleStr, moduleStr) ||
                const DeepCollectionEquality()
                    .equals(other.moduleStr, moduleStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(moduleStr);

  @JsonKey(ignore: true)
  @override
  _$ModuleChangedCopyWith<_ModuleChanged> get copyWith =>
      __$ModuleChangedCopyWithImpl<_ModuleChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(File photo) photoChanged,
    required TResult Function(String usernameStr) usernameChanged,
    required TResult Function(String courseStr) courseChanged,
    required TResult Function(String bioStr) bioChanged,
    required TResult Function(String moduleStr) moduleChanged,
    required TResult Function() saved,
    required TResult Function() getProfile,
  }) {
    return moduleChanged(moduleStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(File photo)? photoChanged,
    TResult Function(String usernameStr)? usernameChanged,
    TResult Function(String courseStr)? courseChanged,
    TResult Function(String bioStr)? bioChanged,
    TResult Function(String moduleStr)? moduleChanged,
    TResult Function()? saved,
    TResult Function()? getProfile,
    required TResult orElse(),
  }) {
    if (moduleChanged != null) {
      return moduleChanged(moduleStr);
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
    required TResult Function(_GetProfile value) getProfile,
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
    TResult Function(_GetProfile value)? getProfile,
    required TResult orElse(),
  }) {
    if (moduleChanged != null) {
      return moduleChanged(this);
    }
    return orElse();
  }
}

abstract class _ModuleChanged implements ProfileFormEvent {
  const factory _ModuleChanged(String moduleStr) = _$_ModuleChanged;

  String get moduleStr => throw _privateConstructorUsedError;
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
    required TResult Function(String usernameStr) usernameChanged,
    required TResult Function(String courseStr) courseChanged,
    required TResult Function(String bioStr) bioChanged,
    required TResult Function(String moduleStr) moduleChanged,
    required TResult Function() saved,
    required TResult Function() getProfile,
  }) {
    return saved();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(File photo)? photoChanged,
    TResult Function(String usernameStr)? usernameChanged,
    TResult Function(String courseStr)? courseChanged,
    TResult Function(String bioStr)? bioChanged,
    TResult Function(String moduleStr)? moduleChanged,
    TResult Function()? saved,
    TResult Function()? getProfile,
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
    required TResult Function(_GetProfile value) getProfile,
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
    TResult Function(_GetProfile value)? getProfile,
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
abstract class _$GetProfileCopyWith<$Res> {
  factory _$GetProfileCopyWith(
          _GetProfile value, $Res Function(_GetProfile) then) =
      __$GetProfileCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetProfileCopyWithImpl<$Res>
    extends _$ProfileFormEventCopyWithImpl<$Res>
    implements _$GetProfileCopyWith<$Res> {
  __$GetProfileCopyWithImpl(
      _GetProfile _value, $Res Function(_GetProfile) _then)
      : super(_value, (v) => _then(v as _GetProfile));

  @override
  _GetProfile get _value => super._value as _GetProfile;
}

/// @nodoc

class _$_GetProfile implements _GetProfile {
  const _$_GetProfile();

  @override
  String toString() {
    return 'ProfileFormEvent.getProfile()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GetProfile);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(File photo) photoChanged,
    required TResult Function(String usernameStr) usernameChanged,
    required TResult Function(String courseStr) courseChanged,
    required TResult Function(String bioStr) bioChanged,
    required TResult Function(String moduleStr) moduleChanged,
    required TResult Function() saved,
    required TResult Function() getProfile,
  }) {
    return getProfile();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(File photo)? photoChanged,
    TResult Function(String usernameStr)? usernameChanged,
    TResult Function(String courseStr)? courseChanged,
    TResult Function(String bioStr)? bioChanged,
    TResult Function(String moduleStr)? moduleChanged,
    TResult Function()? saved,
    TResult Function()? getProfile,
    required TResult orElse(),
  }) {
    if (getProfile != null) {
      return getProfile();
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
    required TResult Function(_GetProfile value) getProfile,
  }) {
    return getProfile(this);
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
    TResult Function(_GetProfile value)? getProfile,
    required TResult orElse(),
  }) {
    if (getProfile != null) {
      return getProfile(this);
    }
    return orElse();
  }
}

abstract class _GetProfile implements ProfileFormEvent {
  const factory _GetProfile() = _$_GetProfile;
}

/// @nodoc
class _$ProfileFormStateTearOff {
  const _$ProfileFormStateTearOff();

  _ProfileFormState call(
      {required Either<DataFailure, String> photoUrl,
      required Profile profile,
      required bool isSaving,
      required Option<Either<DataFailure, Unit>> saveFailureOrSuccessOption,
      required bool isLoading,
      required Either<DataFailure, Profile> currentProfile,
      required String currentUsername,
      required bool showErrorMessages}) {
    return _ProfileFormState(
      photoUrl: photoUrl,
      profile: profile,
      isSaving: isSaving,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption,
      isLoading: isLoading,
      currentProfile: currentProfile,
      currentUsername: currentUsername,
      showErrorMessages: showErrorMessages,
    );
  }
}

/// @nodoc
const $ProfileFormState = _$ProfileFormStateTearOff();

/// @nodoc
mixin _$ProfileFormState {
  Either<DataFailure, String> get photoUrl =>
      throw _privateConstructorUsedError;
  Profile get profile => throw _privateConstructorUsedError;
  bool get isSaving => throw _privateConstructorUsedError;
  Option<Either<DataFailure, Unit>> get saveFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  Either<DataFailure, Profile> get currentProfile =>
      throw _privateConstructorUsedError;
  String get currentUsername => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;

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
      Profile profile,
      bool isSaving,
      Option<Either<DataFailure, Unit>> saveFailureOrSuccessOption,
      bool isLoading,
      Either<DataFailure, Profile> currentProfile,
      String currentUsername,
      bool showErrorMessages});

  $ProfileCopyWith<$Res> get profile;
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
    Object? profile = freezed,
    Object? isSaving = freezed,
    Object? saveFailureOrSuccessOption = freezed,
    Object? isLoading = freezed,
    Object? currentProfile = freezed,
    Object? currentUsername = freezed,
    Object? showErrorMessages = freezed,
  }) {
    return _then(_value.copyWith(
      photoUrl: photoUrl == freezed
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as Either<DataFailure, String>,
      profile: profile == freezed
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as Profile,
      isSaving: isSaving == freezed
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<DataFailure, Unit>>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      currentProfile: currentProfile == freezed
          ? _value.currentProfile
          : currentProfile // ignore: cast_nullable_to_non_nullable
              as Either<DataFailure, Profile>,
      currentUsername: currentUsername == freezed
          ? _value.currentUsername
          : currentUsername // ignore: cast_nullable_to_non_nullable
              as String,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $ProfileCopyWith<$Res> get profile {
    return $ProfileCopyWith<$Res>(_value.profile, (value) {
      return _then(_value.copyWith(profile: value));
    });
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
      Profile profile,
      bool isSaving,
      Option<Either<DataFailure, Unit>> saveFailureOrSuccessOption,
      bool isLoading,
      Either<DataFailure, Profile> currentProfile,
      String currentUsername,
      bool showErrorMessages});

  @override
  $ProfileCopyWith<$Res> get profile;
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
    Object? profile = freezed,
    Object? isSaving = freezed,
    Object? saveFailureOrSuccessOption = freezed,
    Object? isLoading = freezed,
    Object? currentProfile = freezed,
    Object? currentUsername = freezed,
    Object? showErrorMessages = freezed,
  }) {
    return _then(_ProfileFormState(
      photoUrl: photoUrl == freezed
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as Either<DataFailure, String>,
      profile: profile == freezed
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as Profile,
      isSaving: isSaving == freezed
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<DataFailure, Unit>>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      currentProfile: currentProfile == freezed
          ? _value.currentProfile
          : currentProfile // ignore: cast_nullable_to_non_nullable
              as Either<DataFailure, Profile>,
      currentUsername: currentUsername == freezed
          ? _value.currentUsername
          : currentUsername // ignore: cast_nullable_to_non_nullable
              as String,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ProfileFormState implements _ProfileFormState {
  const _$_ProfileFormState(
      {required this.photoUrl,
      required this.profile,
      required this.isSaving,
      required this.saveFailureOrSuccessOption,
      required this.isLoading,
      required this.currentProfile,
      required this.currentUsername,
      required this.showErrorMessages});

  @override
  final Either<DataFailure, String> photoUrl;
  @override
  final Profile profile;
  @override
  final bool isSaving;
  @override
  final Option<Either<DataFailure, Unit>> saveFailureOrSuccessOption;
  @override
  final bool isLoading;
  @override
  final Either<DataFailure, Profile> currentProfile;
  @override
  final String currentUsername;
  @override
  final bool showErrorMessages;

  @override
  String toString() {
    return 'ProfileFormState(photoUrl: $photoUrl, profile: $profile, isSaving: $isSaving, saveFailureOrSuccessOption: $saveFailureOrSuccessOption, isLoading: $isLoading, currentProfile: $currentProfile, currentUsername: $currentUsername, showErrorMessages: $showErrorMessages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProfileFormState &&
            (identical(other.photoUrl, photoUrl) ||
                const DeepCollectionEquality()
                    .equals(other.photoUrl, photoUrl)) &&
            (identical(other.profile, profile) ||
                const DeepCollectionEquality()
                    .equals(other.profile, profile)) &&
            (identical(other.isSaving, isSaving) ||
                const DeepCollectionEquality()
                    .equals(other.isSaving, isSaving)) &&
            (identical(other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.currentProfile, currentProfile) ||
                const DeepCollectionEquality()
                    .equals(other.currentProfile, currentProfile)) &&
            (identical(other.currentUsername, currentUsername) ||
                const DeepCollectionEquality()
                    .equals(other.currentUsername, currentUsername)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(photoUrl) ^
      const DeepCollectionEquality().hash(profile) ^
      const DeepCollectionEquality().hash(isSaving) ^
      const DeepCollectionEquality().hash(saveFailureOrSuccessOption) ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(currentProfile) ^
      const DeepCollectionEquality().hash(currentUsername) ^
      const DeepCollectionEquality().hash(showErrorMessages);

  @JsonKey(ignore: true)
  @override
  _$ProfileFormStateCopyWith<_ProfileFormState> get copyWith =>
      __$ProfileFormStateCopyWithImpl<_ProfileFormState>(this, _$identity);
}

abstract class _ProfileFormState implements ProfileFormState {
  const factory _ProfileFormState(
      {required Either<DataFailure, String> photoUrl,
      required Profile profile,
      required bool isSaving,
      required Option<Either<DataFailure, Unit>> saveFailureOrSuccessOption,
      required bool isLoading,
      required Either<DataFailure, Profile> currentProfile,
      required String currentUsername,
      required bool showErrorMessages}) = _$_ProfileFormState;

  @override
  Either<DataFailure, String> get photoUrl =>
      throw _privateConstructorUsedError;
  @override
  Profile get profile => throw _privateConstructorUsedError;
  @override
  bool get isSaving => throw _privateConstructorUsedError;
  @override
  Option<Either<DataFailure, Unit>> get saveFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  Either<DataFailure, Profile> get currentProfile =>
      throw _privateConstructorUsedError;
  @override
  String get currentUsername => throw _privateConstructorUsedError;
  @override
  bool get showErrorMessages => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ProfileFormStateCopyWith<_ProfileFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

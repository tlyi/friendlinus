// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ProfileTearOff {
  const _$ProfileTearOff();

  _Profile call(
      {required String photoUrl,
      required Username username,
      required Course course,
      required Bio bio,
      required Mod module,
      required List<String> forumsPosted}) {
    return _Profile(
      photoUrl: photoUrl,
      username: username,
      course: course,
      bio: bio,
      module: module,
      forumsPosted: forumsPosted,
    );
  }
}

/// @nodoc
const $Profile = _$ProfileTearOff();

/// @nodoc
mixin _$Profile {
  String get photoUrl => throw _privateConstructorUsedError;
  Username get username => throw _privateConstructorUsedError;
  Course get course => throw _privateConstructorUsedError;
  Bio get bio => throw _privateConstructorUsedError;
  Mod get module => throw _privateConstructorUsedError;
  List<String> get forumsPosted => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileCopyWith<Profile> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileCopyWith<$Res> {
  factory $ProfileCopyWith(Profile value, $Res Function(Profile) then) =
      _$ProfileCopyWithImpl<$Res>;
  $Res call(
      {String photoUrl,
      Username username,
      Course course,
      Bio bio,
      Mod module,
      List<String> forumsPosted});
}

/// @nodoc
class _$ProfileCopyWithImpl<$Res> implements $ProfileCopyWith<$Res> {
  _$ProfileCopyWithImpl(this._value, this._then);

  final Profile _value;
  // ignore: unused_field
  final $Res Function(Profile) _then;

  @override
  $Res call({
    Object? photoUrl = freezed,
    Object? username = freezed,
    Object? course = freezed,
    Object? bio = freezed,
    Object? module = freezed,
    Object? forumsPosted = freezed,
  }) {
    return _then(_value.copyWith(
      photoUrl: photoUrl == freezed
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as Username,
      course: course == freezed
          ? _value.course
          : course // ignore: cast_nullable_to_non_nullable
              as Course,
      bio: bio == freezed
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as Bio,
      module: module == freezed
          ? _value.module
          : module // ignore: cast_nullable_to_non_nullable
              as Mod,
      forumsPosted: forumsPosted == freezed
          ? _value.forumsPosted
          : forumsPosted // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$ProfileCopyWith<$Res> implements $ProfileCopyWith<$Res> {
  factory _$ProfileCopyWith(_Profile value, $Res Function(_Profile) then) =
      __$ProfileCopyWithImpl<$Res>;
  @override
  $Res call(
      {String photoUrl,
      Username username,
      Course course,
      Bio bio,
      Mod module,
      List<String> forumsPosted});
}

/// @nodoc
class __$ProfileCopyWithImpl<$Res> extends _$ProfileCopyWithImpl<$Res>
    implements _$ProfileCopyWith<$Res> {
  __$ProfileCopyWithImpl(_Profile _value, $Res Function(_Profile) _then)
      : super(_value, (v) => _then(v as _Profile));

  @override
  _Profile get _value => super._value as _Profile;

  @override
  $Res call({
    Object? photoUrl = freezed,
    Object? username = freezed,
    Object? course = freezed,
    Object? bio = freezed,
    Object? module = freezed,
    Object? forumsPosted = freezed,
  }) {
    return _then(_Profile(
      photoUrl: photoUrl == freezed
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as Username,
      course: course == freezed
          ? _value.course
          : course // ignore: cast_nullable_to_non_nullable
              as Course,
      bio: bio == freezed
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as Bio,
      module: module == freezed
          ? _value.module
          : module // ignore: cast_nullable_to_non_nullable
              as Mod,
      forumsPosted: forumsPosted == freezed
          ? _value.forumsPosted
          : forumsPosted // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_Profile extends _Profile {
  const _$_Profile(
      {required this.photoUrl,
      required this.username,
      required this.course,
      required this.bio,
      required this.module,
      required this.forumsPosted})
      : super._();

  @override
  final String photoUrl;
  @override
  final Username username;
  @override
  final Course course;
  @override
  final Bio bio;
  @override
  final Mod module;
  @override
  final List<String> forumsPosted;

  @override
  String toString() {
    return 'Profile(photoUrl: $photoUrl, username: $username, course: $course, bio: $bio, module: $module, forumsPosted: $forumsPosted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Profile &&
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
            (identical(other.forumsPosted, forumsPosted) ||
                const DeepCollectionEquality()
                    .equals(other.forumsPosted, forumsPosted)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(photoUrl) ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(course) ^
      const DeepCollectionEquality().hash(bio) ^
      const DeepCollectionEquality().hash(module) ^
      const DeepCollectionEquality().hash(forumsPosted);

  @JsonKey(ignore: true)
  @override
  _$ProfileCopyWith<_Profile> get copyWith =>
      __$ProfileCopyWithImpl<_Profile>(this, _$identity);
}

abstract class _Profile extends Profile {
  const factory _Profile(
      {required String photoUrl,
      required Username username,
      required Course course,
      required Bio bio,
      required Mod module,
      required List<String> forumsPosted}) = _$_Profile;
  const _Profile._() : super._();

  @override
  String get photoUrl => throw _privateConstructorUsedError;
  @override
  Username get username => throw _privateConstructorUsedError;
  @override
  Course get course => throw _privateConstructorUsedError;
  @override
  Bio get bio => throw _privateConstructorUsedError;
  @override
  Mod get module => throw _privateConstructorUsedError;
  @override
  List<String> get forumsPosted => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ProfileCopyWith<_Profile> get copyWith =>
      throw _privateConstructorUsedError;
}

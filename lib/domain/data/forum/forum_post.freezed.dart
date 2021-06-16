// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'forum_post.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ForumPostTearOff {
  const _$ForumPostTearOff();

  _ForumPost call(
      {required Title title,
      required Tag tag,
      required Body body,
      required String photoUrl}) {
    return _ForumPost(
      title: title,
      tag: tag,
      body: body,
      photoUrl: photoUrl,
    );
  }
}

/// @nodoc
const $ForumPost = _$ForumPostTearOff();

/// @nodoc
mixin _$ForumPost {
  Title get title => throw _privateConstructorUsedError;
  Tag get tag => throw _privateConstructorUsedError;
  Body get body => throw _privateConstructorUsedError;
  String get photoUrl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ForumPostCopyWith<ForumPost> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForumPostCopyWith<$Res> {
  factory $ForumPostCopyWith(ForumPost value, $Res Function(ForumPost) then) =
      _$ForumPostCopyWithImpl<$Res>;
  $Res call({Title title, Tag tag, Body body, String photoUrl});
}

/// @nodoc
class _$ForumPostCopyWithImpl<$Res> implements $ForumPostCopyWith<$Res> {
  _$ForumPostCopyWithImpl(this._value, this._then);

  final ForumPost _value;
  // ignore: unused_field
  final $Res Function(ForumPost) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? tag = freezed,
    Object? body = freezed,
    Object? photoUrl = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as Title,
      tag: tag == freezed
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as Tag,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as Body,
      photoUrl: photoUrl == freezed
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ForumPostCopyWith<$Res> implements $ForumPostCopyWith<$Res> {
  factory _$ForumPostCopyWith(
          _ForumPost value, $Res Function(_ForumPost) then) =
      __$ForumPostCopyWithImpl<$Res>;
  @override
  $Res call({Title title, Tag tag, Body body, String photoUrl});
}

/// @nodoc
class __$ForumPostCopyWithImpl<$Res> extends _$ForumPostCopyWithImpl<$Res>
    implements _$ForumPostCopyWith<$Res> {
  __$ForumPostCopyWithImpl(_ForumPost _value, $Res Function(_ForumPost) _then)
      : super(_value, (v) => _then(v as _ForumPost));

  @override
  _ForumPost get _value => super._value as _ForumPost;

  @override
  $Res call({
    Object? title = freezed,
    Object? tag = freezed,
    Object? body = freezed,
    Object? photoUrl = freezed,
  }) {
    return _then(_ForumPost(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as Title,
      tag: tag == freezed
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as Tag,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as Body,
      photoUrl: photoUrl == freezed
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ForumPost extends _ForumPost {
  const _$_ForumPost(
      {required this.title,
      required this.tag,
      required this.body,
      required this.photoUrl})
      : super._();

  @override
  final Title title;
  @override
  final Tag tag;
  @override
  final Body body;
  @override
  final String photoUrl;

  @override
  String toString() {
    return 'ForumPost(title: $title, tag: $tag, body: $body, photoUrl: $photoUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ForumPost &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.tag, tag) ||
                const DeepCollectionEquality().equals(other.tag, tag)) &&
            (identical(other.body, body) ||
                const DeepCollectionEquality().equals(other.body, body)) &&
            (identical(other.photoUrl, photoUrl) ||
                const DeepCollectionEquality()
                    .equals(other.photoUrl, photoUrl)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(tag) ^
      const DeepCollectionEquality().hash(body) ^
      const DeepCollectionEquality().hash(photoUrl);

  @JsonKey(ignore: true)
  @override
  _$ForumPostCopyWith<_ForumPost> get copyWith =>
      __$ForumPostCopyWithImpl<_ForumPost>(this, _$identity);
}

abstract class _ForumPost extends ForumPost {
  const factory _ForumPost(
      {required Title title,
      required Tag tag,
      required Body body,
      required String photoUrl}) = _$_ForumPost;
  const _ForumPost._() : super._();

  @override
  Title get title => throw _privateConstructorUsedError;
  @override
  Tag get tag => throw _privateConstructorUsedError;
  @override
  Body get body => throw _privateConstructorUsedError;
  @override
  String get photoUrl => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ForumPostCopyWith<_ForumPost> get copyWith =>
      throw _privateConstructorUsedError;
}

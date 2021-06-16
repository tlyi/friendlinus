// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'forum_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ForumFormEventTearOff {
  const _$ForumFormEventTearOff();

  _TitleChanged titleChanged(String titleStr) {
    return _TitleChanged(
      titleStr,
    );
  }

  _TagChanged tagChanged(String tagStr) {
    return _TagChanged(
      tagStr,
    );
  }

  _BodyChanged bodyChanged(String bodyStr) {
    return _BodyChanged(
      bodyStr,
    );
  }

  _PhotoAdded photoAdded(File photo) {
    return _PhotoAdded(
      photo,
    );
  }

  _CreatedPost createdPost() {
    return const _CreatedPost();
  }
}

/// @nodoc
const $ForumFormEvent = _$ForumFormEventTearOff();

/// @nodoc
mixin _$ForumFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String titleStr) titleChanged,
    required TResult Function(String tagStr) tagChanged,
    required TResult Function(String bodyStr) bodyChanged,
    required TResult Function(File photo) photoAdded,
    required TResult Function() createdPost,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String titleStr)? titleChanged,
    TResult Function(String tagStr)? tagChanged,
    TResult Function(String bodyStr)? bodyChanged,
    TResult Function(File photo)? photoAdded,
    TResult Function()? createdPost,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_TagChanged value) tagChanged,
    required TResult Function(_BodyChanged value) bodyChanged,
    required TResult Function(_PhotoAdded value) photoAdded,
    required TResult Function(_CreatedPost value) createdPost,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_TagChanged value)? tagChanged,
    TResult Function(_BodyChanged value)? bodyChanged,
    TResult Function(_PhotoAdded value)? photoAdded,
    TResult Function(_CreatedPost value)? createdPost,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForumFormEventCopyWith<$Res> {
  factory $ForumFormEventCopyWith(
          ForumFormEvent value, $Res Function(ForumFormEvent) then) =
      _$ForumFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ForumFormEventCopyWithImpl<$Res>
    implements $ForumFormEventCopyWith<$Res> {
  _$ForumFormEventCopyWithImpl(this._value, this._then);

  final ForumFormEvent _value;
  // ignore: unused_field
  final $Res Function(ForumFormEvent) _then;
}

/// @nodoc
abstract class _$TitleChangedCopyWith<$Res> {
  factory _$TitleChangedCopyWith(
          _TitleChanged value, $Res Function(_TitleChanged) then) =
      __$TitleChangedCopyWithImpl<$Res>;
  $Res call({String titleStr});
}

/// @nodoc
class __$TitleChangedCopyWithImpl<$Res>
    extends _$ForumFormEventCopyWithImpl<$Res>
    implements _$TitleChangedCopyWith<$Res> {
  __$TitleChangedCopyWithImpl(
      _TitleChanged _value, $Res Function(_TitleChanged) _then)
      : super(_value, (v) => _then(v as _TitleChanged));

  @override
  _TitleChanged get _value => super._value as _TitleChanged;

  @override
  $Res call({
    Object? titleStr = freezed,
  }) {
    return _then(_TitleChanged(
      titleStr == freezed
          ? _value.titleStr
          : titleStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TitleChanged with DiagnosticableTreeMixin implements _TitleChanged {
  const _$_TitleChanged(this.titleStr);

  @override
  final String titleStr;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ForumFormEvent.titleChanged(titleStr: $titleStr)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ForumFormEvent.titleChanged'))
      ..add(DiagnosticsProperty('titleStr', titleStr));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TitleChanged &&
            (identical(other.titleStr, titleStr) ||
                const DeepCollectionEquality()
                    .equals(other.titleStr, titleStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(titleStr);

  @JsonKey(ignore: true)
  @override
  _$TitleChangedCopyWith<_TitleChanged> get copyWith =>
      __$TitleChangedCopyWithImpl<_TitleChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String titleStr) titleChanged,
    required TResult Function(String tagStr) tagChanged,
    required TResult Function(String bodyStr) bodyChanged,
    required TResult Function(File photo) photoAdded,
    required TResult Function() createdPost,
  }) {
    return titleChanged(titleStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String titleStr)? titleChanged,
    TResult Function(String tagStr)? tagChanged,
    TResult Function(String bodyStr)? bodyChanged,
    TResult Function(File photo)? photoAdded,
    TResult Function()? createdPost,
    required TResult orElse(),
  }) {
    if (titleChanged != null) {
      return titleChanged(titleStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_TagChanged value) tagChanged,
    required TResult Function(_BodyChanged value) bodyChanged,
    required TResult Function(_PhotoAdded value) photoAdded,
    required TResult Function(_CreatedPost value) createdPost,
  }) {
    return titleChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_TagChanged value)? tagChanged,
    TResult Function(_BodyChanged value)? bodyChanged,
    TResult Function(_PhotoAdded value)? photoAdded,
    TResult Function(_CreatedPost value)? createdPost,
    required TResult orElse(),
  }) {
    if (titleChanged != null) {
      return titleChanged(this);
    }
    return orElse();
  }
}

abstract class _TitleChanged implements ForumFormEvent {
  const factory _TitleChanged(String titleStr) = _$_TitleChanged;

  String get titleStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$TitleChangedCopyWith<_TitleChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$TagChangedCopyWith<$Res> {
  factory _$TagChangedCopyWith(
          _TagChanged value, $Res Function(_TagChanged) then) =
      __$TagChangedCopyWithImpl<$Res>;
  $Res call({String tagStr});
}

/// @nodoc
class __$TagChangedCopyWithImpl<$Res> extends _$ForumFormEventCopyWithImpl<$Res>
    implements _$TagChangedCopyWith<$Res> {
  __$TagChangedCopyWithImpl(
      _TagChanged _value, $Res Function(_TagChanged) _then)
      : super(_value, (v) => _then(v as _TagChanged));

  @override
  _TagChanged get _value => super._value as _TagChanged;

  @override
  $Res call({
    Object? tagStr = freezed,
  }) {
    return _then(_TagChanged(
      tagStr == freezed
          ? _value.tagStr
          : tagStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TagChanged with DiagnosticableTreeMixin implements _TagChanged {
  const _$_TagChanged(this.tagStr);

  @override
  final String tagStr;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ForumFormEvent.tagChanged(tagStr: $tagStr)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ForumFormEvent.tagChanged'))
      ..add(DiagnosticsProperty('tagStr', tagStr));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TagChanged &&
            (identical(other.tagStr, tagStr) ||
                const DeepCollectionEquality().equals(other.tagStr, tagStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(tagStr);

  @JsonKey(ignore: true)
  @override
  _$TagChangedCopyWith<_TagChanged> get copyWith =>
      __$TagChangedCopyWithImpl<_TagChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String titleStr) titleChanged,
    required TResult Function(String tagStr) tagChanged,
    required TResult Function(String bodyStr) bodyChanged,
    required TResult Function(File photo) photoAdded,
    required TResult Function() createdPost,
  }) {
    return tagChanged(tagStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String titleStr)? titleChanged,
    TResult Function(String tagStr)? tagChanged,
    TResult Function(String bodyStr)? bodyChanged,
    TResult Function(File photo)? photoAdded,
    TResult Function()? createdPost,
    required TResult orElse(),
  }) {
    if (tagChanged != null) {
      return tagChanged(tagStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_TagChanged value) tagChanged,
    required TResult Function(_BodyChanged value) bodyChanged,
    required TResult Function(_PhotoAdded value) photoAdded,
    required TResult Function(_CreatedPost value) createdPost,
  }) {
    return tagChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_TagChanged value)? tagChanged,
    TResult Function(_BodyChanged value)? bodyChanged,
    TResult Function(_PhotoAdded value)? photoAdded,
    TResult Function(_CreatedPost value)? createdPost,
    required TResult orElse(),
  }) {
    if (tagChanged != null) {
      return tagChanged(this);
    }
    return orElse();
  }
}

abstract class _TagChanged implements ForumFormEvent {
  const factory _TagChanged(String tagStr) = _$_TagChanged;

  String get tagStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$TagChangedCopyWith<_TagChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$BodyChangedCopyWith<$Res> {
  factory _$BodyChangedCopyWith(
          _BodyChanged value, $Res Function(_BodyChanged) then) =
      __$BodyChangedCopyWithImpl<$Res>;
  $Res call({String bodyStr});
}

/// @nodoc
class __$BodyChangedCopyWithImpl<$Res>
    extends _$ForumFormEventCopyWithImpl<$Res>
    implements _$BodyChangedCopyWith<$Res> {
  __$BodyChangedCopyWithImpl(
      _BodyChanged _value, $Res Function(_BodyChanged) _then)
      : super(_value, (v) => _then(v as _BodyChanged));

  @override
  _BodyChanged get _value => super._value as _BodyChanged;

  @override
  $Res call({
    Object? bodyStr = freezed,
  }) {
    return _then(_BodyChanged(
      bodyStr == freezed
          ? _value.bodyStr
          : bodyStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_BodyChanged with DiagnosticableTreeMixin implements _BodyChanged {
  const _$_BodyChanged(this.bodyStr);

  @override
  final String bodyStr;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ForumFormEvent.bodyChanged(bodyStr: $bodyStr)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ForumFormEvent.bodyChanged'))
      ..add(DiagnosticsProperty('bodyStr', bodyStr));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BodyChanged &&
            (identical(other.bodyStr, bodyStr) ||
                const DeepCollectionEquality().equals(other.bodyStr, bodyStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(bodyStr);

  @JsonKey(ignore: true)
  @override
  _$BodyChangedCopyWith<_BodyChanged> get copyWith =>
      __$BodyChangedCopyWithImpl<_BodyChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String titleStr) titleChanged,
    required TResult Function(String tagStr) tagChanged,
    required TResult Function(String bodyStr) bodyChanged,
    required TResult Function(File photo) photoAdded,
    required TResult Function() createdPost,
  }) {
    return bodyChanged(bodyStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String titleStr)? titleChanged,
    TResult Function(String tagStr)? tagChanged,
    TResult Function(String bodyStr)? bodyChanged,
    TResult Function(File photo)? photoAdded,
    TResult Function()? createdPost,
    required TResult orElse(),
  }) {
    if (bodyChanged != null) {
      return bodyChanged(bodyStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_TagChanged value) tagChanged,
    required TResult Function(_BodyChanged value) bodyChanged,
    required TResult Function(_PhotoAdded value) photoAdded,
    required TResult Function(_CreatedPost value) createdPost,
  }) {
    return bodyChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_TagChanged value)? tagChanged,
    TResult Function(_BodyChanged value)? bodyChanged,
    TResult Function(_PhotoAdded value)? photoAdded,
    TResult Function(_CreatedPost value)? createdPost,
    required TResult orElse(),
  }) {
    if (bodyChanged != null) {
      return bodyChanged(this);
    }
    return orElse();
  }
}

abstract class _BodyChanged implements ForumFormEvent {
  const factory _BodyChanged(String bodyStr) = _$_BodyChanged;

  String get bodyStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$BodyChangedCopyWith<_BodyChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PhotoAddedCopyWith<$Res> {
  factory _$PhotoAddedCopyWith(
          _PhotoAdded value, $Res Function(_PhotoAdded) then) =
      __$PhotoAddedCopyWithImpl<$Res>;
  $Res call({File photo});
}

/// @nodoc
class __$PhotoAddedCopyWithImpl<$Res> extends _$ForumFormEventCopyWithImpl<$Res>
    implements _$PhotoAddedCopyWith<$Res> {
  __$PhotoAddedCopyWithImpl(
      _PhotoAdded _value, $Res Function(_PhotoAdded) _then)
      : super(_value, (v) => _then(v as _PhotoAdded));

  @override
  _PhotoAdded get _value => super._value as _PhotoAdded;

  @override
  $Res call({
    Object? photo = freezed,
  }) {
    return _then(_PhotoAdded(
      photo == freezed
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as File,
    ));
  }
}

/// @nodoc

class _$_PhotoAdded with DiagnosticableTreeMixin implements _PhotoAdded {
  const _$_PhotoAdded(this.photo);

  @override
  final File photo;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ForumFormEvent.photoAdded(photo: $photo)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ForumFormEvent.photoAdded'))
      ..add(DiagnosticsProperty('photo', photo));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PhotoAdded &&
            (identical(other.photo, photo) ||
                const DeepCollectionEquality().equals(other.photo, photo)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(photo);

  @JsonKey(ignore: true)
  @override
  _$PhotoAddedCopyWith<_PhotoAdded> get copyWith =>
      __$PhotoAddedCopyWithImpl<_PhotoAdded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String titleStr) titleChanged,
    required TResult Function(String tagStr) tagChanged,
    required TResult Function(String bodyStr) bodyChanged,
    required TResult Function(File photo) photoAdded,
    required TResult Function() createdPost,
  }) {
    return photoAdded(photo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String titleStr)? titleChanged,
    TResult Function(String tagStr)? tagChanged,
    TResult Function(String bodyStr)? bodyChanged,
    TResult Function(File photo)? photoAdded,
    TResult Function()? createdPost,
    required TResult orElse(),
  }) {
    if (photoAdded != null) {
      return photoAdded(photo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_TagChanged value) tagChanged,
    required TResult Function(_BodyChanged value) bodyChanged,
    required TResult Function(_PhotoAdded value) photoAdded,
    required TResult Function(_CreatedPost value) createdPost,
  }) {
    return photoAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_TagChanged value)? tagChanged,
    TResult Function(_BodyChanged value)? bodyChanged,
    TResult Function(_PhotoAdded value)? photoAdded,
    TResult Function(_CreatedPost value)? createdPost,
    required TResult orElse(),
  }) {
    if (photoAdded != null) {
      return photoAdded(this);
    }
    return orElse();
  }
}

abstract class _PhotoAdded implements ForumFormEvent {
  const factory _PhotoAdded(File photo) = _$_PhotoAdded;

  File get photo => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$PhotoAddedCopyWith<_PhotoAdded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CreatedPostCopyWith<$Res> {
  factory _$CreatedPostCopyWith(
          _CreatedPost value, $Res Function(_CreatedPost) then) =
      __$CreatedPostCopyWithImpl<$Res>;
}

/// @nodoc
class __$CreatedPostCopyWithImpl<$Res>
    extends _$ForumFormEventCopyWithImpl<$Res>
    implements _$CreatedPostCopyWith<$Res> {
  __$CreatedPostCopyWithImpl(
      _CreatedPost _value, $Res Function(_CreatedPost) _then)
      : super(_value, (v) => _then(v as _CreatedPost));

  @override
  _CreatedPost get _value => super._value as _CreatedPost;
}

/// @nodoc

class _$_CreatedPost with DiagnosticableTreeMixin implements _CreatedPost {
  const _$_CreatedPost();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ForumFormEvent.createdPost()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'ForumFormEvent.createdPost'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _CreatedPost);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String titleStr) titleChanged,
    required TResult Function(String tagStr) tagChanged,
    required TResult Function(String bodyStr) bodyChanged,
    required TResult Function(File photo) photoAdded,
    required TResult Function() createdPost,
  }) {
    return createdPost();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String titleStr)? titleChanged,
    TResult Function(String tagStr)? tagChanged,
    TResult Function(String bodyStr)? bodyChanged,
    TResult Function(File photo)? photoAdded,
    TResult Function()? createdPost,
    required TResult orElse(),
  }) {
    if (createdPost != null) {
      return createdPost();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_TagChanged value) tagChanged,
    required TResult Function(_BodyChanged value) bodyChanged,
    required TResult Function(_PhotoAdded value) photoAdded,
    required TResult Function(_CreatedPost value) createdPost,
  }) {
    return createdPost(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_TagChanged value)? tagChanged,
    TResult Function(_BodyChanged value)? bodyChanged,
    TResult Function(_PhotoAdded value)? photoAdded,
    TResult Function(_CreatedPost value)? createdPost,
    required TResult orElse(),
  }) {
    if (createdPost != null) {
      return createdPost(this);
    }
    return orElse();
  }
}

abstract class _CreatedPost implements ForumFormEvent {
  const factory _CreatedPost() = _$_CreatedPost;
}

/// @nodoc
class _$ForumFormStateTearOff {
  const _$ForumFormStateTearOff();

  _ForumFormState call(
      {required ForumPost forumPost,
      required bool addedImage,
      required Either<DataFailure, String> photoUrl,
      required bool addedPoll}) {
    return _ForumFormState(
      forumPost: forumPost,
      addedImage: addedImage,
      photoUrl: photoUrl,
      addedPoll: addedPoll,
    );
  }
}

/// @nodoc
const $ForumFormState = _$ForumFormStateTearOff();

/// @nodoc
mixin _$ForumFormState {
  ForumPost get forumPost => throw _privateConstructorUsedError;
  bool get addedImage => throw _privateConstructorUsedError;
  Either<DataFailure, String> get photoUrl =>
      throw _privateConstructorUsedError;
  bool get addedPoll => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ForumFormStateCopyWith<ForumFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForumFormStateCopyWith<$Res> {
  factory $ForumFormStateCopyWith(
          ForumFormState value, $Res Function(ForumFormState) then) =
      _$ForumFormStateCopyWithImpl<$Res>;
  $Res call(
      {ForumPost forumPost,
      bool addedImage,
      Either<DataFailure, String> photoUrl,
      bool addedPoll});

  $ForumPostCopyWith<$Res> get forumPost;
}

/// @nodoc
class _$ForumFormStateCopyWithImpl<$Res>
    implements $ForumFormStateCopyWith<$Res> {
  _$ForumFormStateCopyWithImpl(this._value, this._then);

  final ForumFormState _value;
  // ignore: unused_field
  final $Res Function(ForumFormState) _then;

  @override
  $Res call({
    Object? forumPost = freezed,
    Object? addedImage = freezed,
    Object? photoUrl = freezed,
    Object? addedPoll = freezed,
  }) {
    return _then(_value.copyWith(
      forumPost: forumPost == freezed
          ? _value.forumPost
          : forumPost // ignore: cast_nullable_to_non_nullable
              as ForumPost,
      addedImage: addedImage == freezed
          ? _value.addedImage
          : addedImage // ignore: cast_nullable_to_non_nullable
              as bool,
      photoUrl: photoUrl == freezed
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as Either<DataFailure, String>,
      addedPoll: addedPoll == freezed
          ? _value.addedPoll
          : addedPoll // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $ForumPostCopyWith<$Res> get forumPost {
    return $ForumPostCopyWith<$Res>(_value.forumPost, (value) {
      return _then(_value.copyWith(forumPost: value));
    });
  }
}

/// @nodoc
abstract class _$ForumFormStateCopyWith<$Res>
    implements $ForumFormStateCopyWith<$Res> {
  factory _$ForumFormStateCopyWith(
          _ForumFormState value, $Res Function(_ForumFormState) then) =
      __$ForumFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {ForumPost forumPost,
      bool addedImage,
      Either<DataFailure, String> photoUrl,
      bool addedPoll});

  @override
  $ForumPostCopyWith<$Res> get forumPost;
}

/// @nodoc
class __$ForumFormStateCopyWithImpl<$Res>
    extends _$ForumFormStateCopyWithImpl<$Res>
    implements _$ForumFormStateCopyWith<$Res> {
  __$ForumFormStateCopyWithImpl(
      _ForumFormState _value, $Res Function(_ForumFormState) _then)
      : super(_value, (v) => _then(v as _ForumFormState));

  @override
  _ForumFormState get _value => super._value as _ForumFormState;

  @override
  $Res call({
    Object? forumPost = freezed,
    Object? addedImage = freezed,
    Object? photoUrl = freezed,
    Object? addedPoll = freezed,
  }) {
    return _then(_ForumFormState(
      forumPost: forumPost == freezed
          ? _value.forumPost
          : forumPost // ignore: cast_nullable_to_non_nullable
              as ForumPost,
      addedImage: addedImage == freezed
          ? _value.addedImage
          : addedImage // ignore: cast_nullable_to_non_nullable
              as bool,
      photoUrl: photoUrl == freezed
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as Either<DataFailure, String>,
      addedPoll: addedPoll == freezed
          ? _value.addedPoll
          : addedPoll // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ForumFormState
    with DiagnosticableTreeMixin
    implements _ForumFormState {
  const _$_ForumFormState(
      {required this.forumPost,
      required this.addedImage,
      required this.photoUrl,
      required this.addedPoll});

  @override
  final ForumPost forumPost;
  @override
  final bool addedImage;
  @override
  final Either<DataFailure, String> photoUrl;
  @override
  final bool addedPoll;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ForumFormState(forumPost: $forumPost, addedImage: $addedImage, photoUrl: $photoUrl, addedPoll: $addedPoll)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ForumFormState'))
      ..add(DiagnosticsProperty('forumPost', forumPost))
      ..add(DiagnosticsProperty('addedImage', addedImage))
      ..add(DiagnosticsProperty('photoUrl', photoUrl))
      ..add(DiagnosticsProperty('addedPoll', addedPoll));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ForumFormState &&
            (identical(other.forumPost, forumPost) ||
                const DeepCollectionEquality()
                    .equals(other.forumPost, forumPost)) &&
            (identical(other.addedImage, addedImage) ||
                const DeepCollectionEquality()
                    .equals(other.addedImage, addedImage)) &&
            (identical(other.photoUrl, photoUrl) ||
                const DeepCollectionEquality()
                    .equals(other.photoUrl, photoUrl)) &&
            (identical(other.addedPoll, addedPoll) ||
                const DeepCollectionEquality()
                    .equals(other.addedPoll, addedPoll)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(forumPost) ^
      const DeepCollectionEquality().hash(addedImage) ^
      const DeepCollectionEquality().hash(photoUrl) ^
      const DeepCollectionEquality().hash(addedPoll);

  @JsonKey(ignore: true)
  @override
  _$ForumFormStateCopyWith<_ForumFormState> get copyWith =>
      __$ForumFormStateCopyWithImpl<_ForumFormState>(this, _$identity);
}

abstract class _ForumFormState implements ForumFormState {
  const factory _ForumFormState(
      {required ForumPost forumPost,
      required bool addedImage,
      required Either<DataFailure, String> photoUrl,
      required bool addedPoll}) = _$_ForumFormState;

  @override
  ForumPost get forumPost => throw _privateConstructorUsedError;
  @override
  bool get addedImage => throw _privateConstructorUsedError;
  @override
  Either<DataFailure, String> get photoUrl =>
      throw _privateConstructorUsedError;
  @override
  bool get addedPoll => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ForumFormStateCopyWith<_ForumFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

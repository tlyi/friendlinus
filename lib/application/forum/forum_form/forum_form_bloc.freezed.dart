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

  _AnonStateChanged anonStateChanged() {
    return const _AnonStateChanged();
  }

  _PhotoAdded photoAdded(File photo, String forumId) {
    return _PhotoAdded(
      photo,
      forumId,
    );
  }

  _PollAdded pollAdded() {
    return const _PollAdded();
  }

  _PollNumOptionsChanged pollNumOptionsChanged(int numOptions) {
    return _PollNumOptionsChanged(
      numOptions,
    );
  }

  _PollOptionChanged pollOptionChanged(int index, String optionStr) {
    return _PollOptionChanged(
      index,
      optionStr,
    );
  }

  _PhotoRemoved photoRemoved() {
    return const _PhotoRemoved();
  }

  _PollRemoved pollRemoved() {
    return const _PollRemoved();
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
    required TResult Function() anonStateChanged,
    required TResult Function(File photo, String forumId) photoAdded,
    required TResult Function() pollAdded,
    required TResult Function(int numOptions) pollNumOptionsChanged,
    required TResult Function(int index, String optionStr) pollOptionChanged,
    required TResult Function() photoRemoved,
    required TResult Function() pollRemoved,
    required TResult Function() createdPost,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String titleStr)? titleChanged,
    TResult Function(String tagStr)? tagChanged,
    TResult Function(String bodyStr)? bodyChanged,
    TResult Function()? anonStateChanged,
    TResult Function(File photo, String forumId)? photoAdded,
    TResult Function()? pollAdded,
    TResult Function(int numOptions)? pollNumOptionsChanged,
    TResult Function(int index, String optionStr)? pollOptionChanged,
    TResult Function()? photoRemoved,
    TResult Function()? pollRemoved,
    TResult Function()? createdPost,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_TagChanged value) tagChanged,
    required TResult Function(_BodyChanged value) bodyChanged,
    required TResult Function(_AnonStateChanged value) anonStateChanged,
    required TResult Function(_PhotoAdded value) photoAdded,
    required TResult Function(_PollAdded value) pollAdded,
    required TResult Function(_PollNumOptionsChanged value)
        pollNumOptionsChanged,
    required TResult Function(_PollOptionChanged value) pollOptionChanged,
    required TResult Function(_PhotoRemoved value) photoRemoved,
    required TResult Function(_PollRemoved value) pollRemoved,
    required TResult Function(_CreatedPost value) createdPost,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_TagChanged value)? tagChanged,
    TResult Function(_BodyChanged value)? bodyChanged,
    TResult Function(_AnonStateChanged value)? anonStateChanged,
    TResult Function(_PhotoAdded value)? photoAdded,
    TResult Function(_PollAdded value)? pollAdded,
    TResult Function(_PollNumOptionsChanged value)? pollNumOptionsChanged,
    TResult Function(_PollOptionChanged value)? pollOptionChanged,
    TResult Function(_PhotoRemoved value)? photoRemoved,
    TResult Function(_PollRemoved value)? pollRemoved,
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
    required TResult Function() anonStateChanged,
    required TResult Function(File photo, String forumId) photoAdded,
    required TResult Function() pollAdded,
    required TResult Function(int numOptions) pollNumOptionsChanged,
    required TResult Function(int index, String optionStr) pollOptionChanged,
    required TResult Function() photoRemoved,
    required TResult Function() pollRemoved,
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
    TResult Function()? anonStateChanged,
    TResult Function(File photo, String forumId)? photoAdded,
    TResult Function()? pollAdded,
    TResult Function(int numOptions)? pollNumOptionsChanged,
    TResult Function(int index, String optionStr)? pollOptionChanged,
    TResult Function()? photoRemoved,
    TResult Function()? pollRemoved,
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
    required TResult Function(_AnonStateChanged value) anonStateChanged,
    required TResult Function(_PhotoAdded value) photoAdded,
    required TResult Function(_PollAdded value) pollAdded,
    required TResult Function(_PollNumOptionsChanged value)
        pollNumOptionsChanged,
    required TResult Function(_PollOptionChanged value) pollOptionChanged,
    required TResult Function(_PhotoRemoved value) photoRemoved,
    required TResult Function(_PollRemoved value) pollRemoved,
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
    TResult Function(_AnonStateChanged value)? anonStateChanged,
    TResult Function(_PhotoAdded value)? photoAdded,
    TResult Function(_PollAdded value)? pollAdded,
    TResult Function(_PollNumOptionsChanged value)? pollNumOptionsChanged,
    TResult Function(_PollOptionChanged value)? pollOptionChanged,
    TResult Function(_PhotoRemoved value)? photoRemoved,
    TResult Function(_PollRemoved value)? pollRemoved,
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
    required TResult Function() anonStateChanged,
    required TResult Function(File photo, String forumId) photoAdded,
    required TResult Function() pollAdded,
    required TResult Function(int numOptions) pollNumOptionsChanged,
    required TResult Function(int index, String optionStr) pollOptionChanged,
    required TResult Function() photoRemoved,
    required TResult Function() pollRemoved,
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
    TResult Function()? anonStateChanged,
    TResult Function(File photo, String forumId)? photoAdded,
    TResult Function()? pollAdded,
    TResult Function(int numOptions)? pollNumOptionsChanged,
    TResult Function(int index, String optionStr)? pollOptionChanged,
    TResult Function()? photoRemoved,
    TResult Function()? pollRemoved,
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
    required TResult Function(_AnonStateChanged value) anonStateChanged,
    required TResult Function(_PhotoAdded value) photoAdded,
    required TResult Function(_PollAdded value) pollAdded,
    required TResult Function(_PollNumOptionsChanged value)
        pollNumOptionsChanged,
    required TResult Function(_PollOptionChanged value) pollOptionChanged,
    required TResult Function(_PhotoRemoved value) photoRemoved,
    required TResult Function(_PollRemoved value) pollRemoved,
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
    TResult Function(_AnonStateChanged value)? anonStateChanged,
    TResult Function(_PhotoAdded value)? photoAdded,
    TResult Function(_PollAdded value)? pollAdded,
    TResult Function(_PollNumOptionsChanged value)? pollNumOptionsChanged,
    TResult Function(_PollOptionChanged value)? pollOptionChanged,
    TResult Function(_PhotoRemoved value)? photoRemoved,
    TResult Function(_PollRemoved value)? pollRemoved,
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
    required TResult Function() anonStateChanged,
    required TResult Function(File photo, String forumId) photoAdded,
    required TResult Function() pollAdded,
    required TResult Function(int numOptions) pollNumOptionsChanged,
    required TResult Function(int index, String optionStr) pollOptionChanged,
    required TResult Function() photoRemoved,
    required TResult Function() pollRemoved,
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
    TResult Function()? anonStateChanged,
    TResult Function(File photo, String forumId)? photoAdded,
    TResult Function()? pollAdded,
    TResult Function(int numOptions)? pollNumOptionsChanged,
    TResult Function(int index, String optionStr)? pollOptionChanged,
    TResult Function()? photoRemoved,
    TResult Function()? pollRemoved,
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
    required TResult Function(_AnonStateChanged value) anonStateChanged,
    required TResult Function(_PhotoAdded value) photoAdded,
    required TResult Function(_PollAdded value) pollAdded,
    required TResult Function(_PollNumOptionsChanged value)
        pollNumOptionsChanged,
    required TResult Function(_PollOptionChanged value) pollOptionChanged,
    required TResult Function(_PhotoRemoved value) photoRemoved,
    required TResult Function(_PollRemoved value) pollRemoved,
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
    TResult Function(_AnonStateChanged value)? anonStateChanged,
    TResult Function(_PhotoAdded value)? photoAdded,
    TResult Function(_PollAdded value)? pollAdded,
    TResult Function(_PollNumOptionsChanged value)? pollNumOptionsChanged,
    TResult Function(_PollOptionChanged value)? pollOptionChanged,
    TResult Function(_PhotoRemoved value)? photoRemoved,
    TResult Function(_PollRemoved value)? pollRemoved,
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
abstract class _$AnonStateChangedCopyWith<$Res> {
  factory _$AnonStateChangedCopyWith(
          _AnonStateChanged value, $Res Function(_AnonStateChanged) then) =
      __$AnonStateChangedCopyWithImpl<$Res>;
}

/// @nodoc
class __$AnonStateChangedCopyWithImpl<$Res>
    extends _$ForumFormEventCopyWithImpl<$Res>
    implements _$AnonStateChangedCopyWith<$Res> {
  __$AnonStateChangedCopyWithImpl(
      _AnonStateChanged _value, $Res Function(_AnonStateChanged) _then)
      : super(_value, (v) => _then(v as _AnonStateChanged));

  @override
  _AnonStateChanged get _value => super._value as _AnonStateChanged;
}

/// @nodoc

class _$_AnonStateChanged
    with DiagnosticableTreeMixin
    implements _AnonStateChanged {
  const _$_AnonStateChanged();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ForumFormEvent.anonStateChanged()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ForumFormEvent.anonStateChanged'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _AnonStateChanged);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String titleStr) titleChanged,
    required TResult Function(String tagStr) tagChanged,
    required TResult Function(String bodyStr) bodyChanged,
    required TResult Function() anonStateChanged,
    required TResult Function(File photo, String forumId) photoAdded,
    required TResult Function() pollAdded,
    required TResult Function(int numOptions) pollNumOptionsChanged,
    required TResult Function(int index, String optionStr) pollOptionChanged,
    required TResult Function() photoRemoved,
    required TResult Function() pollRemoved,
    required TResult Function() createdPost,
  }) {
    return anonStateChanged();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String titleStr)? titleChanged,
    TResult Function(String tagStr)? tagChanged,
    TResult Function(String bodyStr)? bodyChanged,
    TResult Function()? anonStateChanged,
    TResult Function(File photo, String forumId)? photoAdded,
    TResult Function()? pollAdded,
    TResult Function(int numOptions)? pollNumOptionsChanged,
    TResult Function(int index, String optionStr)? pollOptionChanged,
    TResult Function()? photoRemoved,
    TResult Function()? pollRemoved,
    TResult Function()? createdPost,
    required TResult orElse(),
  }) {
    if (anonStateChanged != null) {
      return anonStateChanged();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_TagChanged value) tagChanged,
    required TResult Function(_BodyChanged value) bodyChanged,
    required TResult Function(_AnonStateChanged value) anonStateChanged,
    required TResult Function(_PhotoAdded value) photoAdded,
    required TResult Function(_PollAdded value) pollAdded,
    required TResult Function(_PollNumOptionsChanged value)
        pollNumOptionsChanged,
    required TResult Function(_PollOptionChanged value) pollOptionChanged,
    required TResult Function(_PhotoRemoved value) photoRemoved,
    required TResult Function(_PollRemoved value) pollRemoved,
    required TResult Function(_CreatedPost value) createdPost,
  }) {
    return anonStateChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_TagChanged value)? tagChanged,
    TResult Function(_BodyChanged value)? bodyChanged,
    TResult Function(_AnonStateChanged value)? anonStateChanged,
    TResult Function(_PhotoAdded value)? photoAdded,
    TResult Function(_PollAdded value)? pollAdded,
    TResult Function(_PollNumOptionsChanged value)? pollNumOptionsChanged,
    TResult Function(_PollOptionChanged value)? pollOptionChanged,
    TResult Function(_PhotoRemoved value)? photoRemoved,
    TResult Function(_PollRemoved value)? pollRemoved,
    TResult Function(_CreatedPost value)? createdPost,
    required TResult orElse(),
  }) {
    if (anonStateChanged != null) {
      return anonStateChanged(this);
    }
    return orElse();
  }
}

abstract class _AnonStateChanged implements ForumFormEvent {
  const factory _AnonStateChanged() = _$_AnonStateChanged;
}

/// @nodoc
abstract class _$PhotoAddedCopyWith<$Res> {
  factory _$PhotoAddedCopyWith(
          _PhotoAdded value, $Res Function(_PhotoAdded) then) =
      __$PhotoAddedCopyWithImpl<$Res>;
  $Res call({File photo, String forumId});
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
    Object? forumId = freezed,
  }) {
    return _then(_PhotoAdded(
      photo == freezed
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as File,
      forumId == freezed
          ? _value.forumId
          : forumId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PhotoAdded with DiagnosticableTreeMixin implements _PhotoAdded {
  const _$_PhotoAdded(this.photo, this.forumId);

  @override
  final File photo;
  @override
  final String forumId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ForumFormEvent.photoAdded(photo: $photo, forumId: $forumId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ForumFormEvent.photoAdded'))
      ..add(DiagnosticsProperty('photo', photo))
      ..add(DiagnosticsProperty('forumId', forumId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PhotoAdded &&
            (identical(other.photo, photo) ||
                const DeepCollectionEquality().equals(other.photo, photo)) &&
            (identical(other.forumId, forumId) ||
                const DeepCollectionEquality().equals(other.forumId, forumId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(photo) ^
      const DeepCollectionEquality().hash(forumId);

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
    required TResult Function() anonStateChanged,
    required TResult Function(File photo, String forumId) photoAdded,
    required TResult Function() pollAdded,
    required TResult Function(int numOptions) pollNumOptionsChanged,
    required TResult Function(int index, String optionStr) pollOptionChanged,
    required TResult Function() photoRemoved,
    required TResult Function() pollRemoved,
    required TResult Function() createdPost,
  }) {
    return photoAdded(photo, forumId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String titleStr)? titleChanged,
    TResult Function(String tagStr)? tagChanged,
    TResult Function(String bodyStr)? bodyChanged,
    TResult Function()? anonStateChanged,
    TResult Function(File photo, String forumId)? photoAdded,
    TResult Function()? pollAdded,
    TResult Function(int numOptions)? pollNumOptionsChanged,
    TResult Function(int index, String optionStr)? pollOptionChanged,
    TResult Function()? photoRemoved,
    TResult Function()? pollRemoved,
    TResult Function()? createdPost,
    required TResult orElse(),
  }) {
    if (photoAdded != null) {
      return photoAdded(photo, forumId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_TagChanged value) tagChanged,
    required TResult Function(_BodyChanged value) bodyChanged,
    required TResult Function(_AnonStateChanged value) anonStateChanged,
    required TResult Function(_PhotoAdded value) photoAdded,
    required TResult Function(_PollAdded value) pollAdded,
    required TResult Function(_PollNumOptionsChanged value)
        pollNumOptionsChanged,
    required TResult Function(_PollOptionChanged value) pollOptionChanged,
    required TResult Function(_PhotoRemoved value) photoRemoved,
    required TResult Function(_PollRemoved value) pollRemoved,
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
    TResult Function(_AnonStateChanged value)? anonStateChanged,
    TResult Function(_PhotoAdded value)? photoAdded,
    TResult Function(_PollAdded value)? pollAdded,
    TResult Function(_PollNumOptionsChanged value)? pollNumOptionsChanged,
    TResult Function(_PollOptionChanged value)? pollOptionChanged,
    TResult Function(_PhotoRemoved value)? photoRemoved,
    TResult Function(_PollRemoved value)? pollRemoved,
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
  const factory _PhotoAdded(File photo, String forumId) = _$_PhotoAdded;

  File get photo => throw _privateConstructorUsedError;
  String get forumId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$PhotoAddedCopyWith<_PhotoAdded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PollAddedCopyWith<$Res> {
  factory _$PollAddedCopyWith(
          _PollAdded value, $Res Function(_PollAdded) then) =
      __$PollAddedCopyWithImpl<$Res>;
}

/// @nodoc
class __$PollAddedCopyWithImpl<$Res> extends _$ForumFormEventCopyWithImpl<$Res>
    implements _$PollAddedCopyWith<$Res> {
  __$PollAddedCopyWithImpl(_PollAdded _value, $Res Function(_PollAdded) _then)
      : super(_value, (v) => _then(v as _PollAdded));

  @override
  _PollAdded get _value => super._value as _PollAdded;
}

/// @nodoc

class _$_PollAdded with DiagnosticableTreeMixin implements _PollAdded {
  const _$_PollAdded();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ForumFormEvent.pollAdded()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'ForumFormEvent.pollAdded'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _PollAdded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String titleStr) titleChanged,
    required TResult Function(String tagStr) tagChanged,
    required TResult Function(String bodyStr) bodyChanged,
    required TResult Function() anonStateChanged,
    required TResult Function(File photo, String forumId) photoAdded,
    required TResult Function() pollAdded,
    required TResult Function(int numOptions) pollNumOptionsChanged,
    required TResult Function(int index, String optionStr) pollOptionChanged,
    required TResult Function() photoRemoved,
    required TResult Function() pollRemoved,
    required TResult Function() createdPost,
  }) {
    return pollAdded();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String titleStr)? titleChanged,
    TResult Function(String tagStr)? tagChanged,
    TResult Function(String bodyStr)? bodyChanged,
    TResult Function()? anonStateChanged,
    TResult Function(File photo, String forumId)? photoAdded,
    TResult Function()? pollAdded,
    TResult Function(int numOptions)? pollNumOptionsChanged,
    TResult Function(int index, String optionStr)? pollOptionChanged,
    TResult Function()? photoRemoved,
    TResult Function()? pollRemoved,
    TResult Function()? createdPost,
    required TResult orElse(),
  }) {
    if (pollAdded != null) {
      return pollAdded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_TagChanged value) tagChanged,
    required TResult Function(_BodyChanged value) bodyChanged,
    required TResult Function(_AnonStateChanged value) anonStateChanged,
    required TResult Function(_PhotoAdded value) photoAdded,
    required TResult Function(_PollAdded value) pollAdded,
    required TResult Function(_PollNumOptionsChanged value)
        pollNumOptionsChanged,
    required TResult Function(_PollOptionChanged value) pollOptionChanged,
    required TResult Function(_PhotoRemoved value) photoRemoved,
    required TResult Function(_PollRemoved value) pollRemoved,
    required TResult Function(_CreatedPost value) createdPost,
  }) {
    return pollAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_TagChanged value)? tagChanged,
    TResult Function(_BodyChanged value)? bodyChanged,
    TResult Function(_AnonStateChanged value)? anonStateChanged,
    TResult Function(_PhotoAdded value)? photoAdded,
    TResult Function(_PollAdded value)? pollAdded,
    TResult Function(_PollNumOptionsChanged value)? pollNumOptionsChanged,
    TResult Function(_PollOptionChanged value)? pollOptionChanged,
    TResult Function(_PhotoRemoved value)? photoRemoved,
    TResult Function(_PollRemoved value)? pollRemoved,
    TResult Function(_CreatedPost value)? createdPost,
    required TResult orElse(),
  }) {
    if (pollAdded != null) {
      return pollAdded(this);
    }
    return orElse();
  }
}

abstract class _PollAdded implements ForumFormEvent {
  const factory _PollAdded() = _$_PollAdded;
}

/// @nodoc
abstract class _$PollNumOptionsChangedCopyWith<$Res> {
  factory _$PollNumOptionsChangedCopyWith(_PollNumOptionsChanged value,
          $Res Function(_PollNumOptionsChanged) then) =
      __$PollNumOptionsChangedCopyWithImpl<$Res>;
  $Res call({int numOptions});
}

/// @nodoc
class __$PollNumOptionsChangedCopyWithImpl<$Res>
    extends _$ForumFormEventCopyWithImpl<$Res>
    implements _$PollNumOptionsChangedCopyWith<$Res> {
  __$PollNumOptionsChangedCopyWithImpl(_PollNumOptionsChanged _value,
      $Res Function(_PollNumOptionsChanged) _then)
      : super(_value, (v) => _then(v as _PollNumOptionsChanged));

  @override
  _PollNumOptionsChanged get _value => super._value as _PollNumOptionsChanged;

  @override
  $Res call({
    Object? numOptions = freezed,
  }) {
    return _then(_PollNumOptionsChanged(
      numOptions == freezed
          ? _value.numOptions
          : numOptions // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_PollNumOptionsChanged
    with DiagnosticableTreeMixin
    implements _PollNumOptionsChanged {
  const _$_PollNumOptionsChanged(this.numOptions);

  @override
  final int numOptions;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ForumFormEvent.pollNumOptionsChanged(numOptions: $numOptions)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ForumFormEvent.pollNumOptionsChanged'))
      ..add(DiagnosticsProperty('numOptions', numOptions));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PollNumOptionsChanged &&
            (identical(other.numOptions, numOptions) ||
                const DeepCollectionEquality()
                    .equals(other.numOptions, numOptions)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(numOptions);

  @JsonKey(ignore: true)
  @override
  _$PollNumOptionsChangedCopyWith<_PollNumOptionsChanged> get copyWith =>
      __$PollNumOptionsChangedCopyWithImpl<_PollNumOptionsChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String titleStr) titleChanged,
    required TResult Function(String tagStr) tagChanged,
    required TResult Function(String bodyStr) bodyChanged,
    required TResult Function() anonStateChanged,
    required TResult Function(File photo, String forumId) photoAdded,
    required TResult Function() pollAdded,
    required TResult Function(int numOptions) pollNumOptionsChanged,
    required TResult Function(int index, String optionStr) pollOptionChanged,
    required TResult Function() photoRemoved,
    required TResult Function() pollRemoved,
    required TResult Function() createdPost,
  }) {
    return pollNumOptionsChanged(numOptions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String titleStr)? titleChanged,
    TResult Function(String tagStr)? tagChanged,
    TResult Function(String bodyStr)? bodyChanged,
    TResult Function()? anonStateChanged,
    TResult Function(File photo, String forumId)? photoAdded,
    TResult Function()? pollAdded,
    TResult Function(int numOptions)? pollNumOptionsChanged,
    TResult Function(int index, String optionStr)? pollOptionChanged,
    TResult Function()? photoRemoved,
    TResult Function()? pollRemoved,
    TResult Function()? createdPost,
    required TResult orElse(),
  }) {
    if (pollNumOptionsChanged != null) {
      return pollNumOptionsChanged(numOptions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_TagChanged value) tagChanged,
    required TResult Function(_BodyChanged value) bodyChanged,
    required TResult Function(_AnonStateChanged value) anonStateChanged,
    required TResult Function(_PhotoAdded value) photoAdded,
    required TResult Function(_PollAdded value) pollAdded,
    required TResult Function(_PollNumOptionsChanged value)
        pollNumOptionsChanged,
    required TResult Function(_PollOptionChanged value) pollOptionChanged,
    required TResult Function(_PhotoRemoved value) photoRemoved,
    required TResult Function(_PollRemoved value) pollRemoved,
    required TResult Function(_CreatedPost value) createdPost,
  }) {
    return pollNumOptionsChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_TagChanged value)? tagChanged,
    TResult Function(_BodyChanged value)? bodyChanged,
    TResult Function(_AnonStateChanged value)? anonStateChanged,
    TResult Function(_PhotoAdded value)? photoAdded,
    TResult Function(_PollAdded value)? pollAdded,
    TResult Function(_PollNumOptionsChanged value)? pollNumOptionsChanged,
    TResult Function(_PollOptionChanged value)? pollOptionChanged,
    TResult Function(_PhotoRemoved value)? photoRemoved,
    TResult Function(_PollRemoved value)? pollRemoved,
    TResult Function(_CreatedPost value)? createdPost,
    required TResult orElse(),
  }) {
    if (pollNumOptionsChanged != null) {
      return pollNumOptionsChanged(this);
    }
    return orElse();
  }
}

abstract class _PollNumOptionsChanged implements ForumFormEvent {
  const factory _PollNumOptionsChanged(int numOptions) =
      _$_PollNumOptionsChanged;

  int get numOptions => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$PollNumOptionsChangedCopyWith<_PollNumOptionsChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PollOptionChangedCopyWith<$Res> {
  factory _$PollOptionChangedCopyWith(
          _PollOptionChanged value, $Res Function(_PollOptionChanged) then) =
      __$PollOptionChangedCopyWithImpl<$Res>;
  $Res call({int index, String optionStr});
}

/// @nodoc
class __$PollOptionChangedCopyWithImpl<$Res>
    extends _$ForumFormEventCopyWithImpl<$Res>
    implements _$PollOptionChangedCopyWith<$Res> {
  __$PollOptionChangedCopyWithImpl(
      _PollOptionChanged _value, $Res Function(_PollOptionChanged) _then)
      : super(_value, (v) => _then(v as _PollOptionChanged));

  @override
  _PollOptionChanged get _value => super._value as _PollOptionChanged;

  @override
  $Res call({
    Object? index = freezed,
    Object? optionStr = freezed,
  }) {
    return _then(_PollOptionChanged(
      index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      optionStr == freezed
          ? _value.optionStr
          : optionStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PollOptionChanged
    with DiagnosticableTreeMixin
    implements _PollOptionChanged {
  const _$_PollOptionChanged(this.index, this.optionStr);

  @override
  final int index;
  @override
  final String optionStr;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ForumFormEvent.pollOptionChanged(index: $index, optionStr: $optionStr)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ForumFormEvent.pollOptionChanged'))
      ..add(DiagnosticsProperty('index', index))
      ..add(DiagnosticsProperty('optionStr', optionStr));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PollOptionChanged &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)) &&
            (identical(other.optionStr, optionStr) ||
                const DeepCollectionEquality()
                    .equals(other.optionStr, optionStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(index) ^
      const DeepCollectionEquality().hash(optionStr);

  @JsonKey(ignore: true)
  @override
  _$PollOptionChangedCopyWith<_PollOptionChanged> get copyWith =>
      __$PollOptionChangedCopyWithImpl<_PollOptionChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String titleStr) titleChanged,
    required TResult Function(String tagStr) tagChanged,
    required TResult Function(String bodyStr) bodyChanged,
    required TResult Function() anonStateChanged,
    required TResult Function(File photo, String forumId) photoAdded,
    required TResult Function() pollAdded,
    required TResult Function(int numOptions) pollNumOptionsChanged,
    required TResult Function(int index, String optionStr) pollOptionChanged,
    required TResult Function() photoRemoved,
    required TResult Function() pollRemoved,
    required TResult Function() createdPost,
  }) {
    return pollOptionChanged(index, optionStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String titleStr)? titleChanged,
    TResult Function(String tagStr)? tagChanged,
    TResult Function(String bodyStr)? bodyChanged,
    TResult Function()? anonStateChanged,
    TResult Function(File photo, String forumId)? photoAdded,
    TResult Function()? pollAdded,
    TResult Function(int numOptions)? pollNumOptionsChanged,
    TResult Function(int index, String optionStr)? pollOptionChanged,
    TResult Function()? photoRemoved,
    TResult Function()? pollRemoved,
    TResult Function()? createdPost,
    required TResult orElse(),
  }) {
    if (pollOptionChanged != null) {
      return pollOptionChanged(index, optionStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_TagChanged value) tagChanged,
    required TResult Function(_BodyChanged value) bodyChanged,
    required TResult Function(_AnonStateChanged value) anonStateChanged,
    required TResult Function(_PhotoAdded value) photoAdded,
    required TResult Function(_PollAdded value) pollAdded,
    required TResult Function(_PollNumOptionsChanged value)
        pollNumOptionsChanged,
    required TResult Function(_PollOptionChanged value) pollOptionChanged,
    required TResult Function(_PhotoRemoved value) photoRemoved,
    required TResult Function(_PollRemoved value) pollRemoved,
    required TResult Function(_CreatedPost value) createdPost,
  }) {
    return pollOptionChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_TagChanged value)? tagChanged,
    TResult Function(_BodyChanged value)? bodyChanged,
    TResult Function(_AnonStateChanged value)? anonStateChanged,
    TResult Function(_PhotoAdded value)? photoAdded,
    TResult Function(_PollAdded value)? pollAdded,
    TResult Function(_PollNumOptionsChanged value)? pollNumOptionsChanged,
    TResult Function(_PollOptionChanged value)? pollOptionChanged,
    TResult Function(_PhotoRemoved value)? photoRemoved,
    TResult Function(_PollRemoved value)? pollRemoved,
    TResult Function(_CreatedPost value)? createdPost,
    required TResult orElse(),
  }) {
    if (pollOptionChanged != null) {
      return pollOptionChanged(this);
    }
    return orElse();
  }
}

abstract class _PollOptionChanged implements ForumFormEvent {
  const factory _PollOptionChanged(int index, String optionStr) =
      _$_PollOptionChanged;

  int get index => throw _privateConstructorUsedError;
  String get optionStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$PollOptionChangedCopyWith<_PollOptionChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PhotoRemovedCopyWith<$Res> {
  factory _$PhotoRemovedCopyWith(
          _PhotoRemoved value, $Res Function(_PhotoRemoved) then) =
      __$PhotoRemovedCopyWithImpl<$Res>;
}

/// @nodoc
class __$PhotoRemovedCopyWithImpl<$Res>
    extends _$ForumFormEventCopyWithImpl<$Res>
    implements _$PhotoRemovedCopyWith<$Res> {
  __$PhotoRemovedCopyWithImpl(
      _PhotoRemoved _value, $Res Function(_PhotoRemoved) _then)
      : super(_value, (v) => _then(v as _PhotoRemoved));

  @override
  _PhotoRemoved get _value => super._value as _PhotoRemoved;
}

/// @nodoc

class _$_PhotoRemoved with DiagnosticableTreeMixin implements _PhotoRemoved {
  const _$_PhotoRemoved();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ForumFormEvent.photoRemoved()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'ForumFormEvent.photoRemoved'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _PhotoRemoved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String titleStr) titleChanged,
    required TResult Function(String tagStr) tagChanged,
    required TResult Function(String bodyStr) bodyChanged,
    required TResult Function() anonStateChanged,
    required TResult Function(File photo, String forumId) photoAdded,
    required TResult Function() pollAdded,
    required TResult Function(int numOptions) pollNumOptionsChanged,
    required TResult Function(int index, String optionStr) pollOptionChanged,
    required TResult Function() photoRemoved,
    required TResult Function() pollRemoved,
    required TResult Function() createdPost,
  }) {
    return photoRemoved();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String titleStr)? titleChanged,
    TResult Function(String tagStr)? tagChanged,
    TResult Function(String bodyStr)? bodyChanged,
    TResult Function()? anonStateChanged,
    TResult Function(File photo, String forumId)? photoAdded,
    TResult Function()? pollAdded,
    TResult Function(int numOptions)? pollNumOptionsChanged,
    TResult Function(int index, String optionStr)? pollOptionChanged,
    TResult Function()? photoRemoved,
    TResult Function()? pollRemoved,
    TResult Function()? createdPost,
    required TResult orElse(),
  }) {
    if (photoRemoved != null) {
      return photoRemoved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_TagChanged value) tagChanged,
    required TResult Function(_BodyChanged value) bodyChanged,
    required TResult Function(_AnonStateChanged value) anonStateChanged,
    required TResult Function(_PhotoAdded value) photoAdded,
    required TResult Function(_PollAdded value) pollAdded,
    required TResult Function(_PollNumOptionsChanged value)
        pollNumOptionsChanged,
    required TResult Function(_PollOptionChanged value) pollOptionChanged,
    required TResult Function(_PhotoRemoved value) photoRemoved,
    required TResult Function(_PollRemoved value) pollRemoved,
    required TResult Function(_CreatedPost value) createdPost,
  }) {
    return photoRemoved(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_TagChanged value)? tagChanged,
    TResult Function(_BodyChanged value)? bodyChanged,
    TResult Function(_AnonStateChanged value)? anonStateChanged,
    TResult Function(_PhotoAdded value)? photoAdded,
    TResult Function(_PollAdded value)? pollAdded,
    TResult Function(_PollNumOptionsChanged value)? pollNumOptionsChanged,
    TResult Function(_PollOptionChanged value)? pollOptionChanged,
    TResult Function(_PhotoRemoved value)? photoRemoved,
    TResult Function(_PollRemoved value)? pollRemoved,
    TResult Function(_CreatedPost value)? createdPost,
    required TResult orElse(),
  }) {
    if (photoRemoved != null) {
      return photoRemoved(this);
    }
    return orElse();
  }
}

abstract class _PhotoRemoved implements ForumFormEvent {
  const factory _PhotoRemoved() = _$_PhotoRemoved;
}

/// @nodoc
abstract class _$PollRemovedCopyWith<$Res> {
  factory _$PollRemovedCopyWith(
          _PollRemoved value, $Res Function(_PollRemoved) then) =
      __$PollRemovedCopyWithImpl<$Res>;
}

/// @nodoc
class __$PollRemovedCopyWithImpl<$Res>
    extends _$ForumFormEventCopyWithImpl<$Res>
    implements _$PollRemovedCopyWith<$Res> {
  __$PollRemovedCopyWithImpl(
      _PollRemoved _value, $Res Function(_PollRemoved) _then)
      : super(_value, (v) => _then(v as _PollRemoved));

  @override
  _PollRemoved get _value => super._value as _PollRemoved;
}

/// @nodoc

class _$_PollRemoved with DiagnosticableTreeMixin implements _PollRemoved {
  const _$_PollRemoved();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ForumFormEvent.pollRemoved()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'ForumFormEvent.pollRemoved'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _PollRemoved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String titleStr) titleChanged,
    required TResult Function(String tagStr) tagChanged,
    required TResult Function(String bodyStr) bodyChanged,
    required TResult Function() anonStateChanged,
    required TResult Function(File photo, String forumId) photoAdded,
    required TResult Function() pollAdded,
    required TResult Function(int numOptions) pollNumOptionsChanged,
    required TResult Function(int index, String optionStr) pollOptionChanged,
    required TResult Function() photoRemoved,
    required TResult Function() pollRemoved,
    required TResult Function() createdPost,
  }) {
    return pollRemoved();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String titleStr)? titleChanged,
    TResult Function(String tagStr)? tagChanged,
    TResult Function(String bodyStr)? bodyChanged,
    TResult Function()? anonStateChanged,
    TResult Function(File photo, String forumId)? photoAdded,
    TResult Function()? pollAdded,
    TResult Function(int numOptions)? pollNumOptionsChanged,
    TResult Function(int index, String optionStr)? pollOptionChanged,
    TResult Function()? photoRemoved,
    TResult Function()? pollRemoved,
    TResult Function()? createdPost,
    required TResult orElse(),
  }) {
    if (pollRemoved != null) {
      return pollRemoved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_TagChanged value) tagChanged,
    required TResult Function(_BodyChanged value) bodyChanged,
    required TResult Function(_AnonStateChanged value) anonStateChanged,
    required TResult Function(_PhotoAdded value) photoAdded,
    required TResult Function(_PollAdded value) pollAdded,
    required TResult Function(_PollNumOptionsChanged value)
        pollNumOptionsChanged,
    required TResult Function(_PollOptionChanged value) pollOptionChanged,
    required TResult Function(_PhotoRemoved value) photoRemoved,
    required TResult Function(_PollRemoved value) pollRemoved,
    required TResult Function(_CreatedPost value) createdPost,
  }) {
    return pollRemoved(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_TagChanged value)? tagChanged,
    TResult Function(_BodyChanged value)? bodyChanged,
    TResult Function(_AnonStateChanged value)? anonStateChanged,
    TResult Function(_PhotoAdded value)? photoAdded,
    TResult Function(_PollAdded value)? pollAdded,
    TResult Function(_PollNumOptionsChanged value)? pollNumOptionsChanged,
    TResult Function(_PollOptionChanged value)? pollOptionChanged,
    TResult Function(_PhotoRemoved value)? photoRemoved,
    TResult Function(_PollRemoved value)? pollRemoved,
    TResult Function(_CreatedPost value)? createdPost,
    required TResult orElse(),
  }) {
    if (pollRemoved != null) {
      return pollRemoved(this);
    }
    return orElse();
  }
}

abstract class _PollRemoved implements ForumFormEvent {
  const factory _PollRemoved() = _$_PollRemoved;
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
    required TResult Function() anonStateChanged,
    required TResult Function(File photo, String forumId) photoAdded,
    required TResult Function() pollAdded,
    required TResult Function(int numOptions) pollNumOptionsChanged,
    required TResult Function(int index, String optionStr) pollOptionChanged,
    required TResult Function() photoRemoved,
    required TResult Function() pollRemoved,
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
    TResult Function()? anonStateChanged,
    TResult Function(File photo, String forumId)? photoAdded,
    TResult Function()? pollAdded,
    TResult Function(int numOptions)? pollNumOptionsChanged,
    TResult Function(int index, String optionStr)? pollOptionChanged,
    TResult Function()? photoRemoved,
    TResult Function()? pollRemoved,
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
    required TResult Function(_AnonStateChanged value) anonStateChanged,
    required TResult Function(_PhotoAdded value) photoAdded,
    required TResult Function(_PollAdded value) pollAdded,
    required TResult Function(_PollNumOptionsChanged value)
        pollNumOptionsChanged,
    required TResult Function(_PollOptionChanged value) pollOptionChanged,
    required TResult Function(_PhotoRemoved value) photoRemoved,
    required TResult Function(_PollRemoved value) pollRemoved,
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
    TResult Function(_AnonStateChanged value)? anonStateChanged,
    TResult Function(_PhotoAdded value)? photoAdded,
    TResult Function(_PollAdded value)? pollAdded,
    TResult Function(_PollNumOptionsChanged value)? pollNumOptionsChanged,
    TResult Function(_PollOptionChanged value)? pollOptionChanged,
    TResult Function(_PhotoRemoved value)? photoRemoved,
    TResult Function(_PollRemoved value)? pollRemoved,
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
      {required String forumId,
      required ForumPost forumPost,
      required Either<DataFailure, String> photoUrl,
      required Poll poll,
      required Option<Either<DataFailure, Unit>>
          createPollFailureOrSuccessOption,
      required Option<Either<DataFailure, Unit>> createFailureOrSuccessOption,
      required bool isLoading}) {
    return _ForumFormState(
      forumId: forumId,
      forumPost: forumPost,
      photoUrl: photoUrl,
      poll: poll,
      createPollFailureOrSuccessOption: createPollFailureOrSuccessOption,
      createFailureOrSuccessOption: createFailureOrSuccessOption,
      isLoading: isLoading,
    );
  }
}

/// @nodoc
const $ForumFormState = _$ForumFormStateTearOff();

/// @nodoc
mixin _$ForumFormState {
  String get forumId => throw _privateConstructorUsedError;
  ForumPost get forumPost => throw _privateConstructorUsedError;
  Either<DataFailure, String> get photoUrl =>
      throw _privateConstructorUsedError;
  Poll get poll => throw _privateConstructorUsedError;
  Option<Either<DataFailure, Unit>> get createPollFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  Option<Either<DataFailure, Unit>> get createFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

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
      {String forumId,
      ForumPost forumPost,
      Either<DataFailure, String> photoUrl,
      Poll poll,
      Option<Either<DataFailure, Unit>> createPollFailureOrSuccessOption,
      Option<Either<DataFailure, Unit>> createFailureOrSuccessOption,
      bool isLoading});

  $ForumPostCopyWith<$Res> get forumPost;
  $PollCopyWith<$Res> get poll;
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
    Object? forumId = freezed,
    Object? forumPost = freezed,
    Object? photoUrl = freezed,
    Object? poll = freezed,
    Object? createPollFailureOrSuccessOption = freezed,
    Object? createFailureOrSuccessOption = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      forumId: forumId == freezed
          ? _value.forumId
          : forumId // ignore: cast_nullable_to_non_nullable
              as String,
      forumPost: forumPost == freezed
          ? _value.forumPost
          : forumPost // ignore: cast_nullable_to_non_nullable
              as ForumPost,
      photoUrl: photoUrl == freezed
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as Either<DataFailure, String>,
      poll: poll == freezed
          ? _value.poll
          : poll // ignore: cast_nullable_to_non_nullable
              as Poll,
      createPollFailureOrSuccessOption: createPollFailureOrSuccessOption ==
              freezed
          ? _value.createPollFailureOrSuccessOption
          : createPollFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<DataFailure, Unit>>,
      createFailureOrSuccessOption: createFailureOrSuccessOption == freezed
          ? _value.createFailureOrSuccessOption
          : createFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<DataFailure, Unit>>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $ForumPostCopyWith<$Res> get forumPost {
    return $ForumPostCopyWith<$Res>(_value.forumPost, (value) {
      return _then(_value.copyWith(forumPost: value));
    });
  }

  @override
  $PollCopyWith<$Res> get poll {
    return $PollCopyWith<$Res>(_value.poll, (value) {
      return _then(_value.copyWith(poll: value));
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
      {String forumId,
      ForumPost forumPost,
      Either<DataFailure, String> photoUrl,
      Poll poll,
      Option<Either<DataFailure, Unit>> createPollFailureOrSuccessOption,
      Option<Either<DataFailure, Unit>> createFailureOrSuccessOption,
      bool isLoading});

  @override
  $ForumPostCopyWith<$Res> get forumPost;
  @override
  $PollCopyWith<$Res> get poll;
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
    Object? forumId = freezed,
    Object? forumPost = freezed,
    Object? photoUrl = freezed,
    Object? poll = freezed,
    Object? createPollFailureOrSuccessOption = freezed,
    Object? createFailureOrSuccessOption = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_ForumFormState(
      forumId: forumId == freezed
          ? _value.forumId
          : forumId // ignore: cast_nullable_to_non_nullable
              as String,
      forumPost: forumPost == freezed
          ? _value.forumPost
          : forumPost // ignore: cast_nullable_to_non_nullable
              as ForumPost,
      photoUrl: photoUrl == freezed
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as Either<DataFailure, String>,
      poll: poll == freezed
          ? _value.poll
          : poll // ignore: cast_nullable_to_non_nullable
              as Poll,
      createPollFailureOrSuccessOption: createPollFailureOrSuccessOption ==
              freezed
          ? _value.createPollFailureOrSuccessOption
          : createPollFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<DataFailure, Unit>>,
      createFailureOrSuccessOption: createFailureOrSuccessOption == freezed
          ? _value.createFailureOrSuccessOption
          : createFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<DataFailure, Unit>>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ForumFormState
    with DiagnosticableTreeMixin
    implements _ForumFormState {
  const _$_ForumFormState(
      {required this.forumId,
      required this.forumPost,
      required this.photoUrl,
      required this.poll,
      required this.createPollFailureOrSuccessOption,
      required this.createFailureOrSuccessOption,
      required this.isLoading});

  @override
  final String forumId;
  @override
  final ForumPost forumPost;
  @override
  final Either<DataFailure, String> photoUrl;
  @override
  final Poll poll;
  @override
  final Option<Either<DataFailure, Unit>> createPollFailureOrSuccessOption;
  @override
  final Option<Either<DataFailure, Unit>> createFailureOrSuccessOption;
  @override
  final bool isLoading;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ForumFormState(forumId: $forumId, forumPost: $forumPost, photoUrl: $photoUrl, poll: $poll, createPollFailureOrSuccessOption: $createPollFailureOrSuccessOption, createFailureOrSuccessOption: $createFailureOrSuccessOption, isLoading: $isLoading)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ForumFormState'))
      ..add(DiagnosticsProperty('forumId', forumId))
      ..add(DiagnosticsProperty('forumPost', forumPost))
      ..add(DiagnosticsProperty('photoUrl', photoUrl))
      ..add(DiagnosticsProperty('poll', poll))
      ..add(DiagnosticsProperty(
          'createPollFailureOrSuccessOption', createPollFailureOrSuccessOption))
      ..add(DiagnosticsProperty(
          'createFailureOrSuccessOption', createFailureOrSuccessOption))
      ..add(DiagnosticsProperty('isLoading', isLoading));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ForumFormState &&
            (identical(other.forumId, forumId) ||
                const DeepCollectionEquality()
                    .equals(other.forumId, forumId)) &&
            (identical(other.forumPost, forumPost) ||
                const DeepCollectionEquality()
                    .equals(other.forumPost, forumPost)) &&
            (identical(other.photoUrl, photoUrl) ||
                const DeepCollectionEquality()
                    .equals(other.photoUrl, photoUrl)) &&
            (identical(other.poll, poll) ||
                const DeepCollectionEquality().equals(other.poll, poll)) &&
            (identical(other.createPollFailureOrSuccessOption,
                    createPollFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.createPollFailureOrSuccessOption,
                    createPollFailureOrSuccessOption)) &&
            (identical(other.createFailureOrSuccessOption,
                    createFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.createFailureOrSuccessOption,
                    createFailureOrSuccessOption)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(forumId) ^
      const DeepCollectionEquality().hash(forumPost) ^
      const DeepCollectionEquality().hash(photoUrl) ^
      const DeepCollectionEquality().hash(poll) ^
      const DeepCollectionEquality().hash(createPollFailureOrSuccessOption) ^
      const DeepCollectionEquality().hash(createFailureOrSuccessOption) ^
      const DeepCollectionEquality().hash(isLoading);

  @JsonKey(ignore: true)
  @override
  _$ForumFormStateCopyWith<_ForumFormState> get copyWith =>
      __$ForumFormStateCopyWithImpl<_ForumFormState>(this, _$identity);
}

abstract class _ForumFormState implements ForumFormState {
  const factory _ForumFormState(
      {required String forumId,
      required ForumPost forumPost,
      required Either<DataFailure, String> photoUrl,
      required Poll poll,
      required Option<Either<DataFailure, Unit>>
          createPollFailureOrSuccessOption,
      required Option<Either<DataFailure, Unit>> createFailureOrSuccessOption,
      required bool isLoading}) = _$_ForumFormState;

  @override
  String get forumId => throw _privateConstructorUsedError;
  @override
  ForumPost get forumPost => throw _privateConstructorUsedError;
  @override
  Either<DataFailure, String> get photoUrl =>
      throw _privateConstructorUsedError;
  @override
  Poll get poll => throw _privateConstructorUsedError;
  @override
  Option<Either<DataFailure, Unit>> get createPollFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  Option<Either<DataFailure, Unit>> get createFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ForumFormStateCopyWith<_ForumFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

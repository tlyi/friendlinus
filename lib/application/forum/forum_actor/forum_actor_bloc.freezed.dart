// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'forum_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ForumActorEventTearOff {
  const _$ForumActorEventTearOff();

  _Started started() {
    return const _Started();
  }

  _Liked liked(String forumId) {
    return _Liked(
      forumId,
    );
  }

  _Unliked unliked(String forumId) {
    return _Unliked(
      forumId,
    );
  }

  _Voted voted(String forumId, int index) {
    return _Voted(
      forumId,
      index,
    );
  }

  _CommentChanged commentChanged(String commentStr) {
    return _CommentChanged(
      commentStr,
    );
  }

  _AnonStateChanged anonStateChanged() {
    return const _AnonStateChanged();
  }

  _CommentCreated commentCreated(String forumId) {
    return _CommentCreated(
      forumId,
    );
  }

  _CommentLiked commentLiked(String forumId, String commentId) {
    return _CommentLiked(
      forumId,
      commentId,
    );
  }

  _CommentUnliked commentUnliked(String forumId, String commentId) {
    return _CommentUnliked(
      forumId,
      commentId,
    );
  }

  _ForumDeleted forumDeleted(String forumId, bool hasPhoto) {
    return _ForumDeleted(
      forumId,
      hasPhoto,
    );
  }
}

/// @nodoc
const $ForumActorEvent = _$ForumActorEventTearOff();

/// @nodoc
mixin _$ForumActorEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String forumId) liked,
    required TResult Function(String forumId) unliked,
    required TResult Function(String forumId, int index) voted,
    required TResult Function(String commentStr) commentChanged,
    required TResult Function() anonStateChanged,
    required TResult Function(String forumId) commentCreated,
    required TResult Function(String forumId, String commentId) commentLiked,
    required TResult Function(String forumId, String commentId) commentUnliked,
    required TResult Function(String forumId, bool hasPhoto) forumDeleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String forumId)? liked,
    TResult Function(String forumId)? unliked,
    TResult Function(String forumId, int index)? voted,
    TResult Function(String commentStr)? commentChanged,
    TResult Function()? anonStateChanged,
    TResult Function(String forumId)? commentCreated,
    TResult Function(String forumId, String commentId)? commentLiked,
    TResult Function(String forumId, String commentId)? commentUnliked,
    TResult Function(String forumId, bool hasPhoto)? forumDeleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Liked value) liked,
    required TResult Function(_Unliked value) unliked,
    required TResult Function(_Voted value) voted,
    required TResult Function(_CommentChanged value) commentChanged,
    required TResult Function(_AnonStateChanged value) anonStateChanged,
    required TResult Function(_CommentCreated value) commentCreated,
    required TResult Function(_CommentLiked value) commentLiked,
    required TResult Function(_CommentUnliked value) commentUnliked,
    required TResult Function(_ForumDeleted value) forumDeleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Liked value)? liked,
    TResult Function(_Unliked value)? unliked,
    TResult Function(_Voted value)? voted,
    TResult Function(_CommentChanged value)? commentChanged,
    TResult Function(_AnonStateChanged value)? anonStateChanged,
    TResult Function(_CommentCreated value)? commentCreated,
    TResult Function(_CommentLiked value)? commentLiked,
    TResult Function(_CommentUnliked value)? commentUnliked,
    TResult Function(_ForumDeleted value)? forumDeleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForumActorEventCopyWith<$Res> {
  factory $ForumActorEventCopyWith(
          ForumActorEvent value, $Res Function(ForumActorEvent) then) =
      _$ForumActorEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ForumActorEventCopyWithImpl<$Res>
    implements $ForumActorEventCopyWith<$Res> {
  _$ForumActorEventCopyWithImpl(this._value, this._then);

  final ForumActorEvent _value;
  // ignore: unused_field
  final $Res Function(ForumActorEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$ForumActorEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'ForumActorEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String forumId) liked,
    required TResult Function(String forumId) unliked,
    required TResult Function(String forumId, int index) voted,
    required TResult Function(String commentStr) commentChanged,
    required TResult Function() anonStateChanged,
    required TResult Function(String forumId) commentCreated,
    required TResult Function(String forumId, String commentId) commentLiked,
    required TResult Function(String forumId, String commentId) commentUnliked,
    required TResult Function(String forumId, bool hasPhoto) forumDeleted,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String forumId)? liked,
    TResult Function(String forumId)? unliked,
    TResult Function(String forumId, int index)? voted,
    TResult Function(String commentStr)? commentChanged,
    TResult Function()? anonStateChanged,
    TResult Function(String forumId)? commentCreated,
    TResult Function(String forumId, String commentId)? commentLiked,
    TResult Function(String forumId, String commentId)? commentUnliked,
    TResult Function(String forumId, bool hasPhoto)? forumDeleted,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Liked value) liked,
    required TResult Function(_Unliked value) unliked,
    required TResult Function(_Voted value) voted,
    required TResult Function(_CommentChanged value) commentChanged,
    required TResult Function(_AnonStateChanged value) anonStateChanged,
    required TResult Function(_CommentCreated value) commentCreated,
    required TResult Function(_CommentLiked value) commentLiked,
    required TResult Function(_CommentUnliked value) commentUnliked,
    required TResult Function(_ForumDeleted value) forumDeleted,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Liked value)? liked,
    TResult Function(_Unliked value)? unliked,
    TResult Function(_Voted value)? voted,
    TResult Function(_CommentChanged value)? commentChanged,
    TResult Function(_AnonStateChanged value)? anonStateChanged,
    TResult Function(_CommentCreated value)? commentCreated,
    TResult Function(_CommentLiked value)? commentLiked,
    TResult Function(_CommentUnliked value)? commentUnliked,
    TResult Function(_ForumDeleted value)? forumDeleted,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ForumActorEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$LikedCopyWith<$Res> {
  factory _$LikedCopyWith(_Liked value, $Res Function(_Liked) then) =
      __$LikedCopyWithImpl<$Res>;
  $Res call({String forumId});
}

/// @nodoc
class __$LikedCopyWithImpl<$Res> extends _$ForumActorEventCopyWithImpl<$Res>
    implements _$LikedCopyWith<$Res> {
  __$LikedCopyWithImpl(_Liked _value, $Res Function(_Liked) _then)
      : super(_value, (v) => _then(v as _Liked));

  @override
  _Liked get _value => super._value as _Liked;

  @override
  $Res call({
    Object? forumId = freezed,
  }) {
    return _then(_Liked(
      forumId == freezed
          ? _value.forumId
          : forumId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Liked implements _Liked {
  const _$_Liked(this.forumId);

  @override
  final String forumId;

  @override
  String toString() {
    return 'ForumActorEvent.liked(forumId: $forumId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Liked &&
            (identical(other.forumId, forumId) ||
                const DeepCollectionEquality().equals(other.forumId, forumId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(forumId);

  @JsonKey(ignore: true)
  @override
  _$LikedCopyWith<_Liked> get copyWith =>
      __$LikedCopyWithImpl<_Liked>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String forumId) liked,
    required TResult Function(String forumId) unliked,
    required TResult Function(String forumId, int index) voted,
    required TResult Function(String commentStr) commentChanged,
    required TResult Function() anonStateChanged,
    required TResult Function(String forumId) commentCreated,
    required TResult Function(String forumId, String commentId) commentLiked,
    required TResult Function(String forumId, String commentId) commentUnliked,
    required TResult Function(String forumId, bool hasPhoto) forumDeleted,
  }) {
    return liked(forumId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String forumId)? liked,
    TResult Function(String forumId)? unliked,
    TResult Function(String forumId, int index)? voted,
    TResult Function(String commentStr)? commentChanged,
    TResult Function()? anonStateChanged,
    TResult Function(String forumId)? commentCreated,
    TResult Function(String forumId, String commentId)? commentLiked,
    TResult Function(String forumId, String commentId)? commentUnliked,
    TResult Function(String forumId, bool hasPhoto)? forumDeleted,
    required TResult orElse(),
  }) {
    if (liked != null) {
      return liked(forumId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Liked value) liked,
    required TResult Function(_Unliked value) unliked,
    required TResult Function(_Voted value) voted,
    required TResult Function(_CommentChanged value) commentChanged,
    required TResult Function(_AnonStateChanged value) anonStateChanged,
    required TResult Function(_CommentCreated value) commentCreated,
    required TResult Function(_CommentLiked value) commentLiked,
    required TResult Function(_CommentUnliked value) commentUnliked,
    required TResult Function(_ForumDeleted value) forumDeleted,
  }) {
    return liked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Liked value)? liked,
    TResult Function(_Unliked value)? unliked,
    TResult Function(_Voted value)? voted,
    TResult Function(_CommentChanged value)? commentChanged,
    TResult Function(_AnonStateChanged value)? anonStateChanged,
    TResult Function(_CommentCreated value)? commentCreated,
    TResult Function(_CommentLiked value)? commentLiked,
    TResult Function(_CommentUnliked value)? commentUnliked,
    TResult Function(_ForumDeleted value)? forumDeleted,
    required TResult orElse(),
  }) {
    if (liked != null) {
      return liked(this);
    }
    return orElse();
  }
}

abstract class _Liked implements ForumActorEvent {
  const factory _Liked(String forumId) = _$_Liked;

  String get forumId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LikedCopyWith<_Liked> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UnlikedCopyWith<$Res> {
  factory _$UnlikedCopyWith(_Unliked value, $Res Function(_Unliked) then) =
      __$UnlikedCopyWithImpl<$Res>;
  $Res call({String forumId});
}

/// @nodoc
class __$UnlikedCopyWithImpl<$Res> extends _$ForumActorEventCopyWithImpl<$Res>
    implements _$UnlikedCopyWith<$Res> {
  __$UnlikedCopyWithImpl(_Unliked _value, $Res Function(_Unliked) _then)
      : super(_value, (v) => _then(v as _Unliked));

  @override
  _Unliked get _value => super._value as _Unliked;

  @override
  $Res call({
    Object? forumId = freezed,
  }) {
    return _then(_Unliked(
      forumId == freezed
          ? _value.forumId
          : forumId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Unliked implements _Unliked {
  const _$_Unliked(this.forumId);

  @override
  final String forumId;

  @override
  String toString() {
    return 'ForumActorEvent.unliked(forumId: $forumId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Unliked &&
            (identical(other.forumId, forumId) ||
                const DeepCollectionEquality().equals(other.forumId, forumId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(forumId);

  @JsonKey(ignore: true)
  @override
  _$UnlikedCopyWith<_Unliked> get copyWith =>
      __$UnlikedCopyWithImpl<_Unliked>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String forumId) liked,
    required TResult Function(String forumId) unliked,
    required TResult Function(String forumId, int index) voted,
    required TResult Function(String commentStr) commentChanged,
    required TResult Function() anonStateChanged,
    required TResult Function(String forumId) commentCreated,
    required TResult Function(String forumId, String commentId) commentLiked,
    required TResult Function(String forumId, String commentId) commentUnliked,
    required TResult Function(String forumId, bool hasPhoto) forumDeleted,
  }) {
    return unliked(forumId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String forumId)? liked,
    TResult Function(String forumId)? unliked,
    TResult Function(String forumId, int index)? voted,
    TResult Function(String commentStr)? commentChanged,
    TResult Function()? anonStateChanged,
    TResult Function(String forumId)? commentCreated,
    TResult Function(String forumId, String commentId)? commentLiked,
    TResult Function(String forumId, String commentId)? commentUnliked,
    TResult Function(String forumId, bool hasPhoto)? forumDeleted,
    required TResult orElse(),
  }) {
    if (unliked != null) {
      return unliked(forumId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Liked value) liked,
    required TResult Function(_Unliked value) unliked,
    required TResult Function(_Voted value) voted,
    required TResult Function(_CommentChanged value) commentChanged,
    required TResult Function(_AnonStateChanged value) anonStateChanged,
    required TResult Function(_CommentCreated value) commentCreated,
    required TResult Function(_CommentLiked value) commentLiked,
    required TResult Function(_CommentUnliked value) commentUnliked,
    required TResult Function(_ForumDeleted value) forumDeleted,
  }) {
    return unliked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Liked value)? liked,
    TResult Function(_Unliked value)? unliked,
    TResult Function(_Voted value)? voted,
    TResult Function(_CommentChanged value)? commentChanged,
    TResult Function(_AnonStateChanged value)? anonStateChanged,
    TResult Function(_CommentCreated value)? commentCreated,
    TResult Function(_CommentLiked value)? commentLiked,
    TResult Function(_CommentUnliked value)? commentUnliked,
    TResult Function(_ForumDeleted value)? forumDeleted,
    required TResult orElse(),
  }) {
    if (unliked != null) {
      return unliked(this);
    }
    return orElse();
  }
}

abstract class _Unliked implements ForumActorEvent {
  const factory _Unliked(String forumId) = _$_Unliked;

  String get forumId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$UnlikedCopyWith<_Unliked> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$VotedCopyWith<$Res> {
  factory _$VotedCopyWith(_Voted value, $Res Function(_Voted) then) =
      __$VotedCopyWithImpl<$Res>;
  $Res call({String forumId, int index});
}

/// @nodoc
class __$VotedCopyWithImpl<$Res> extends _$ForumActorEventCopyWithImpl<$Res>
    implements _$VotedCopyWith<$Res> {
  __$VotedCopyWithImpl(_Voted _value, $Res Function(_Voted) _then)
      : super(_value, (v) => _then(v as _Voted));

  @override
  _Voted get _value => super._value as _Voted;

  @override
  $Res call({
    Object? forumId = freezed,
    Object? index = freezed,
  }) {
    return _then(_Voted(
      forumId == freezed
          ? _value.forumId
          : forumId // ignore: cast_nullable_to_non_nullable
              as String,
      index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Voted implements _Voted {
  const _$_Voted(this.forumId, this.index);

  @override
  final String forumId;
  @override
  final int index;

  @override
  String toString() {
    return 'ForumActorEvent.voted(forumId: $forumId, index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Voted &&
            (identical(other.forumId, forumId) ||
                const DeepCollectionEquality()
                    .equals(other.forumId, forumId)) &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(forumId) ^
      const DeepCollectionEquality().hash(index);

  @JsonKey(ignore: true)
  @override
  _$VotedCopyWith<_Voted> get copyWith =>
      __$VotedCopyWithImpl<_Voted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String forumId) liked,
    required TResult Function(String forumId) unliked,
    required TResult Function(String forumId, int index) voted,
    required TResult Function(String commentStr) commentChanged,
    required TResult Function() anonStateChanged,
    required TResult Function(String forumId) commentCreated,
    required TResult Function(String forumId, String commentId) commentLiked,
    required TResult Function(String forumId, String commentId) commentUnliked,
    required TResult Function(String forumId, bool hasPhoto) forumDeleted,
  }) {
    return voted(forumId, index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String forumId)? liked,
    TResult Function(String forumId)? unliked,
    TResult Function(String forumId, int index)? voted,
    TResult Function(String commentStr)? commentChanged,
    TResult Function()? anonStateChanged,
    TResult Function(String forumId)? commentCreated,
    TResult Function(String forumId, String commentId)? commentLiked,
    TResult Function(String forumId, String commentId)? commentUnliked,
    TResult Function(String forumId, bool hasPhoto)? forumDeleted,
    required TResult orElse(),
  }) {
    if (voted != null) {
      return voted(forumId, index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Liked value) liked,
    required TResult Function(_Unliked value) unliked,
    required TResult Function(_Voted value) voted,
    required TResult Function(_CommentChanged value) commentChanged,
    required TResult Function(_AnonStateChanged value) anonStateChanged,
    required TResult Function(_CommentCreated value) commentCreated,
    required TResult Function(_CommentLiked value) commentLiked,
    required TResult Function(_CommentUnliked value) commentUnliked,
    required TResult Function(_ForumDeleted value) forumDeleted,
  }) {
    return voted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Liked value)? liked,
    TResult Function(_Unliked value)? unliked,
    TResult Function(_Voted value)? voted,
    TResult Function(_CommentChanged value)? commentChanged,
    TResult Function(_AnonStateChanged value)? anonStateChanged,
    TResult Function(_CommentCreated value)? commentCreated,
    TResult Function(_CommentLiked value)? commentLiked,
    TResult Function(_CommentUnliked value)? commentUnliked,
    TResult Function(_ForumDeleted value)? forumDeleted,
    required TResult orElse(),
  }) {
    if (voted != null) {
      return voted(this);
    }
    return orElse();
  }
}

abstract class _Voted implements ForumActorEvent {
  const factory _Voted(String forumId, int index) = _$_Voted;

  String get forumId => throw _privateConstructorUsedError;
  int get index => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$VotedCopyWith<_Voted> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CommentChangedCopyWith<$Res> {
  factory _$CommentChangedCopyWith(
          _CommentChanged value, $Res Function(_CommentChanged) then) =
      __$CommentChangedCopyWithImpl<$Res>;
  $Res call({String commentStr});
}

/// @nodoc
class __$CommentChangedCopyWithImpl<$Res>
    extends _$ForumActorEventCopyWithImpl<$Res>
    implements _$CommentChangedCopyWith<$Res> {
  __$CommentChangedCopyWithImpl(
      _CommentChanged _value, $Res Function(_CommentChanged) _then)
      : super(_value, (v) => _then(v as _CommentChanged));

  @override
  _CommentChanged get _value => super._value as _CommentChanged;

  @override
  $Res call({
    Object? commentStr = freezed,
  }) {
    return _then(_CommentChanged(
      commentStr == freezed
          ? _value.commentStr
          : commentStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CommentChanged implements _CommentChanged {
  const _$_CommentChanged(this.commentStr);

  @override
  final String commentStr;

  @override
  String toString() {
    return 'ForumActorEvent.commentChanged(commentStr: $commentStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CommentChanged &&
            (identical(other.commentStr, commentStr) ||
                const DeepCollectionEquality()
                    .equals(other.commentStr, commentStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(commentStr);

  @JsonKey(ignore: true)
  @override
  _$CommentChangedCopyWith<_CommentChanged> get copyWith =>
      __$CommentChangedCopyWithImpl<_CommentChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String forumId) liked,
    required TResult Function(String forumId) unliked,
    required TResult Function(String forumId, int index) voted,
    required TResult Function(String commentStr) commentChanged,
    required TResult Function() anonStateChanged,
    required TResult Function(String forumId) commentCreated,
    required TResult Function(String forumId, String commentId) commentLiked,
    required TResult Function(String forumId, String commentId) commentUnliked,
    required TResult Function(String forumId, bool hasPhoto) forumDeleted,
  }) {
    return commentChanged(commentStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String forumId)? liked,
    TResult Function(String forumId)? unliked,
    TResult Function(String forumId, int index)? voted,
    TResult Function(String commentStr)? commentChanged,
    TResult Function()? anonStateChanged,
    TResult Function(String forumId)? commentCreated,
    TResult Function(String forumId, String commentId)? commentLiked,
    TResult Function(String forumId, String commentId)? commentUnliked,
    TResult Function(String forumId, bool hasPhoto)? forumDeleted,
    required TResult orElse(),
  }) {
    if (commentChanged != null) {
      return commentChanged(commentStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Liked value) liked,
    required TResult Function(_Unliked value) unliked,
    required TResult Function(_Voted value) voted,
    required TResult Function(_CommentChanged value) commentChanged,
    required TResult Function(_AnonStateChanged value) anonStateChanged,
    required TResult Function(_CommentCreated value) commentCreated,
    required TResult Function(_CommentLiked value) commentLiked,
    required TResult Function(_CommentUnliked value) commentUnliked,
    required TResult Function(_ForumDeleted value) forumDeleted,
  }) {
    return commentChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Liked value)? liked,
    TResult Function(_Unliked value)? unliked,
    TResult Function(_Voted value)? voted,
    TResult Function(_CommentChanged value)? commentChanged,
    TResult Function(_AnonStateChanged value)? anonStateChanged,
    TResult Function(_CommentCreated value)? commentCreated,
    TResult Function(_CommentLiked value)? commentLiked,
    TResult Function(_CommentUnliked value)? commentUnliked,
    TResult Function(_ForumDeleted value)? forumDeleted,
    required TResult orElse(),
  }) {
    if (commentChanged != null) {
      return commentChanged(this);
    }
    return orElse();
  }
}

abstract class _CommentChanged implements ForumActorEvent {
  const factory _CommentChanged(String commentStr) = _$_CommentChanged;

  String get commentStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$CommentChangedCopyWith<_CommentChanged> get copyWith =>
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
    extends _$ForumActorEventCopyWithImpl<$Res>
    implements _$AnonStateChangedCopyWith<$Res> {
  __$AnonStateChangedCopyWithImpl(
      _AnonStateChanged _value, $Res Function(_AnonStateChanged) _then)
      : super(_value, (v) => _then(v as _AnonStateChanged));

  @override
  _AnonStateChanged get _value => super._value as _AnonStateChanged;
}

/// @nodoc

class _$_AnonStateChanged implements _AnonStateChanged {
  const _$_AnonStateChanged();

  @override
  String toString() {
    return 'ForumActorEvent.anonStateChanged()';
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
    required TResult Function() started,
    required TResult Function(String forumId) liked,
    required TResult Function(String forumId) unliked,
    required TResult Function(String forumId, int index) voted,
    required TResult Function(String commentStr) commentChanged,
    required TResult Function() anonStateChanged,
    required TResult Function(String forumId) commentCreated,
    required TResult Function(String forumId, String commentId) commentLiked,
    required TResult Function(String forumId, String commentId) commentUnliked,
    required TResult Function(String forumId, bool hasPhoto) forumDeleted,
  }) {
    return anonStateChanged();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String forumId)? liked,
    TResult Function(String forumId)? unliked,
    TResult Function(String forumId, int index)? voted,
    TResult Function(String commentStr)? commentChanged,
    TResult Function()? anonStateChanged,
    TResult Function(String forumId)? commentCreated,
    TResult Function(String forumId, String commentId)? commentLiked,
    TResult Function(String forumId, String commentId)? commentUnliked,
    TResult Function(String forumId, bool hasPhoto)? forumDeleted,
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
    required TResult Function(_Started value) started,
    required TResult Function(_Liked value) liked,
    required TResult Function(_Unliked value) unliked,
    required TResult Function(_Voted value) voted,
    required TResult Function(_CommentChanged value) commentChanged,
    required TResult Function(_AnonStateChanged value) anonStateChanged,
    required TResult Function(_CommentCreated value) commentCreated,
    required TResult Function(_CommentLiked value) commentLiked,
    required TResult Function(_CommentUnliked value) commentUnliked,
    required TResult Function(_ForumDeleted value) forumDeleted,
  }) {
    return anonStateChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Liked value)? liked,
    TResult Function(_Unliked value)? unliked,
    TResult Function(_Voted value)? voted,
    TResult Function(_CommentChanged value)? commentChanged,
    TResult Function(_AnonStateChanged value)? anonStateChanged,
    TResult Function(_CommentCreated value)? commentCreated,
    TResult Function(_CommentLiked value)? commentLiked,
    TResult Function(_CommentUnliked value)? commentUnliked,
    TResult Function(_ForumDeleted value)? forumDeleted,
    required TResult orElse(),
  }) {
    if (anonStateChanged != null) {
      return anonStateChanged(this);
    }
    return orElse();
  }
}

abstract class _AnonStateChanged implements ForumActorEvent {
  const factory _AnonStateChanged() = _$_AnonStateChanged;
}

/// @nodoc
abstract class _$CommentCreatedCopyWith<$Res> {
  factory _$CommentCreatedCopyWith(
          _CommentCreated value, $Res Function(_CommentCreated) then) =
      __$CommentCreatedCopyWithImpl<$Res>;
  $Res call({String forumId});
}

/// @nodoc
class __$CommentCreatedCopyWithImpl<$Res>
    extends _$ForumActorEventCopyWithImpl<$Res>
    implements _$CommentCreatedCopyWith<$Res> {
  __$CommentCreatedCopyWithImpl(
      _CommentCreated _value, $Res Function(_CommentCreated) _then)
      : super(_value, (v) => _then(v as _CommentCreated));

  @override
  _CommentCreated get _value => super._value as _CommentCreated;

  @override
  $Res call({
    Object? forumId = freezed,
  }) {
    return _then(_CommentCreated(
      forumId == freezed
          ? _value.forumId
          : forumId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CommentCreated implements _CommentCreated {
  const _$_CommentCreated(this.forumId);

  @override
  final String forumId;

  @override
  String toString() {
    return 'ForumActorEvent.commentCreated(forumId: $forumId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CommentCreated &&
            (identical(other.forumId, forumId) ||
                const DeepCollectionEquality().equals(other.forumId, forumId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(forumId);

  @JsonKey(ignore: true)
  @override
  _$CommentCreatedCopyWith<_CommentCreated> get copyWith =>
      __$CommentCreatedCopyWithImpl<_CommentCreated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String forumId) liked,
    required TResult Function(String forumId) unliked,
    required TResult Function(String forumId, int index) voted,
    required TResult Function(String commentStr) commentChanged,
    required TResult Function() anonStateChanged,
    required TResult Function(String forumId) commentCreated,
    required TResult Function(String forumId, String commentId) commentLiked,
    required TResult Function(String forumId, String commentId) commentUnliked,
    required TResult Function(String forumId, bool hasPhoto) forumDeleted,
  }) {
    return commentCreated(forumId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String forumId)? liked,
    TResult Function(String forumId)? unliked,
    TResult Function(String forumId, int index)? voted,
    TResult Function(String commentStr)? commentChanged,
    TResult Function()? anonStateChanged,
    TResult Function(String forumId)? commentCreated,
    TResult Function(String forumId, String commentId)? commentLiked,
    TResult Function(String forumId, String commentId)? commentUnliked,
    TResult Function(String forumId, bool hasPhoto)? forumDeleted,
    required TResult orElse(),
  }) {
    if (commentCreated != null) {
      return commentCreated(forumId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Liked value) liked,
    required TResult Function(_Unliked value) unliked,
    required TResult Function(_Voted value) voted,
    required TResult Function(_CommentChanged value) commentChanged,
    required TResult Function(_AnonStateChanged value) anonStateChanged,
    required TResult Function(_CommentCreated value) commentCreated,
    required TResult Function(_CommentLiked value) commentLiked,
    required TResult Function(_CommentUnliked value) commentUnliked,
    required TResult Function(_ForumDeleted value) forumDeleted,
  }) {
    return commentCreated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Liked value)? liked,
    TResult Function(_Unliked value)? unliked,
    TResult Function(_Voted value)? voted,
    TResult Function(_CommentChanged value)? commentChanged,
    TResult Function(_AnonStateChanged value)? anonStateChanged,
    TResult Function(_CommentCreated value)? commentCreated,
    TResult Function(_CommentLiked value)? commentLiked,
    TResult Function(_CommentUnliked value)? commentUnliked,
    TResult Function(_ForumDeleted value)? forumDeleted,
    required TResult orElse(),
  }) {
    if (commentCreated != null) {
      return commentCreated(this);
    }
    return orElse();
  }
}

abstract class _CommentCreated implements ForumActorEvent {
  const factory _CommentCreated(String forumId) = _$_CommentCreated;

  String get forumId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$CommentCreatedCopyWith<_CommentCreated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CommentLikedCopyWith<$Res> {
  factory _$CommentLikedCopyWith(
          _CommentLiked value, $Res Function(_CommentLiked) then) =
      __$CommentLikedCopyWithImpl<$Res>;
  $Res call({String forumId, String commentId});
}

/// @nodoc
class __$CommentLikedCopyWithImpl<$Res>
    extends _$ForumActorEventCopyWithImpl<$Res>
    implements _$CommentLikedCopyWith<$Res> {
  __$CommentLikedCopyWithImpl(
      _CommentLiked _value, $Res Function(_CommentLiked) _then)
      : super(_value, (v) => _then(v as _CommentLiked));

  @override
  _CommentLiked get _value => super._value as _CommentLiked;

  @override
  $Res call({
    Object? forumId = freezed,
    Object? commentId = freezed,
  }) {
    return _then(_CommentLiked(
      forumId == freezed
          ? _value.forumId
          : forumId // ignore: cast_nullable_to_non_nullable
              as String,
      commentId == freezed
          ? _value.commentId
          : commentId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CommentLiked implements _CommentLiked {
  const _$_CommentLiked(this.forumId, this.commentId);

  @override
  final String forumId;
  @override
  final String commentId;

  @override
  String toString() {
    return 'ForumActorEvent.commentLiked(forumId: $forumId, commentId: $commentId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CommentLiked &&
            (identical(other.forumId, forumId) ||
                const DeepCollectionEquality()
                    .equals(other.forumId, forumId)) &&
            (identical(other.commentId, commentId) ||
                const DeepCollectionEquality()
                    .equals(other.commentId, commentId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(forumId) ^
      const DeepCollectionEquality().hash(commentId);

  @JsonKey(ignore: true)
  @override
  _$CommentLikedCopyWith<_CommentLiked> get copyWith =>
      __$CommentLikedCopyWithImpl<_CommentLiked>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String forumId) liked,
    required TResult Function(String forumId) unliked,
    required TResult Function(String forumId, int index) voted,
    required TResult Function(String commentStr) commentChanged,
    required TResult Function() anonStateChanged,
    required TResult Function(String forumId) commentCreated,
    required TResult Function(String forumId, String commentId) commentLiked,
    required TResult Function(String forumId, String commentId) commentUnliked,
    required TResult Function(String forumId, bool hasPhoto) forumDeleted,
  }) {
    return commentLiked(forumId, commentId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String forumId)? liked,
    TResult Function(String forumId)? unliked,
    TResult Function(String forumId, int index)? voted,
    TResult Function(String commentStr)? commentChanged,
    TResult Function()? anonStateChanged,
    TResult Function(String forumId)? commentCreated,
    TResult Function(String forumId, String commentId)? commentLiked,
    TResult Function(String forumId, String commentId)? commentUnliked,
    TResult Function(String forumId, bool hasPhoto)? forumDeleted,
    required TResult orElse(),
  }) {
    if (commentLiked != null) {
      return commentLiked(forumId, commentId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Liked value) liked,
    required TResult Function(_Unliked value) unliked,
    required TResult Function(_Voted value) voted,
    required TResult Function(_CommentChanged value) commentChanged,
    required TResult Function(_AnonStateChanged value) anonStateChanged,
    required TResult Function(_CommentCreated value) commentCreated,
    required TResult Function(_CommentLiked value) commentLiked,
    required TResult Function(_CommentUnliked value) commentUnliked,
    required TResult Function(_ForumDeleted value) forumDeleted,
  }) {
    return commentLiked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Liked value)? liked,
    TResult Function(_Unliked value)? unliked,
    TResult Function(_Voted value)? voted,
    TResult Function(_CommentChanged value)? commentChanged,
    TResult Function(_AnonStateChanged value)? anonStateChanged,
    TResult Function(_CommentCreated value)? commentCreated,
    TResult Function(_CommentLiked value)? commentLiked,
    TResult Function(_CommentUnliked value)? commentUnliked,
    TResult Function(_ForumDeleted value)? forumDeleted,
    required TResult orElse(),
  }) {
    if (commentLiked != null) {
      return commentLiked(this);
    }
    return orElse();
  }
}

abstract class _CommentLiked implements ForumActorEvent {
  const factory _CommentLiked(String forumId, String commentId) =
      _$_CommentLiked;

  String get forumId => throw _privateConstructorUsedError;
  String get commentId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$CommentLikedCopyWith<_CommentLiked> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CommentUnlikedCopyWith<$Res> {
  factory _$CommentUnlikedCopyWith(
          _CommentUnliked value, $Res Function(_CommentUnliked) then) =
      __$CommentUnlikedCopyWithImpl<$Res>;
  $Res call({String forumId, String commentId});
}

/// @nodoc
class __$CommentUnlikedCopyWithImpl<$Res>
    extends _$ForumActorEventCopyWithImpl<$Res>
    implements _$CommentUnlikedCopyWith<$Res> {
  __$CommentUnlikedCopyWithImpl(
      _CommentUnliked _value, $Res Function(_CommentUnliked) _then)
      : super(_value, (v) => _then(v as _CommentUnliked));

  @override
  _CommentUnliked get _value => super._value as _CommentUnliked;

  @override
  $Res call({
    Object? forumId = freezed,
    Object? commentId = freezed,
  }) {
    return _then(_CommentUnliked(
      forumId == freezed
          ? _value.forumId
          : forumId // ignore: cast_nullable_to_non_nullable
              as String,
      commentId == freezed
          ? _value.commentId
          : commentId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CommentUnliked implements _CommentUnliked {
  const _$_CommentUnliked(this.forumId, this.commentId);

  @override
  final String forumId;
  @override
  final String commentId;

  @override
  String toString() {
    return 'ForumActorEvent.commentUnliked(forumId: $forumId, commentId: $commentId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CommentUnliked &&
            (identical(other.forumId, forumId) ||
                const DeepCollectionEquality()
                    .equals(other.forumId, forumId)) &&
            (identical(other.commentId, commentId) ||
                const DeepCollectionEquality()
                    .equals(other.commentId, commentId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(forumId) ^
      const DeepCollectionEquality().hash(commentId);

  @JsonKey(ignore: true)
  @override
  _$CommentUnlikedCopyWith<_CommentUnliked> get copyWith =>
      __$CommentUnlikedCopyWithImpl<_CommentUnliked>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String forumId) liked,
    required TResult Function(String forumId) unliked,
    required TResult Function(String forumId, int index) voted,
    required TResult Function(String commentStr) commentChanged,
    required TResult Function() anonStateChanged,
    required TResult Function(String forumId) commentCreated,
    required TResult Function(String forumId, String commentId) commentLiked,
    required TResult Function(String forumId, String commentId) commentUnliked,
    required TResult Function(String forumId, bool hasPhoto) forumDeleted,
  }) {
    return commentUnliked(forumId, commentId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String forumId)? liked,
    TResult Function(String forumId)? unliked,
    TResult Function(String forumId, int index)? voted,
    TResult Function(String commentStr)? commentChanged,
    TResult Function()? anonStateChanged,
    TResult Function(String forumId)? commentCreated,
    TResult Function(String forumId, String commentId)? commentLiked,
    TResult Function(String forumId, String commentId)? commentUnliked,
    TResult Function(String forumId, bool hasPhoto)? forumDeleted,
    required TResult orElse(),
  }) {
    if (commentUnliked != null) {
      return commentUnliked(forumId, commentId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Liked value) liked,
    required TResult Function(_Unliked value) unliked,
    required TResult Function(_Voted value) voted,
    required TResult Function(_CommentChanged value) commentChanged,
    required TResult Function(_AnonStateChanged value) anonStateChanged,
    required TResult Function(_CommentCreated value) commentCreated,
    required TResult Function(_CommentLiked value) commentLiked,
    required TResult Function(_CommentUnliked value) commentUnliked,
    required TResult Function(_ForumDeleted value) forumDeleted,
  }) {
    return commentUnliked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Liked value)? liked,
    TResult Function(_Unliked value)? unliked,
    TResult Function(_Voted value)? voted,
    TResult Function(_CommentChanged value)? commentChanged,
    TResult Function(_AnonStateChanged value)? anonStateChanged,
    TResult Function(_CommentCreated value)? commentCreated,
    TResult Function(_CommentLiked value)? commentLiked,
    TResult Function(_CommentUnliked value)? commentUnliked,
    TResult Function(_ForumDeleted value)? forumDeleted,
    required TResult orElse(),
  }) {
    if (commentUnliked != null) {
      return commentUnliked(this);
    }
    return orElse();
  }
}

abstract class _CommentUnliked implements ForumActorEvent {
  const factory _CommentUnliked(String forumId, String commentId) =
      _$_CommentUnliked;

  String get forumId => throw _privateConstructorUsedError;
  String get commentId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$CommentUnlikedCopyWith<_CommentUnliked> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ForumDeletedCopyWith<$Res> {
  factory _$ForumDeletedCopyWith(
          _ForumDeleted value, $Res Function(_ForumDeleted) then) =
      __$ForumDeletedCopyWithImpl<$Res>;
  $Res call({String forumId, bool hasPhoto});
}

/// @nodoc
class __$ForumDeletedCopyWithImpl<$Res>
    extends _$ForumActorEventCopyWithImpl<$Res>
    implements _$ForumDeletedCopyWith<$Res> {
  __$ForumDeletedCopyWithImpl(
      _ForumDeleted _value, $Res Function(_ForumDeleted) _then)
      : super(_value, (v) => _then(v as _ForumDeleted));

  @override
  _ForumDeleted get _value => super._value as _ForumDeleted;

  @override
  $Res call({
    Object? forumId = freezed,
    Object? hasPhoto = freezed,
  }) {
    return _then(_ForumDeleted(
      forumId == freezed
          ? _value.forumId
          : forumId // ignore: cast_nullable_to_non_nullable
              as String,
      hasPhoto == freezed
          ? _value.hasPhoto
          : hasPhoto // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ForumDeleted implements _ForumDeleted {
  const _$_ForumDeleted(this.forumId, this.hasPhoto);

  @override
  final String forumId;
  @override
  final bool hasPhoto;

  @override
  String toString() {
    return 'ForumActorEvent.forumDeleted(forumId: $forumId, hasPhoto: $hasPhoto)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ForumDeleted &&
            (identical(other.forumId, forumId) ||
                const DeepCollectionEquality()
                    .equals(other.forumId, forumId)) &&
            (identical(other.hasPhoto, hasPhoto) ||
                const DeepCollectionEquality()
                    .equals(other.hasPhoto, hasPhoto)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(forumId) ^
      const DeepCollectionEquality().hash(hasPhoto);

  @JsonKey(ignore: true)
  @override
  _$ForumDeletedCopyWith<_ForumDeleted> get copyWith =>
      __$ForumDeletedCopyWithImpl<_ForumDeleted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String forumId) liked,
    required TResult Function(String forumId) unliked,
    required TResult Function(String forumId, int index) voted,
    required TResult Function(String commentStr) commentChanged,
    required TResult Function() anonStateChanged,
    required TResult Function(String forumId) commentCreated,
    required TResult Function(String forumId, String commentId) commentLiked,
    required TResult Function(String forumId, String commentId) commentUnliked,
    required TResult Function(String forumId, bool hasPhoto) forumDeleted,
  }) {
    return forumDeleted(forumId, hasPhoto);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String forumId)? liked,
    TResult Function(String forumId)? unliked,
    TResult Function(String forumId, int index)? voted,
    TResult Function(String commentStr)? commentChanged,
    TResult Function()? anonStateChanged,
    TResult Function(String forumId)? commentCreated,
    TResult Function(String forumId, String commentId)? commentLiked,
    TResult Function(String forumId, String commentId)? commentUnliked,
    TResult Function(String forumId, bool hasPhoto)? forumDeleted,
    required TResult orElse(),
  }) {
    if (forumDeleted != null) {
      return forumDeleted(forumId, hasPhoto);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Liked value) liked,
    required TResult Function(_Unliked value) unliked,
    required TResult Function(_Voted value) voted,
    required TResult Function(_CommentChanged value) commentChanged,
    required TResult Function(_AnonStateChanged value) anonStateChanged,
    required TResult Function(_CommentCreated value) commentCreated,
    required TResult Function(_CommentLiked value) commentLiked,
    required TResult Function(_CommentUnliked value) commentUnliked,
    required TResult Function(_ForumDeleted value) forumDeleted,
  }) {
    return forumDeleted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Liked value)? liked,
    TResult Function(_Unliked value)? unliked,
    TResult Function(_Voted value)? voted,
    TResult Function(_CommentChanged value)? commentChanged,
    TResult Function(_AnonStateChanged value)? anonStateChanged,
    TResult Function(_CommentCreated value)? commentCreated,
    TResult Function(_CommentLiked value)? commentLiked,
    TResult Function(_CommentUnliked value)? commentUnliked,
    TResult Function(_ForumDeleted value)? forumDeleted,
    required TResult orElse(),
  }) {
    if (forumDeleted != null) {
      return forumDeleted(this);
    }
    return orElse();
  }
}

abstract class _ForumDeleted implements ForumActorEvent {
  const factory _ForumDeleted(String forumId, bool hasPhoto) = _$_ForumDeleted;

  String get forumId => throw _privateConstructorUsedError;
  bool get hasPhoto => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ForumDeletedCopyWith<_ForumDeleted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ForumActorStateTearOff {
  const _$ForumActorStateTearOff();

  _ForumActorState call(
      {required String userId,
      required Comment comment,
      required Option<Either<DataFailure, Unit>> createFailureOrSuccessOption,
      required bool isLoading,
      required bool showErrorMessages}) {
    return _ForumActorState(
      userId: userId,
      comment: comment,
      createFailureOrSuccessOption: createFailureOrSuccessOption,
      isLoading: isLoading,
      showErrorMessages: showErrorMessages,
    );
  }
}

/// @nodoc
const $ForumActorState = _$ForumActorStateTearOff();

/// @nodoc
mixin _$ForumActorState {
  String get userId => throw _privateConstructorUsedError;
  Comment get comment => throw _privateConstructorUsedError;
  Option<Either<DataFailure, Unit>> get createFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ForumActorStateCopyWith<ForumActorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForumActorStateCopyWith<$Res> {
  factory $ForumActorStateCopyWith(
          ForumActorState value, $Res Function(ForumActorState) then) =
      _$ForumActorStateCopyWithImpl<$Res>;
  $Res call(
      {String userId,
      Comment comment,
      Option<Either<DataFailure, Unit>> createFailureOrSuccessOption,
      bool isLoading,
      bool showErrorMessages});

  $CommentCopyWith<$Res> get comment;
}

/// @nodoc
class _$ForumActorStateCopyWithImpl<$Res>
    implements $ForumActorStateCopyWith<$Res> {
  _$ForumActorStateCopyWithImpl(this._value, this._then);

  final ForumActorState _value;
  // ignore: unused_field
  final $Res Function(ForumActorState) _then;

  @override
  $Res call({
    Object? userId = freezed,
    Object? comment = freezed,
    Object? createFailureOrSuccessOption = freezed,
    Object? isLoading = freezed,
    Object? showErrorMessages = freezed,
  }) {
    return _then(_value.copyWith(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      comment: comment == freezed
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as Comment,
      createFailureOrSuccessOption: createFailureOrSuccessOption == freezed
          ? _value.createFailureOrSuccessOption
          : createFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<DataFailure, Unit>>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $CommentCopyWith<$Res> get comment {
    return $CommentCopyWith<$Res>(_value.comment, (value) {
      return _then(_value.copyWith(comment: value));
    });
  }
}

/// @nodoc
abstract class _$ForumActorStateCopyWith<$Res>
    implements $ForumActorStateCopyWith<$Res> {
  factory _$ForumActorStateCopyWith(
          _ForumActorState value, $Res Function(_ForumActorState) then) =
      __$ForumActorStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String userId,
      Comment comment,
      Option<Either<DataFailure, Unit>> createFailureOrSuccessOption,
      bool isLoading,
      bool showErrorMessages});

  @override
  $CommentCopyWith<$Res> get comment;
}

/// @nodoc
class __$ForumActorStateCopyWithImpl<$Res>
    extends _$ForumActorStateCopyWithImpl<$Res>
    implements _$ForumActorStateCopyWith<$Res> {
  __$ForumActorStateCopyWithImpl(
      _ForumActorState _value, $Res Function(_ForumActorState) _then)
      : super(_value, (v) => _then(v as _ForumActorState));

  @override
  _ForumActorState get _value => super._value as _ForumActorState;

  @override
  $Res call({
    Object? userId = freezed,
    Object? comment = freezed,
    Object? createFailureOrSuccessOption = freezed,
    Object? isLoading = freezed,
    Object? showErrorMessages = freezed,
  }) {
    return _then(_ForumActorState(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      comment: comment == freezed
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as Comment,
      createFailureOrSuccessOption: createFailureOrSuccessOption == freezed
          ? _value.createFailureOrSuccessOption
          : createFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<DataFailure, Unit>>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ForumActorState implements _ForumActorState {
  const _$_ForumActorState(
      {required this.userId,
      required this.comment,
      required this.createFailureOrSuccessOption,
      required this.isLoading,
      required this.showErrorMessages});

  @override
  final String userId;
  @override
  final Comment comment;
  @override
  final Option<Either<DataFailure, Unit>> createFailureOrSuccessOption;
  @override
  final bool isLoading;
  @override
  final bool showErrorMessages;

  @override
  String toString() {
    return 'ForumActorState(userId: $userId, comment: $comment, createFailureOrSuccessOption: $createFailureOrSuccessOption, isLoading: $isLoading, showErrorMessages: $showErrorMessages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ForumActorState &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.comment, comment) ||
                const DeepCollectionEquality()
                    .equals(other.comment, comment)) &&
            (identical(other.createFailureOrSuccessOption,
                    createFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.createFailureOrSuccessOption,
                    createFailureOrSuccessOption)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(comment) ^
      const DeepCollectionEquality().hash(createFailureOrSuccessOption) ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(showErrorMessages);

  @JsonKey(ignore: true)
  @override
  _$ForumActorStateCopyWith<_ForumActorState> get copyWith =>
      __$ForumActorStateCopyWithImpl<_ForumActorState>(this, _$identity);
}

abstract class _ForumActorState implements ForumActorState {
  const factory _ForumActorState(
      {required String userId,
      required Comment comment,
      required Option<Either<DataFailure, Unit>> createFailureOrSuccessOption,
      required bool isLoading,
      required bool showErrorMessages}) = _$_ForumActorState;

  @override
  String get userId => throw _privateConstructorUsedError;
  @override
  Comment get comment => throw _privateConstructorUsedError;
  @override
  Option<Either<DataFailure, Unit>> get createFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  bool get showErrorMessages => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ForumActorStateCopyWith<_ForumActorState> get copyWith =>
      throw _privateConstructorUsedError;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'feed_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FeedEventTearOff {
  const _$FeedEventTearOff();

  _Loaded loaded() {
    return const _Loaded();
  }

  _RefreshFriendFeed refreshFriendFeed() {
    return const _RefreshFriendFeed();
  }

  _RefreshModuleFeed refreshModuleFeed() {
    return const _RefreshModuleFeed();
  }

  _Liked liked(List<ForumPost> forums, int index, String userId) {
    return _Liked(
      forums,
      index,
      userId,
    );
  }

  _Unliked unliked(List<ForumPost> forums, int index, String userId) {
    return _Unliked(
      forums,
      index,
      userId,
    );
  }
}

/// @nodoc
const $FeedEvent = _$FeedEventTearOff();

/// @nodoc
mixin _$FeedEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loaded,
    required TResult Function() refreshFriendFeed,
    required TResult Function() refreshModuleFeed,
    required TResult Function(List<ForumPost> forums, int index, String userId)
        liked,
    required TResult Function(List<ForumPost> forums, int index, String userId)
        unliked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function()? refreshFriendFeed,
    TResult Function()? refreshModuleFeed,
    TResult Function(List<ForumPost> forums, int index, String userId)? liked,
    TResult Function(List<ForumPost> forums, int index, String userId)? unliked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_RefreshFriendFeed value) refreshFriendFeed,
    required TResult Function(_RefreshModuleFeed value) refreshModuleFeed,
    required TResult Function(_Liked value) liked,
    required TResult Function(_Unliked value) unliked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loaded value)? loaded,
    TResult Function(_RefreshFriendFeed value)? refreshFriendFeed,
    TResult Function(_RefreshModuleFeed value)? refreshModuleFeed,
    TResult Function(_Liked value)? liked,
    TResult Function(_Unliked value)? unliked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedEventCopyWith<$Res> {
  factory $FeedEventCopyWith(FeedEvent value, $Res Function(FeedEvent) then) =
      _$FeedEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$FeedEventCopyWithImpl<$Res> implements $FeedEventCopyWith<$Res> {
  _$FeedEventCopyWithImpl(this._value, this._then);

  final FeedEvent _value;
  // ignore: unused_field
  final $Res Function(FeedEvent) _then;
}

/// @nodoc
abstract class _$LoadedCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) then) =
      __$LoadedCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadedCopyWithImpl<$Res> extends _$FeedEventCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(_Loaded _value, $Res Function(_Loaded) _then)
      : super(_value, (v) => _then(v as _Loaded));

  @override
  _Loaded get _value => super._value as _Loaded;
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded();

  @override
  String toString() {
    return 'FeedEvent.loaded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Loaded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loaded,
    required TResult Function() refreshFriendFeed,
    required TResult Function() refreshModuleFeed,
    required TResult Function(List<ForumPost> forums, int index, String userId)
        liked,
    required TResult Function(List<ForumPost> forums, int index, String userId)
        unliked,
  }) {
    return loaded();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function()? refreshFriendFeed,
    TResult Function()? refreshModuleFeed,
    TResult Function(List<ForumPost> forums, int index, String userId)? liked,
    TResult Function(List<ForumPost> forums, int index, String userId)? unliked,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_RefreshFriendFeed value) refreshFriendFeed,
    required TResult Function(_RefreshModuleFeed value) refreshModuleFeed,
    required TResult Function(_Liked value) liked,
    required TResult Function(_Unliked value) unliked,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loaded value)? loaded,
    TResult Function(_RefreshFriendFeed value)? refreshFriendFeed,
    TResult Function(_RefreshModuleFeed value)? refreshModuleFeed,
    TResult Function(_Liked value)? liked,
    TResult Function(_Unliked value)? unliked,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements FeedEvent {
  const factory _Loaded() = _$_Loaded;
}

/// @nodoc
abstract class _$RefreshFriendFeedCopyWith<$Res> {
  factory _$RefreshFriendFeedCopyWith(
          _RefreshFriendFeed value, $Res Function(_RefreshFriendFeed) then) =
      __$RefreshFriendFeedCopyWithImpl<$Res>;
}

/// @nodoc
class __$RefreshFriendFeedCopyWithImpl<$Res>
    extends _$FeedEventCopyWithImpl<$Res>
    implements _$RefreshFriendFeedCopyWith<$Res> {
  __$RefreshFriendFeedCopyWithImpl(
      _RefreshFriendFeed _value, $Res Function(_RefreshFriendFeed) _then)
      : super(_value, (v) => _then(v as _RefreshFriendFeed));

  @override
  _RefreshFriendFeed get _value => super._value as _RefreshFriendFeed;
}

/// @nodoc

class _$_RefreshFriendFeed implements _RefreshFriendFeed {
  const _$_RefreshFriendFeed();

  @override
  String toString() {
    return 'FeedEvent.refreshFriendFeed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _RefreshFriendFeed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loaded,
    required TResult Function() refreshFriendFeed,
    required TResult Function() refreshModuleFeed,
    required TResult Function(List<ForumPost> forums, int index, String userId)
        liked,
    required TResult Function(List<ForumPost> forums, int index, String userId)
        unliked,
  }) {
    return refreshFriendFeed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function()? refreshFriendFeed,
    TResult Function()? refreshModuleFeed,
    TResult Function(List<ForumPost> forums, int index, String userId)? liked,
    TResult Function(List<ForumPost> forums, int index, String userId)? unliked,
    required TResult orElse(),
  }) {
    if (refreshFriendFeed != null) {
      return refreshFriendFeed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_RefreshFriendFeed value) refreshFriendFeed,
    required TResult Function(_RefreshModuleFeed value) refreshModuleFeed,
    required TResult Function(_Liked value) liked,
    required TResult Function(_Unliked value) unliked,
  }) {
    return refreshFriendFeed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loaded value)? loaded,
    TResult Function(_RefreshFriendFeed value)? refreshFriendFeed,
    TResult Function(_RefreshModuleFeed value)? refreshModuleFeed,
    TResult Function(_Liked value)? liked,
    TResult Function(_Unliked value)? unliked,
    required TResult orElse(),
  }) {
    if (refreshFriendFeed != null) {
      return refreshFriendFeed(this);
    }
    return orElse();
  }
}

abstract class _RefreshFriendFeed implements FeedEvent {
  const factory _RefreshFriendFeed() = _$_RefreshFriendFeed;
}

/// @nodoc
abstract class _$RefreshModuleFeedCopyWith<$Res> {
  factory _$RefreshModuleFeedCopyWith(
          _RefreshModuleFeed value, $Res Function(_RefreshModuleFeed) then) =
      __$RefreshModuleFeedCopyWithImpl<$Res>;
}

/// @nodoc
class __$RefreshModuleFeedCopyWithImpl<$Res>
    extends _$FeedEventCopyWithImpl<$Res>
    implements _$RefreshModuleFeedCopyWith<$Res> {
  __$RefreshModuleFeedCopyWithImpl(
      _RefreshModuleFeed _value, $Res Function(_RefreshModuleFeed) _then)
      : super(_value, (v) => _then(v as _RefreshModuleFeed));

  @override
  _RefreshModuleFeed get _value => super._value as _RefreshModuleFeed;
}

/// @nodoc

class _$_RefreshModuleFeed implements _RefreshModuleFeed {
  const _$_RefreshModuleFeed();

  @override
  String toString() {
    return 'FeedEvent.refreshModuleFeed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _RefreshModuleFeed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loaded,
    required TResult Function() refreshFriendFeed,
    required TResult Function() refreshModuleFeed,
    required TResult Function(List<ForumPost> forums, int index, String userId)
        liked,
    required TResult Function(List<ForumPost> forums, int index, String userId)
        unliked,
  }) {
    return refreshModuleFeed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function()? refreshFriendFeed,
    TResult Function()? refreshModuleFeed,
    TResult Function(List<ForumPost> forums, int index, String userId)? liked,
    TResult Function(List<ForumPost> forums, int index, String userId)? unliked,
    required TResult orElse(),
  }) {
    if (refreshModuleFeed != null) {
      return refreshModuleFeed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_RefreshFriendFeed value) refreshFriendFeed,
    required TResult Function(_RefreshModuleFeed value) refreshModuleFeed,
    required TResult Function(_Liked value) liked,
    required TResult Function(_Unliked value) unliked,
  }) {
    return refreshModuleFeed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loaded value)? loaded,
    TResult Function(_RefreshFriendFeed value)? refreshFriendFeed,
    TResult Function(_RefreshModuleFeed value)? refreshModuleFeed,
    TResult Function(_Liked value)? liked,
    TResult Function(_Unliked value)? unliked,
    required TResult orElse(),
  }) {
    if (refreshModuleFeed != null) {
      return refreshModuleFeed(this);
    }
    return orElse();
  }
}

abstract class _RefreshModuleFeed implements FeedEvent {
  const factory _RefreshModuleFeed() = _$_RefreshModuleFeed;
}

/// @nodoc
abstract class _$LikedCopyWith<$Res> {
  factory _$LikedCopyWith(_Liked value, $Res Function(_Liked) then) =
      __$LikedCopyWithImpl<$Res>;
  $Res call({List<ForumPost> forums, int index, String userId});
}

/// @nodoc
class __$LikedCopyWithImpl<$Res> extends _$FeedEventCopyWithImpl<$Res>
    implements _$LikedCopyWith<$Res> {
  __$LikedCopyWithImpl(_Liked _value, $Res Function(_Liked) _then)
      : super(_value, (v) => _then(v as _Liked));

  @override
  _Liked get _value => super._value as _Liked;

  @override
  $Res call({
    Object? forums = freezed,
    Object? index = freezed,
    Object? userId = freezed,
  }) {
    return _then(_Liked(
      forums == freezed
          ? _value.forums
          : forums // ignore: cast_nullable_to_non_nullable
              as List<ForumPost>,
      index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Liked implements _Liked {
  const _$_Liked(this.forums, this.index, this.userId);

  @override
  final List<ForumPost> forums;
  @override
  final int index;
  @override
  final String userId;

  @override
  String toString() {
    return 'FeedEvent.liked(forums: $forums, index: $index, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Liked &&
            (identical(other.forums, forums) ||
                const DeepCollectionEquality().equals(other.forums, forums)) &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(forums) ^
      const DeepCollectionEquality().hash(index) ^
      const DeepCollectionEquality().hash(userId);

  @JsonKey(ignore: true)
  @override
  _$LikedCopyWith<_Liked> get copyWith =>
      __$LikedCopyWithImpl<_Liked>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loaded,
    required TResult Function() refreshFriendFeed,
    required TResult Function() refreshModuleFeed,
    required TResult Function(List<ForumPost> forums, int index, String userId)
        liked,
    required TResult Function(List<ForumPost> forums, int index, String userId)
        unliked,
  }) {
    return liked(forums, index, userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function()? refreshFriendFeed,
    TResult Function()? refreshModuleFeed,
    TResult Function(List<ForumPost> forums, int index, String userId)? liked,
    TResult Function(List<ForumPost> forums, int index, String userId)? unliked,
    required TResult orElse(),
  }) {
    if (liked != null) {
      return liked(forums, index, userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_RefreshFriendFeed value) refreshFriendFeed,
    required TResult Function(_RefreshModuleFeed value) refreshModuleFeed,
    required TResult Function(_Liked value) liked,
    required TResult Function(_Unliked value) unliked,
  }) {
    return liked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loaded value)? loaded,
    TResult Function(_RefreshFriendFeed value)? refreshFriendFeed,
    TResult Function(_RefreshModuleFeed value)? refreshModuleFeed,
    TResult Function(_Liked value)? liked,
    TResult Function(_Unliked value)? unliked,
    required TResult orElse(),
  }) {
    if (liked != null) {
      return liked(this);
    }
    return orElse();
  }
}

abstract class _Liked implements FeedEvent {
  const factory _Liked(List<ForumPost> forums, int index, String userId) =
      _$_Liked;

  List<ForumPost> get forums => throw _privateConstructorUsedError;
  int get index => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LikedCopyWith<_Liked> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UnlikedCopyWith<$Res> {
  factory _$UnlikedCopyWith(_Unliked value, $Res Function(_Unliked) then) =
      __$UnlikedCopyWithImpl<$Res>;
  $Res call({List<ForumPost> forums, int index, String userId});
}

/// @nodoc
class __$UnlikedCopyWithImpl<$Res> extends _$FeedEventCopyWithImpl<$Res>
    implements _$UnlikedCopyWith<$Res> {
  __$UnlikedCopyWithImpl(_Unliked _value, $Res Function(_Unliked) _then)
      : super(_value, (v) => _then(v as _Unliked));

  @override
  _Unliked get _value => super._value as _Unliked;

  @override
  $Res call({
    Object? forums = freezed,
    Object? index = freezed,
    Object? userId = freezed,
  }) {
    return _then(_Unliked(
      forums == freezed
          ? _value.forums
          : forums // ignore: cast_nullable_to_non_nullable
              as List<ForumPost>,
      index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Unliked implements _Unliked {
  const _$_Unliked(this.forums, this.index, this.userId);

  @override
  final List<ForumPost> forums;
  @override
  final int index;
  @override
  final String userId;

  @override
  String toString() {
    return 'FeedEvent.unliked(forums: $forums, index: $index, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Unliked &&
            (identical(other.forums, forums) ||
                const DeepCollectionEquality().equals(other.forums, forums)) &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(forums) ^
      const DeepCollectionEquality().hash(index) ^
      const DeepCollectionEquality().hash(userId);

  @JsonKey(ignore: true)
  @override
  _$UnlikedCopyWith<_Unliked> get copyWith =>
      __$UnlikedCopyWithImpl<_Unliked>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loaded,
    required TResult Function() refreshFriendFeed,
    required TResult Function() refreshModuleFeed,
    required TResult Function(List<ForumPost> forums, int index, String userId)
        liked,
    required TResult Function(List<ForumPost> forums, int index, String userId)
        unliked,
  }) {
    return unliked(forums, index, userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function()? refreshFriendFeed,
    TResult Function()? refreshModuleFeed,
    TResult Function(List<ForumPost> forums, int index, String userId)? liked,
    TResult Function(List<ForumPost> forums, int index, String userId)? unliked,
    required TResult orElse(),
  }) {
    if (unliked != null) {
      return unliked(forums, index, userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_RefreshFriendFeed value) refreshFriendFeed,
    required TResult Function(_RefreshModuleFeed value) refreshModuleFeed,
    required TResult Function(_Liked value) liked,
    required TResult Function(_Unliked value) unliked,
  }) {
    return unliked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loaded value)? loaded,
    TResult Function(_RefreshFriendFeed value)? refreshFriendFeed,
    TResult Function(_RefreshModuleFeed value)? refreshModuleFeed,
    TResult Function(_Liked value)? liked,
    TResult Function(_Unliked value)? unliked,
    required TResult orElse(),
  }) {
    if (unliked != null) {
      return unliked(this);
    }
    return orElse();
  }
}

abstract class _Unliked implements FeedEvent {
  const factory _Unliked(List<ForumPost> forums, int index, String userId) =
      _$_Unliked;

  List<ForumPost> get forums => throw _privateConstructorUsedError;
  int get index => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$UnlikedCopyWith<_Unliked> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$FeedStateTearOff {
  const _$FeedStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

  _LoadSuccess loadSuccess(List<ForumPost> forums) {
    return _LoadSuccess(
      forums,
    );
  }

  _LoadLike loadLike(List<ForumPost> forums) {
    return _LoadLike(
      forums,
    );
  }

  _LoadFailure loadFailure(DataFailure dataFailure) {
    return _LoadFailure(
      dataFailure,
    );
  }
}

/// @nodoc
const $FeedState = _$FeedStateTearOff();

/// @nodoc
mixin _$FeedState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<ForumPost> forums) loadSuccess,
    required TResult Function(List<ForumPost> forums) loadLike,
    required TResult Function(DataFailure dataFailure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<ForumPost> forums)? loadSuccess,
    TResult Function(List<ForumPost> forums)? loadLike,
    TResult Function(DataFailure dataFailure)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadLike value) loadLike,
    required TResult Function(_LoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadLike value)? loadLike,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedStateCopyWith<$Res> {
  factory $FeedStateCopyWith(FeedState value, $Res Function(FeedState) then) =
      _$FeedStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FeedStateCopyWithImpl<$Res> implements $FeedStateCopyWith<$Res> {
  _$FeedStateCopyWithImpl(this._value, this._then);

  final FeedState _value;
  // ignore: unused_field
  final $Res Function(FeedState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$FeedStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'FeedState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<ForumPost> forums) loadSuccess,
    required TResult Function(List<ForumPost> forums) loadLike,
    required TResult Function(DataFailure dataFailure) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<ForumPost> forums)? loadSuccess,
    TResult Function(List<ForumPost> forums)? loadLike,
    TResult Function(DataFailure dataFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadLike value) loadLike,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadLike value)? loadLike,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements FeedState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadInProgressCopyWith<$Res> {
  factory _$LoadInProgressCopyWith(
          _LoadInProgress value, $Res Function(_LoadInProgress) then) =
      __$LoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadInProgressCopyWithImpl<$Res> extends _$FeedStateCopyWithImpl<$Res>
    implements _$LoadInProgressCopyWith<$Res> {
  __$LoadInProgressCopyWithImpl(
      _LoadInProgress _value, $Res Function(_LoadInProgress) _then)
      : super(_value, (v) => _then(v as _LoadInProgress));

  @override
  _LoadInProgress get _value => super._value as _LoadInProgress;
}

/// @nodoc

class _$_LoadInProgress implements _LoadInProgress {
  const _$_LoadInProgress();

  @override
  String toString() {
    return 'FeedState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<ForumPost> forums) loadSuccess,
    required TResult Function(List<ForumPost> forums) loadLike,
    required TResult Function(DataFailure dataFailure) loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<ForumPost> forums)? loadSuccess,
    TResult Function(List<ForumPost> forums)? loadLike,
    TResult Function(DataFailure dataFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadLike value) loadLike,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadLike value)? loadLike,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements FeedState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({List<ForumPost> forums});
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res> extends _$FeedStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object? forums = freezed,
  }) {
    return _then(_LoadSuccess(
      forums == freezed
          ? _value.forums
          : forums // ignore: cast_nullable_to_non_nullable
              as List<ForumPost>,
    ));
  }
}

/// @nodoc

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.forums);

  @override
  final List<ForumPost> forums;

  @override
  String toString() {
    return 'FeedState.loadSuccess(forums: $forums)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccess &&
            (identical(other.forums, forums) ||
                const DeepCollectionEquality().equals(other.forums, forums)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(forums);

  @JsonKey(ignore: true)
  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<ForumPost> forums) loadSuccess,
    required TResult Function(List<ForumPost> forums) loadLike,
    required TResult Function(DataFailure dataFailure) loadFailure,
  }) {
    return loadSuccess(forums);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<ForumPost> forums)? loadSuccess,
    TResult Function(List<ForumPost> forums)? loadLike,
    TResult Function(DataFailure dataFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(forums);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadLike value) loadLike,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadLike value)? loadLike,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements FeedState {
  const factory _LoadSuccess(List<ForumPost> forums) = _$_LoadSuccess;

  List<ForumPost> get forums => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadLikeCopyWith<$Res> {
  factory _$LoadLikeCopyWith(_LoadLike value, $Res Function(_LoadLike) then) =
      __$LoadLikeCopyWithImpl<$Res>;
  $Res call({List<ForumPost> forums});
}

/// @nodoc
class __$LoadLikeCopyWithImpl<$Res> extends _$FeedStateCopyWithImpl<$Res>
    implements _$LoadLikeCopyWith<$Res> {
  __$LoadLikeCopyWithImpl(_LoadLike _value, $Res Function(_LoadLike) _then)
      : super(_value, (v) => _then(v as _LoadLike));

  @override
  _LoadLike get _value => super._value as _LoadLike;

  @override
  $Res call({
    Object? forums = freezed,
  }) {
    return _then(_LoadLike(
      forums == freezed
          ? _value.forums
          : forums // ignore: cast_nullable_to_non_nullable
              as List<ForumPost>,
    ));
  }
}

/// @nodoc

class _$_LoadLike implements _LoadLike {
  const _$_LoadLike(this.forums);

  @override
  final List<ForumPost> forums;

  @override
  String toString() {
    return 'FeedState.loadLike(forums: $forums)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadLike &&
            (identical(other.forums, forums) ||
                const DeepCollectionEquality().equals(other.forums, forums)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(forums);

  @JsonKey(ignore: true)
  @override
  _$LoadLikeCopyWith<_LoadLike> get copyWith =>
      __$LoadLikeCopyWithImpl<_LoadLike>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<ForumPost> forums) loadSuccess,
    required TResult Function(List<ForumPost> forums) loadLike,
    required TResult Function(DataFailure dataFailure) loadFailure,
  }) {
    return loadLike(forums);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<ForumPost> forums)? loadSuccess,
    TResult Function(List<ForumPost> forums)? loadLike,
    TResult Function(DataFailure dataFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadLike != null) {
      return loadLike(forums);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadLike value) loadLike,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadLike(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadLike value)? loadLike,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadLike != null) {
      return loadLike(this);
    }
    return orElse();
  }
}

abstract class _LoadLike implements FeedState {
  const factory _LoadLike(List<ForumPost> forums) = _$_LoadLike;

  List<ForumPost> get forums => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadLikeCopyWith<_LoadLike> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({DataFailure dataFailure});

  $DataFailureCopyWith<$Res> get dataFailure;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res> extends _$FeedStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object? dataFailure = freezed,
  }) {
    return _then(_LoadFailure(
      dataFailure == freezed
          ? _value.dataFailure
          : dataFailure // ignore: cast_nullable_to_non_nullable
              as DataFailure,
    ));
  }

  @override
  $DataFailureCopyWith<$Res> get dataFailure {
    return $DataFailureCopyWith<$Res>(_value.dataFailure, (value) {
      return _then(_value.copyWith(dataFailure: value));
    });
  }
}

/// @nodoc

class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.dataFailure);

  @override
  final DataFailure dataFailure;

  @override
  String toString() {
    return 'FeedState.loadFailure(dataFailure: $dataFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadFailure &&
            (identical(other.dataFailure, dataFailure) ||
                const DeepCollectionEquality()
                    .equals(other.dataFailure, dataFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(dataFailure);

  @JsonKey(ignore: true)
  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<ForumPost> forums) loadSuccess,
    required TResult Function(List<ForumPost> forums) loadLike,
    required TResult Function(DataFailure dataFailure) loadFailure,
  }) {
    return loadFailure(dataFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<ForumPost> forums)? loadSuccess,
    TResult Function(List<ForumPost> forums)? loadLike,
    TResult Function(DataFailure dataFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(dataFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadLike value) loadLike,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadLike value)? loadLike,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements FeedState {
  const factory _LoadFailure(DataFailure dataFailure) = _$_LoadFailure;

  DataFailure get dataFailure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'forum_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ForumWatcherEventTearOff {
  const _$ForumWatcherEventTearOff();

  _RetrieveForumsStarted retrieveForumsStarted() {
    return const _RetrieveForumsStarted();
  }

  _ForumsReceived forumsReceived(
      Either<DataFailure, List<ForumPost>> failureOrForums) {
    return _ForumsReceived(
      failureOrForums,
    );
  }
}

/// @nodoc
const $ForumWatcherEvent = _$ForumWatcherEventTearOff();

/// @nodoc
mixin _$ForumWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() retrieveForumsStarted,
    required TResult Function(
            Either<DataFailure, List<ForumPost>> failureOrForums)
        forumsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? retrieveForumsStarted,
    TResult Function(Either<DataFailure, List<ForumPost>> failureOrForums)?
        forumsReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RetrieveForumsStarted value)
        retrieveForumsStarted,
    required TResult Function(_ForumsReceived value) forumsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RetrieveForumsStarted value)? retrieveForumsStarted,
    TResult Function(_ForumsReceived value)? forumsReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForumWatcherEventCopyWith<$Res> {
  factory $ForumWatcherEventCopyWith(
          ForumWatcherEvent value, $Res Function(ForumWatcherEvent) then) =
      _$ForumWatcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ForumWatcherEventCopyWithImpl<$Res>
    implements $ForumWatcherEventCopyWith<$Res> {
  _$ForumWatcherEventCopyWithImpl(this._value, this._then);

  final ForumWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(ForumWatcherEvent) _then;
}

/// @nodoc
abstract class _$RetrieveForumsStartedCopyWith<$Res> {
  factory _$RetrieveForumsStartedCopyWith(_RetrieveForumsStarted value,
          $Res Function(_RetrieveForumsStarted) then) =
      __$RetrieveForumsStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$RetrieveForumsStartedCopyWithImpl<$Res>
    extends _$ForumWatcherEventCopyWithImpl<$Res>
    implements _$RetrieveForumsStartedCopyWith<$Res> {
  __$RetrieveForumsStartedCopyWithImpl(_RetrieveForumsStarted _value,
      $Res Function(_RetrieveForumsStarted) _then)
      : super(_value, (v) => _then(v as _RetrieveForumsStarted));

  @override
  _RetrieveForumsStarted get _value => super._value as _RetrieveForumsStarted;
}

/// @nodoc

class _$_RetrieveForumsStarted implements _RetrieveForumsStarted {
  const _$_RetrieveForumsStarted();

  @override
  String toString() {
    return 'ForumWatcherEvent.retrieveForumsStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _RetrieveForumsStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() retrieveForumsStarted,
    required TResult Function(
            Either<DataFailure, List<ForumPost>> failureOrForums)
        forumsReceived,
  }) {
    return retrieveForumsStarted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? retrieveForumsStarted,
    TResult Function(Either<DataFailure, List<ForumPost>> failureOrForums)?
        forumsReceived,
    required TResult orElse(),
  }) {
    if (retrieveForumsStarted != null) {
      return retrieveForumsStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RetrieveForumsStarted value)
        retrieveForumsStarted,
    required TResult Function(_ForumsReceived value) forumsReceived,
  }) {
    return retrieveForumsStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RetrieveForumsStarted value)? retrieveForumsStarted,
    TResult Function(_ForumsReceived value)? forumsReceived,
    required TResult orElse(),
  }) {
    if (retrieveForumsStarted != null) {
      return retrieveForumsStarted(this);
    }
    return orElse();
  }
}

abstract class _RetrieveForumsStarted implements ForumWatcherEvent {
  const factory _RetrieveForumsStarted() = _$_RetrieveForumsStarted;
}

/// @nodoc
abstract class _$ForumsReceivedCopyWith<$Res> {
  factory _$ForumsReceivedCopyWith(
          _ForumsReceived value, $Res Function(_ForumsReceived) then) =
      __$ForumsReceivedCopyWithImpl<$Res>;
  $Res call({Either<DataFailure, List<ForumPost>> failureOrForums});
}

/// @nodoc
class __$ForumsReceivedCopyWithImpl<$Res>
    extends _$ForumWatcherEventCopyWithImpl<$Res>
    implements _$ForumsReceivedCopyWith<$Res> {
  __$ForumsReceivedCopyWithImpl(
      _ForumsReceived _value, $Res Function(_ForumsReceived) _then)
      : super(_value, (v) => _then(v as _ForumsReceived));

  @override
  _ForumsReceived get _value => super._value as _ForumsReceived;

  @override
  $Res call({
    Object? failureOrForums = freezed,
  }) {
    return _then(_ForumsReceived(
      failureOrForums == freezed
          ? _value.failureOrForums
          : failureOrForums // ignore: cast_nullable_to_non_nullable
              as Either<DataFailure, List<ForumPost>>,
    ));
  }
}

/// @nodoc

class _$_ForumsReceived implements _ForumsReceived {
  const _$_ForumsReceived(this.failureOrForums);

  @override
  final Either<DataFailure, List<ForumPost>> failureOrForums;

  @override
  String toString() {
    return 'ForumWatcherEvent.forumsReceived(failureOrForums: $failureOrForums)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ForumsReceived &&
            (identical(other.failureOrForums, failureOrForums) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrForums, failureOrForums)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrForums);

  @JsonKey(ignore: true)
  @override
  _$ForumsReceivedCopyWith<_ForumsReceived> get copyWith =>
      __$ForumsReceivedCopyWithImpl<_ForumsReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() retrieveForumsStarted,
    required TResult Function(
            Either<DataFailure, List<ForumPost>> failureOrForums)
        forumsReceived,
  }) {
    return forumsReceived(failureOrForums);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? retrieveForumsStarted,
    TResult Function(Either<DataFailure, List<ForumPost>> failureOrForums)?
        forumsReceived,
    required TResult orElse(),
  }) {
    if (forumsReceived != null) {
      return forumsReceived(failureOrForums);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RetrieveForumsStarted value)
        retrieveForumsStarted,
    required TResult Function(_ForumsReceived value) forumsReceived,
  }) {
    return forumsReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RetrieveForumsStarted value)? retrieveForumsStarted,
    TResult Function(_ForumsReceived value)? forumsReceived,
    required TResult orElse(),
  }) {
    if (forumsReceived != null) {
      return forumsReceived(this);
    }
    return orElse();
  }
}

abstract class _ForumsReceived implements ForumWatcherEvent {
  const factory _ForumsReceived(
      Either<DataFailure, List<ForumPost>> failureOrForums) = _$_ForumsReceived;

  Either<DataFailure, List<ForumPost>> get failureOrForums =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ForumsReceivedCopyWith<_ForumsReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ForumWatcherStateTearOff {
  const _$ForumWatcherStateTearOff();

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

  _LoadFailure loadFailure(DataFailure dataFailure) {
    return _LoadFailure(
      dataFailure,
    );
  }
}

/// @nodoc
const $ForumWatcherState = _$ForumWatcherStateTearOff();

/// @nodoc
mixin _$ForumWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<ForumPost> forums) loadSuccess,
    required TResult Function(DataFailure dataFailure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<ForumPost> forums)? loadSuccess,
    TResult Function(DataFailure dataFailure)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForumWatcherStateCopyWith<$Res> {
  factory $ForumWatcherStateCopyWith(
          ForumWatcherState value, $Res Function(ForumWatcherState) then) =
      _$ForumWatcherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ForumWatcherStateCopyWithImpl<$Res>
    implements $ForumWatcherStateCopyWith<$Res> {
  _$ForumWatcherStateCopyWithImpl(this._value, this._then);

  final ForumWatcherState _value;
  // ignore: unused_field
  final $Res Function(ForumWatcherState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$ForumWatcherStateCopyWithImpl<$Res>
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
    return 'ForumWatcherState.initial()';
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
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ForumWatcherState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadInProgressCopyWith<$Res> {
  factory _$LoadInProgressCopyWith(
          _LoadInProgress value, $Res Function(_LoadInProgress) then) =
      __$LoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadInProgressCopyWithImpl<$Res>
    extends _$ForumWatcherStateCopyWithImpl<$Res>
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
    return 'ForumWatcherState.loadInProgress()';
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
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements ForumWatcherState {
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
class __$LoadSuccessCopyWithImpl<$Res>
    extends _$ForumWatcherStateCopyWithImpl<$Res>
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
    return 'ForumWatcherState.loadSuccess(forums: $forums)';
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
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements ForumWatcherState {
  const factory _LoadSuccess(List<ForumPost> forums) = _$_LoadSuccess;

  List<ForumPost> get forums => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
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
class __$LoadFailureCopyWithImpl<$Res>
    extends _$ForumWatcherStateCopyWithImpl<$Res>
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
    return 'ForumWatcherState.loadFailure(dataFailure: $dataFailure)';
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
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements ForumWatcherState {
  const factory _LoadFailure(DataFailure dataFailure) = _$_LoadFailure;

  DataFailure get dataFailure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

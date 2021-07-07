// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'notification_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NotificationWatcherEventTearOff {
  const _$NotificationWatcherEventTearOff();

  _RetrieveNotificationsStarted retrieveNotificationsStarted() {
    return const _RetrieveNotificationsStarted();
  }

  _NotificationsReceived notificationsReceived(
      Either<DataFailure, List<Notification>> failureOrNotifications) {
    return _NotificationsReceived(
      failureOrNotifications,
    );
  }
}

/// @nodoc
const $NotificationWatcherEvent = _$NotificationWatcherEventTearOff();

/// @nodoc
mixin _$NotificationWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() retrieveNotificationsStarted,
    required TResult Function(
            Either<DataFailure, List<Notification>> failureOrNotifications)
        notificationsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? retrieveNotificationsStarted,
    TResult Function(
            Either<DataFailure, List<Notification>> failureOrNotifications)?
        notificationsReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RetrieveNotificationsStarted value)
        retrieveNotificationsStarted,
    required TResult Function(_NotificationsReceived value)
        notificationsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RetrieveNotificationsStarted value)?
        retrieveNotificationsStarted,
    TResult Function(_NotificationsReceived value)? notificationsReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationWatcherEventCopyWith<$Res> {
  factory $NotificationWatcherEventCopyWith(NotificationWatcherEvent value,
          $Res Function(NotificationWatcherEvent) then) =
      _$NotificationWatcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$NotificationWatcherEventCopyWithImpl<$Res>
    implements $NotificationWatcherEventCopyWith<$Res> {
  _$NotificationWatcherEventCopyWithImpl(this._value, this._then);

  final NotificationWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(NotificationWatcherEvent) _then;
}

/// @nodoc
abstract class _$RetrieveNotificationsStartedCopyWith<$Res> {
  factory _$RetrieveNotificationsStartedCopyWith(
          _RetrieveNotificationsStarted value,
          $Res Function(_RetrieveNotificationsStarted) then) =
      __$RetrieveNotificationsStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$RetrieveNotificationsStartedCopyWithImpl<$Res>
    extends _$NotificationWatcherEventCopyWithImpl<$Res>
    implements _$RetrieveNotificationsStartedCopyWith<$Res> {
  __$RetrieveNotificationsStartedCopyWithImpl(
      _RetrieveNotificationsStarted _value,
      $Res Function(_RetrieveNotificationsStarted) _then)
      : super(_value, (v) => _then(v as _RetrieveNotificationsStarted));

  @override
  _RetrieveNotificationsStarted get _value =>
      super._value as _RetrieveNotificationsStarted;
}

/// @nodoc

class _$_RetrieveNotificationsStarted implements _RetrieveNotificationsStarted {
  const _$_RetrieveNotificationsStarted();

  @override
  String toString() {
    return 'NotificationWatcherEvent.retrieveNotificationsStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _RetrieveNotificationsStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() retrieveNotificationsStarted,
    required TResult Function(
            Either<DataFailure, List<Notification>> failureOrNotifications)
        notificationsReceived,
  }) {
    return retrieveNotificationsStarted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? retrieveNotificationsStarted,
    TResult Function(
            Either<DataFailure, List<Notification>> failureOrNotifications)?
        notificationsReceived,
    required TResult orElse(),
  }) {
    if (retrieveNotificationsStarted != null) {
      return retrieveNotificationsStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RetrieveNotificationsStarted value)
        retrieveNotificationsStarted,
    required TResult Function(_NotificationsReceived value)
        notificationsReceived,
  }) {
    return retrieveNotificationsStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RetrieveNotificationsStarted value)?
        retrieveNotificationsStarted,
    TResult Function(_NotificationsReceived value)? notificationsReceived,
    required TResult orElse(),
  }) {
    if (retrieveNotificationsStarted != null) {
      return retrieveNotificationsStarted(this);
    }
    return orElse();
  }
}

abstract class _RetrieveNotificationsStarted
    implements NotificationWatcherEvent {
  const factory _RetrieveNotificationsStarted() =
      _$_RetrieveNotificationsStarted;
}

/// @nodoc
abstract class _$NotificationsReceivedCopyWith<$Res> {
  factory _$NotificationsReceivedCopyWith(_NotificationsReceived value,
          $Res Function(_NotificationsReceived) then) =
      __$NotificationsReceivedCopyWithImpl<$Res>;
  $Res call({Either<DataFailure, List<Notification>> failureOrNotifications});
}

/// @nodoc
class __$NotificationsReceivedCopyWithImpl<$Res>
    extends _$NotificationWatcherEventCopyWithImpl<$Res>
    implements _$NotificationsReceivedCopyWith<$Res> {
  __$NotificationsReceivedCopyWithImpl(_NotificationsReceived _value,
      $Res Function(_NotificationsReceived) _then)
      : super(_value, (v) => _then(v as _NotificationsReceived));

  @override
  _NotificationsReceived get _value => super._value as _NotificationsReceived;

  @override
  $Res call({
    Object? failureOrNotifications = freezed,
  }) {
    return _then(_NotificationsReceived(
      failureOrNotifications == freezed
          ? _value.failureOrNotifications
          : failureOrNotifications // ignore: cast_nullable_to_non_nullable
              as Either<DataFailure, List<Notification>>,
    ));
  }
}

/// @nodoc

class _$_NotificationsReceived implements _NotificationsReceived {
  const _$_NotificationsReceived(this.failureOrNotifications);

  @override
  final Either<DataFailure, List<Notification>> failureOrNotifications;

  @override
  String toString() {
    return 'NotificationWatcherEvent.notificationsReceived(failureOrNotifications: $failureOrNotifications)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NotificationsReceived &&
            (identical(other.failureOrNotifications, failureOrNotifications) ||
                const DeepCollectionEquality().equals(
                    other.failureOrNotifications, failureOrNotifications)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrNotifications);

  @JsonKey(ignore: true)
  @override
  _$NotificationsReceivedCopyWith<_NotificationsReceived> get copyWith =>
      __$NotificationsReceivedCopyWithImpl<_NotificationsReceived>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() retrieveNotificationsStarted,
    required TResult Function(
            Either<DataFailure, List<Notification>> failureOrNotifications)
        notificationsReceived,
  }) {
    return notificationsReceived(failureOrNotifications);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? retrieveNotificationsStarted,
    TResult Function(
            Either<DataFailure, List<Notification>> failureOrNotifications)?
        notificationsReceived,
    required TResult orElse(),
  }) {
    if (notificationsReceived != null) {
      return notificationsReceived(failureOrNotifications);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RetrieveNotificationsStarted value)
        retrieveNotificationsStarted,
    required TResult Function(_NotificationsReceived value)
        notificationsReceived,
  }) {
    return notificationsReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RetrieveNotificationsStarted value)?
        retrieveNotificationsStarted,
    TResult Function(_NotificationsReceived value)? notificationsReceived,
    required TResult orElse(),
  }) {
    if (notificationsReceived != null) {
      return notificationsReceived(this);
    }
    return orElse();
  }
}

abstract class _NotificationsReceived implements NotificationWatcherEvent {
  const factory _NotificationsReceived(
          Either<DataFailure, List<Notification>> failureOrNotifications) =
      _$_NotificationsReceived;

  Either<DataFailure, List<Notification>> get failureOrNotifications =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$NotificationsReceivedCopyWith<_NotificationsReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$NotificationWatcherStateTearOff {
  const _$NotificationWatcherStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

  _LoadSuccess loadSuccess(List<Notification> notifications) {
    return _LoadSuccess(
      notifications,
    );
  }

  _LoadFailure loadFailure(DataFailure dataFailure) {
    return _LoadFailure(
      dataFailure,
    );
  }
}

/// @nodoc
const $NotificationWatcherState = _$NotificationWatcherStateTearOff();

/// @nodoc
mixin _$NotificationWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<Notification> notifications) loadSuccess,
    required TResult Function(DataFailure dataFailure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Notification> notifications)? loadSuccess,
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
abstract class $NotificationWatcherStateCopyWith<$Res> {
  factory $NotificationWatcherStateCopyWith(NotificationWatcherState value,
          $Res Function(NotificationWatcherState) then) =
      _$NotificationWatcherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$NotificationWatcherStateCopyWithImpl<$Res>
    implements $NotificationWatcherStateCopyWith<$Res> {
  _$NotificationWatcherStateCopyWithImpl(this._value, this._then);

  final NotificationWatcherState _value;
  // ignore: unused_field
  final $Res Function(NotificationWatcherState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$NotificationWatcherStateCopyWithImpl<$Res>
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
    return 'NotificationWatcherState.initial()';
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
    required TResult Function(List<Notification> notifications) loadSuccess,
    required TResult Function(DataFailure dataFailure) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Notification> notifications)? loadSuccess,
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

abstract class _Initial implements NotificationWatcherState {
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
    extends _$NotificationWatcherStateCopyWithImpl<$Res>
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
    return 'NotificationWatcherState.loadInProgress()';
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
    required TResult Function(List<Notification> notifications) loadSuccess,
    required TResult Function(DataFailure dataFailure) loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Notification> notifications)? loadSuccess,
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

abstract class _LoadInProgress implements NotificationWatcherState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({List<Notification> notifications});
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res>
    extends _$NotificationWatcherStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object? notifications = freezed,
  }) {
    return _then(_LoadSuccess(
      notifications == freezed
          ? _value.notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as List<Notification>,
    ));
  }
}

/// @nodoc

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.notifications);

  @override
  final List<Notification> notifications;

  @override
  String toString() {
    return 'NotificationWatcherState.loadSuccess(notifications: $notifications)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccess &&
            (identical(other.notifications, notifications) ||
                const DeepCollectionEquality()
                    .equals(other.notifications, notifications)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(notifications);

  @JsonKey(ignore: true)
  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<Notification> notifications) loadSuccess,
    required TResult Function(DataFailure dataFailure) loadFailure,
  }) {
    return loadSuccess(notifications);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Notification> notifications)? loadSuccess,
    TResult Function(DataFailure dataFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(notifications);
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

abstract class _LoadSuccess implements NotificationWatcherState {
  const factory _LoadSuccess(List<Notification> notifications) = _$_LoadSuccess;

  List<Notification> get notifications => throw _privateConstructorUsedError;
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
    extends _$NotificationWatcherStateCopyWithImpl<$Res>
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
    return 'NotificationWatcherState.loadFailure(dataFailure: $dataFailure)';
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
    required TResult Function(List<Notification> notifications) loadSuccess,
    required TResult Function(DataFailure dataFailure) loadFailure,
  }) {
    return loadFailure(dataFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Notification> notifications)? loadSuccess,
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

abstract class _LoadFailure implements NotificationWatcherState {
  const factory _LoadFailure(DataFailure dataFailure) = _$_LoadFailure;

  DataFailure get dataFailure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

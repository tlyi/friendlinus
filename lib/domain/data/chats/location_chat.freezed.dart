// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'location_chat.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LocationChatTearOff {
  const _$LocationChatTearOff();

  _LocationChat call(
      {required String uuid,
      required String lastMessage,
      required String lastSenderId,
      required Title chatTitle,
      required String timestamp,
      required double longitude,
      required double latitude}) {
    return _LocationChat(
      uuid: uuid,
      lastMessage: lastMessage,
      lastSenderId: lastSenderId,
      chatTitle: chatTitle,
      timestamp: timestamp,
      longitude: longitude,
      latitude: latitude,
    );
  }
}

/// @nodoc
const $LocationChat = _$LocationChatTearOff();

/// @nodoc
mixin _$LocationChat {
  String get uuid => throw _privateConstructorUsedError;
  String get lastMessage => throw _privateConstructorUsedError;
  String get lastSenderId => throw _privateConstructorUsedError;
  Title get chatTitle => throw _privateConstructorUsedError;
  String get timestamp => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  double get latitude => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LocationChatCopyWith<LocationChat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationChatCopyWith<$Res> {
  factory $LocationChatCopyWith(
          LocationChat value, $Res Function(LocationChat) then) =
      _$LocationChatCopyWithImpl<$Res>;
  $Res call(
      {String uuid,
      String lastMessage,
      String lastSenderId,
      Title chatTitle,
      String timestamp,
      double longitude,
      double latitude});
}

/// @nodoc
class _$LocationChatCopyWithImpl<$Res> implements $LocationChatCopyWith<$Res> {
  _$LocationChatCopyWithImpl(this._value, this._then);

  final LocationChat _value;
  // ignore: unused_field
  final $Res Function(LocationChat) _then;

  @override
  $Res call({
    Object? uuid = freezed,
    Object? lastMessage = freezed,
    Object? lastSenderId = freezed,
    Object? chatTitle = freezed,
    Object? timestamp = freezed,
    Object? longitude = freezed,
    Object? latitude = freezed,
  }) {
    return _then(_value.copyWith(
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      lastMessage: lastMessage == freezed
          ? _value.lastMessage
          : lastMessage // ignore: cast_nullable_to_non_nullable
              as String,
      lastSenderId: lastSenderId == freezed
          ? _value.lastSenderId
          : lastSenderId // ignore: cast_nullable_to_non_nullable
              as String,
      chatTitle: chatTitle == freezed
          ? _value.chatTitle
          : chatTitle // ignore: cast_nullable_to_non_nullable
              as Title,
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$LocationChatCopyWith<$Res>
    implements $LocationChatCopyWith<$Res> {
  factory _$LocationChatCopyWith(
          _LocationChat value, $Res Function(_LocationChat) then) =
      __$LocationChatCopyWithImpl<$Res>;
  @override
  $Res call(
      {String uuid,
      String lastMessage,
      String lastSenderId,
      Title chatTitle,
      String timestamp,
      double longitude,
      double latitude});
}

/// @nodoc
class __$LocationChatCopyWithImpl<$Res> extends _$LocationChatCopyWithImpl<$Res>
    implements _$LocationChatCopyWith<$Res> {
  __$LocationChatCopyWithImpl(
      _LocationChat _value, $Res Function(_LocationChat) _then)
      : super(_value, (v) => _then(v as _LocationChat));

  @override
  _LocationChat get _value => super._value as _LocationChat;

  @override
  $Res call({
    Object? uuid = freezed,
    Object? lastMessage = freezed,
    Object? lastSenderId = freezed,
    Object? chatTitle = freezed,
    Object? timestamp = freezed,
    Object? longitude = freezed,
    Object? latitude = freezed,
  }) {
    return _then(_LocationChat(
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      lastMessage: lastMessage == freezed
          ? _value.lastMessage
          : lastMessage // ignore: cast_nullable_to_non_nullable
              as String,
      lastSenderId: lastSenderId == freezed
          ? _value.lastSenderId
          : lastSenderId // ignore: cast_nullable_to_non_nullable
              as String,
      chatTitle: chatTitle == freezed
          ? _value.chatTitle
          : chatTitle // ignore: cast_nullable_to_non_nullable
              as Title,
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_LocationChat extends _LocationChat {
  const _$_LocationChat(
      {required this.uuid,
      required this.lastMessage,
      required this.lastSenderId,
      required this.chatTitle,
      required this.timestamp,
      required this.longitude,
      required this.latitude})
      : super._();

  @override
  final String uuid;
  @override
  final String lastMessage;
  @override
  final String lastSenderId;
  @override
  final Title chatTitle;
  @override
  final String timestamp;
  @override
  final double longitude;
  @override
  final double latitude;

  @override
  String toString() {
    return 'LocationChat(uuid: $uuid, lastMessage: $lastMessage, lastSenderId: $lastSenderId, chatTitle: $chatTitle, timestamp: $timestamp, longitude: $longitude, latitude: $latitude)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LocationChat &&
            (identical(other.uuid, uuid) ||
                const DeepCollectionEquality().equals(other.uuid, uuid)) &&
            (identical(other.lastMessage, lastMessage) ||
                const DeepCollectionEquality()
                    .equals(other.lastMessage, lastMessage)) &&
            (identical(other.lastSenderId, lastSenderId) ||
                const DeepCollectionEquality()
                    .equals(other.lastSenderId, lastSenderId)) &&
            (identical(other.chatTitle, chatTitle) ||
                const DeepCollectionEquality()
                    .equals(other.chatTitle, chatTitle)) &&
            (identical(other.timestamp, timestamp) ||
                const DeepCollectionEquality()
                    .equals(other.timestamp, timestamp)) &&
            (identical(other.longitude, longitude) ||
                const DeepCollectionEquality()
                    .equals(other.longitude, longitude)) &&
            (identical(other.latitude, latitude) ||
                const DeepCollectionEquality()
                    .equals(other.latitude, latitude)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(uuid) ^
      const DeepCollectionEquality().hash(lastMessage) ^
      const DeepCollectionEquality().hash(lastSenderId) ^
      const DeepCollectionEquality().hash(chatTitle) ^
      const DeepCollectionEquality().hash(timestamp) ^
      const DeepCollectionEquality().hash(longitude) ^
      const DeepCollectionEquality().hash(latitude);

  @JsonKey(ignore: true)
  @override
  _$LocationChatCopyWith<_LocationChat> get copyWith =>
      __$LocationChatCopyWithImpl<_LocationChat>(this, _$identity);
}

abstract class _LocationChat extends LocationChat {
  const factory _LocationChat(
      {required String uuid,
      required String lastMessage,
      required String lastSenderId,
      required Title chatTitle,
      required String timestamp,
      required double longitude,
      required double latitude}) = _$_LocationChat;
  const _LocationChat._() : super._();

  @override
  String get uuid => throw _privateConstructorUsedError;
  @override
  String get lastMessage => throw _privateConstructorUsedError;
  @override
  String get lastSenderId => throw _privateConstructorUsedError;
  @override
  Title get chatTitle => throw _privateConstructorUsedError;
  @override
  String get timestamp => throw _privateConstructorUsedError;
  @override
  double get longitude => throw _privateConstructorUsedError;
  @override
  double get latitude => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LocationChatCopyWith<_LocationChat> get copyWith =>
      throw _privateConstructorUsedError;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'chat_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ChatEventTearOff {
  const _$ChatEventTearOff();

  _ChatStarted chatStarted(String otherId) {
    return _ChatStarted(
      otherId,
    );
  }

  _RetrievedUserChats retrievedUserChats() {
    return const _RetrievedUserChats();
  }
}

/// @nodoc
const $ChatEvent = _$ChatEventTearOff();

/// @nodoc
mixin _$ChatEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String otherId) chatStarted,
    required TResult Function() retrievedUserChats,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String otherId)? chatStarted,
    TResult Function()? retrievedUserChats,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChatStarted value) chatStarted,
    required TResult Function(_RetrievedUserChats value) retrievedUserChats,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChatStarted value)? chatStarted,
    TResult Function(_RetrievedUserChats value)? retrievedUserChats,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatEventCopyWith<$Res> {
  factory $ChatEventCopyWith(ChatEvent value, $Res Function(ChatEvent) then) =
      _$ChatEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChatEventCopyWithImpl<$Res> implements $ChatEventCopyWith<$Res> {
  _$ChatEventCopyWithImpl(this._value, this._then);

  final ChatEvent _value;
  // ignore: unused_field
  final $Res Function(ChatEvent) _then;
}

/// @nodoc
abstract class _$ChatStartedCopyWith<$Res> {
  factory _$ChatStartedCopyWith(
          _ChatStarted value, $Res Function(_ChatStarted) then) =
      __$ChatStartedCopyWithImpl<$Res>;
  $Res call({String otherId});
}

/// @nodoc
class __$ChatStartedCopyWithImpl<$Res> extends _$ChatEventCopyWithImpl<$Res>
    implements _$ChatStartedCopyWith<$Res> {
  __$ChatStartedCopyWithImpl(
      _ChatStarted _value, $Res Function(_ChatStarted) _then)
      : super(_value, (v) => _then(v as _ChatStarted));

  @override
  _ChatStarted get _value => super._value as _ChatStarted;

  @override
  $Res call({
    Object? otherId = freezed,
  }) {
    return _then(_ChatStarted(
      otherId == freezed
          ? _value.otherId
          : otherId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ChatStarted implements _ChatStarted {
  const _$_ChatStarted(this.otherId);

  @override
  final String otherId;

  @override
  String toString() {
    return 'ChatEvent.chatStarted(otherId: $otherId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChatStarted &&
            (identical(other.otherId, otherId) ||
                const DeepCollectionEquality().equals(other.otherId, otherId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(otherId);

  @JsonKey(ignore: true)
  @override
  _$ChatStartedCopyWith<_ChatStarted> get copyWith =>
      __$ChatStartedCopyWithImpl<_ChatStarted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String otherId) chatStarted,
    required TResult Function() retrievedUserChats,
  }) {
    return chatStarted(otherId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String otherId)? chatStarted,
    TResult Function()? retrievedUserChats,
    required TResult orElse(),
  }) {
    if (chatStarted != null) {
      return chatStarted(otherId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChatStarted value) chatStarted,
    required TResult Function(_RetrievedUserChats value) retrievedUserChats,
  }) {
    return chatStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChatStarted value)? chatStarted,
    TResult Function(_RetrievedUserChats value)? retrievedUserChats,
    required TResult orElse(),
  }) {
    if (chatStarted != null) {
      return chatStarted(this);
    }
    return orElse();
  }
}

abstract class _ChatStarted implements ChatEvent {
  const factory _ChatStarted(String otherId) = _$_ChatStarted;

  String get otherId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ChatStartedCopyWith<_ChatStarted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RetrievedUserChatsCopyWith<$Res> {
  factory _$RetrievedUserChatsCopyWith(
          _RetrievedUserChats value, $Res Function(_RetrievedUserChats) then) =
      __$RetrievedUserChatsCopyWithImpl<$Res>;
}

/// @nodoc
class __$RetrievedUserChatsCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res>
    implements _$RetrievedUserChatsCopyWith<$Res> {
  __$RetrievedUserChatsCopyWithImpl(
      _RetrievedUserChats _value, $Res Function(_RetrievedUserChats) _then)
      : super(_value, (v) => _then(v as _RetrievedUserChats));

  @override
  _RetrievedUserChats get _value => super._value as _RetrievedUserChats;
}

/// @nodoc

class _$_RetrievedUserChats implements _RetrievedUserChats {
  const _$_RetrievedUserChats();

  @override
  String toString() {
    return 'ChatEvent.retrievedUserChats()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _RetrievedUserChats);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String otherId) chatStarted,
    required TResult Function() retrievedUserChats,
  }) {
    return retrievedUserChats();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String otherId)? chatStarted,
    TResult Function()? retrievedUserChats,
    required TResult orElse(),
  }) {
    if (retrievedUserChats != null) {
      return retrievedUserChats();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChatStarted value) chatStarted,
    required TResult Function(_RetrievedUserChats value) retrievedUserChats,
  }) {
    return retrievedUserChats(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChatStarted value)? chatStarted,
    TResult Function(_RetrievedUserChats value)? retrievedUserChats,
    required TResult orElse(),
  }) {
    if (retrievedUserChats != null) {
      return retrievedUserChats(this);
    }
    return orElse();
  }
}

abstract class _RetrievedUserChats implements ChatEvent {
  const factory _RetrievedUserChats() = _$_RetrievedUserChats;
}

/// @nodoc
class _$ChatStateTearOff {
  const _$ChatStateTearOff();

  _ChatState call(
      {required List<String> userIds,
      required Chat chat,
      required bool isLoading,
      required Either<DataFailure, Chat> failureOrChat,
      required Either<DataFailure, List<Chat>> userChats}) {
    return _ChatState(
      userIds: userIds,
      chat: chat,
      isLoading: isLoading,
      failureOrChat: failureOrChat,
      userChats: userChats,
    );
  }
}

/// @nodoc
const $ChatState = _$ChatStateTearOff();

/// @nodoc
mixin _$ChatState {
  List<String> get userIds => throw _privateConstructorUsedError;
  Chat get chat => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  Either<DataFailure, Chat> get failureOrChat =>
      throw _privateConstructorUsedError;
  Either<DataFailure, List<Chat>> get userChats =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatStateCopyWith<ChatState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatStateCopyWith<$Res> {
  factory $ChatStateCopyWith(ChatState value, $Res Function(ChatState) then) =
      _$ChatStateCopyWithImpl<$Res>;
  $Res call(
      {List<String> userIds,
      Chat chat,
      bool isLoading,
      Either<DataFailure, Chat> failureOrChat,
      Either<DataFailure, List<Chat>> userChats});

  $ChatCopyWith<$Res> get chat;
}

/// @nodoc
class _$ChatStateCopyWithImpl<$Res> implements $ChatStateCopyWith<$Res> {
  _$ChatStateCopyWithImpl(this._value, this._then);

  final ChatState _value;
  // ignore: unused_field
  final $Res Function(ChatState) _then;

  @override
  $Res call({
    Object? userIds = freezed,
    Object? chat = freezed,
    Object? isLoading = freezed,
    Object? failureOrChat = freezed,
    Object? userChats = freezed,
  }) {
    return _then(_value.copyWith(
      userIds: userIds == freezed
          ? _value.userIds
          : userIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      chat: chat == freezed
          ? _value.chat
          : chat // ignore: cast_nullable_to_non_nullable
              as Chat,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrChat: failureOrChat == freezed
          ? _value.failureOrChat
          : failureOrChat // ignore: cast_nullable_to_non_nullable
              as Either<DataFailure, Chat>,
      userChats: userChats == freezed
          ? _value.userChats
          : userChats // ignore: cast_nullable_to_non_nullable
              as Either<DataFailure, List<Chat>>,
    ));
  }

  @override
  $ChatCopyWith<$Res> get chat {
    return $ChatCopyWith<$Res>(_value.chat, (value) {
      return _then(_value.copyWith(chat: value));
    });
  }
}

/// @nodoc
abstract class _$ChatStateCopyWith<$Res> implements $ChatStateCopyWith<$Res> {
  factory _$ChatStateCopyWith(
          _ChatState value, $Res Function(_ChatState) then) =
      __$ChatStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<String> userIds,
      Chat chat,
      bool isLoading,
      Either<DataFailure, Chat> failureOrChat,
      Either<DataFailure, List<Chat>> userChats});

  @override
  $ChatCopyWith<$Res> get chat;
}

/// @nodoc
class __$ChatStateCopyWithImpl<$Res> extends _$ChatStateCopyWithImpl<$Res>
    implements _$ChatStateCopyWith<$Res> {
  __$ChatStateCopyWithImpl(_ChatState _value, $Res Function(_ChatState) _then)
      : super(_value, (v) => _then(v as _ChatState));

  @override
  _ChatState get _value => super._value as _ChatState;

  @override
  $Res call({
    Object? userIds = freezed,
    Object? chat = freezed,
    Object? isLoading = freezed,
    Object? failureOrChat = freezed,
    Object? userChats = freezed,
  }) {
    return _then(_ChatState(
      userIds: userIds == freezed
          ? _value.userIds
          : userIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      chat: chat == freezed
          ? _value.chat
          : chat // ignore: cast_nullable_to_non_nullable
              as Chat,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrChat: failureOrChat == freezed
          ? _value.failureOrChat
          : failureOrChat // ignore: cast_nullable_to_non_nullable
              as Either<DataFailure, Chat>,
      userChats: userChats == freezed
          ? _value.userChats
          : userChats // ignore: cast_nullable_to_non_nullable
              as Either<DataFailure, List<Chat>>,
    ));
  }
}

/// @nodoc

class _$_ChatState implements _ChatState {
  const _$_ChatState(
      {required this.userIds,
      required this.chat,
      required this.isLoading,
      required this.failureOrChat,
      required this.userChats});

  @override
  final List<String> userIds;
  @override
  final Chat chat;
  @override
  final bool isLoading;
  @override
  final Either<DataFailure, Chat> failureOrChat;
  @override
  final Either<DataFailure, List<Chat>> userChats;

  @override
  String toString() {
    return 'ChatState(userIds: $userIds, chat: $chat, isLoading: $isLoading, failureOrChat: $failureOrChat, userChats: $userChats)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChatState &&
            (identical(other.userIds, userIds) ||
                const DeepCollectionEquality()
                    .equals(other.userIds, userIds)) &&
            (identical(other.chat, chat) ||
                const DeepCollectionEquality().equals(other.chat, chat)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.failureOrChat, failureOrChat) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrChat, failureOrChat)) &&
            (identical(other.userChats, userChats) ||
                const DeepCollectionEquality()
                    .equals(other.userChats, userChats)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userIds) ^
      const DeepCollectionEquality().hash(chat) ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(failureOrChat) ^
      const DeepCollectionEquality().hash(userChats);

  @JsonKey(ignore: true)
  @override
  _$ChatStateCopyWith<_ChatState> get copyWith =>
      __$ChatStateCopyWithImpl<_ChatState>(this, _$identity);
}

abstract class _ChatState implements ChatState {
  const factory _ChatState(
      {required List<String> userIds,
      required Chat chat,
      required bool isLoading,
      required Either<DataFailure, Chat> failureOrChat,
      required Either<DataFailure, List<Chat>> userChats}) = _$_ChatState;

  @override
  List<String> get userIds => throw _privateConstructorUsedError;
  @override
  Chat get chat => throw _privateConstructorUsedError;
  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  Either<DataFailure, Chat> get failureOrChat =>
      throw _privateConstructorUsedError;
  @override
  Either<DataFailure, List<Chat>> get userChats =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ChatStateCopyWith<_ChatState> get copyWith =>
      throw _privateConstructorUsedError;
}

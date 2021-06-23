part of 'chat_bloc.dart';

@freezed
class ChatState with _$ChatState {
  const factory ChatState({
    required List<String> userIds,
    required Chat chat,
    required bool isLoading,
    required Either<DataFailure, Chat> failureOrChat,
  }) = _ChatState;

  factory ChatState.initial() => ChatState(
        userIds: [],
        chat: Chat.empty(),
        isLoading: false,
        failureOrChat: right(Chat.empty()),
      );
}

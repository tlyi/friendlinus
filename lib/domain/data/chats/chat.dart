import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:friendlinus/domain/core/value_objects.dart';
import 'package:friendlinus/domain/data/chats/chat_message/chat_message.dart';
import 'package:friendlinus/domain/data/chats/value_objects.dart';

part 'chat.freezed.dart';

@freezed
abstract class Chat implements _$Chat {
  const Chat._();

  const factory Chat({
    required String lastMessage,
    required String lastSenderId,
    required bool lastMessageRead,
    required String userIdsCombined,
    required List<String> userIds,
    required String timestamp,
  }) = _Chat;

  factory Chat.empty() => Chat(
        lastMessage: '',
        lastSenderId: '',
        lastMessageRead: false,
        userIdsCombined: '',
        userIds: [],
        timestamp: '',
      );
}

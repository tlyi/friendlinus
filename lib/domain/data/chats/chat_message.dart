import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:friendlinus/domain/core/value_objects.dart';
import 'package:friendlinus/domain/data/chats/value_objects.dart';

part 'chat_message.freezed.dart';

@freezed
abstract class ChatMessage implements _$ChatMessage {
  const ChatMessage._();

  const factory ChatMessage({
    required MessageBody messageBody,
    required DateTime timeSent,
    required String senderID,
  }) = _ChatMessage;
}

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:friendlinus/domain/core/value_objects.dart';
import 'package:friendlinus/domain/data/chats/value_objects.dart';

part 'chat.freezed.dart';

@freezed
abstract class Chat implements _$Chat {
  const Chat._();

  const factory Chat({
    required MessagePreview messagePreview,
    required String userIdsCombined,
    required List<String> userIds,
  }) = _Chat;

  factory Chat.empty() => Chat(
        messagePreview: MessagePreview('No messages yet'),
        userIdsCombined: '',
        userIds: [],
      );
}

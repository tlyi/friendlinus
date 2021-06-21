import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:friendlinus/domain/core/value_objects.dart';
import 'package:friendlinus/domain/data/chats/chat.dart';
import 'package:friendlinus/domain/data/chats/value_objects.dart';

part 'chat_dtos.freezed.dart';
part 'chat_dtos.g.dart';

@freezed
abstract class ChatDto implements _$ChatDto {
  const ChatDto._();

  const factory ChatDto({
    required String messagePreview,
    required String userIdsCombined,
    required List<String> userIds,
    required String timestamp,
  }) = _ChatDto;

  factory ChatDto.fromDomain(Chat chat) {
    return ChatDto(
      messagePreview: chat.messagePreview.getOrCrash(),
      userIdsCombined: chat.userIdsCombined,
      userIds: chat.userIds,
      timestamp: DateTime.now().millisecondsSinceEpoch.toString(),
    );
  }

  Chat toDomain() {
    return Chat(
      messagePreview: MessagePreview(messagePreview),
      userIdsCombined: userIdsCombined,
      userIds: userIds,
    );
  }

  factory ChatDto.fromJson(Map<String, dynamic> json) =>
      _$ChatDtoFromJson(json);

  factory ChatDto.fromFirestore(DocumentSnapshot doc) {
    return ChatDto.fromJson(doc.data()! as Map<String, dynamic>);
  }
}

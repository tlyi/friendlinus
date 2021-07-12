import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:friendlinus/domain/data/chats/location_chat.dart';
import 'package:friendlinus/domain/data/forum/value_objects.dart';

part 'location_chat_dtos.freezed.dart';
part 'location_chat_dtos.g.dart';

@freezed
abstract class LocationChatDto implements _$LocationChatDto {
  const LocationChatDto._();

  const factory LocationChatDto({
    required String chatId,
    required String creatorUserId,
    required String lastMessage,
    required String lastSenderId,
    required String chatTitle,
    required String timestamp,
    required double longitude,
    required double latitude,
  }) = _LocationChatDto;

  factory LocationChatDto.fromDomain(LocationChat locationChat) {
    return LocationChatDto(
        chatId: locationChat.chatId,
        creatorUserId: locationChat.creatorUserId,
        lastMessage: locationChat.lastMessage,
        lastSenderId: locationChat.lastSenderId,
        chatTitle: locationChat.chatTitle.getOrCrash(),
        timestamp: locationChat.timestamp,
        longitude: locationChat.longitude,
        latitude: locationChat.latitude);
  }

  LocationChat toDomain() {
    return LocationChat(
        chatId: chatId,
        creatorUserId: creatorUserId,
        lastMessage: lastMessage,
        lastSenderId: lastSenderId,
        chatTitle: Title(chatTitle),
        timestamp: timestamp,
        longitude: longitude,
        latitude: latitude);
  }

  factory LocationChatDto.fromJson(Map<String, dynamic> json) =>
      _$LocationChatDtoFromJson(json);

  factory LocationChatDto.fromFirestore(DocumentSnapshot doc) {
    return LocationChatDto.fromJson(doc.data()! as Map<String, dynamic>);
  }
}

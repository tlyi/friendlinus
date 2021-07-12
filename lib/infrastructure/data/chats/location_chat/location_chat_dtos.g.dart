// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_chat_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LocationChatDto _$_$_LocationChatDtoFromJson(Map<String, dynamic> json) {
  return _$_LocationChatDto(
    uuid: json['uuid'] as String,
    lastMessage: json['lastMessage'] as String,
    lastSenderId: json['lastSenderId'] as String,
    chatTitle: json['chatTitle'] as String,
    timestamp: json['timestamp'] as String,
    longitude: (json['longitude'] as num).toDouble(),
    latitude: (json['latitude'] as num).toDouble(),
  );
}

Map<String, dynamic> _$_$_LocationChatDtoToJson(_$_LocationChatDto instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'lastMessage': instance.lastMessage,
      'lastSenderId': instance.lastSenderId,
      'chatTitle': instance.chatTitle,
      'timestamp': instance.timestamp,
      'longitude': instance.longitude,
      'latitude': instance.latitude,
    };

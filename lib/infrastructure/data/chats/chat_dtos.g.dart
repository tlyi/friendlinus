// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChatDto _$_$_ChatDtoFromJson(Map<String, dynamic> json) {
  return _$_ChatDto(
    messagePreview: json['messagePreview'] as String,
    userIdsCombined: json['userIdsCombined'] as String,
    userIds:
        (json['userIds'] as List<dynamic>).map((e) => e as String).toList(),
    timestamp: json['timestamp'] as String,
  );
}

Map<String, dynamic> _$_$_ChatDtoToJson(_$_ChatDto instance) =>
    <String, dynamic>{
      'messagePreview': instance.messagePreview,
      'userIdsCombined': instance.userIdsCombined,
      'userIds': instance.userIds,
      'timestamp': instance.timestamp,
    };

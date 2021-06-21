// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProfileDto _$_$_ProfileDtoFromJson(Map<String, dynamic> json) {
  return _$_ProfileDto(
    photoUrl: json['photoUrl'] as String,
    username: json['username'] as String,
    course: json['course'] as String,
    bio: json['bio'] as String,
    module: json['module'] as String,
    uuid: json['uuid'] as String,
  );
}

Map<String, dynamic> _$_$_ProfileDtoToJson(_$_ProfileDto instance) =>
    <String, dynamic>{
      'photoUrl': instance.photoUrl,
      'username': instance.username,
      'course': instance.course,
      'bio': instance.bio,
      'module': instance.module,
      'uuid': instance.uuid,
    };

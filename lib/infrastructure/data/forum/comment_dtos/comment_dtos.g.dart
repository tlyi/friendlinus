// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CommentDto _$_$_CommentDtoFromJson(Map<String, dynamic> json) {
  return _$_CommentDto(
    commentId: json['commentId'] as String,
    userId: json['userId'] as String,
    commentText: json['commentText'] as String,
    isAnon: json['isAnon'] as bool,
    timestamp: json['timestamp'] as String,
  );
}

Map<String, dynamic> _$_$_CommentDtoToJson(_$_CommentDto instance) =>
    <String, dynamic>{
      'commentId': instance.commentId,
      'userId': instance.userId,
      'commentText': instance.commentText,
      'isAnon': instance.isAnon,
      'timestamp': instance.timestamp,
    };

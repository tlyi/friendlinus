import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:friendlinus/domain/core/value_objects.dart';
import 'package:friendlinus/domain/data/forum/value_objects.dart';

part 'comment.freezed.dart';

@freezed
abstract class Comment implements _$Comment {
  const Comment._();

  const factory Comment({
    required String commentId,
    required String userId,
    required CommentText commentText,
    required bool isAnon,
    required String timestamp,
  }) = _Comment;

  factory Comment.empty() => Comment(
        commentId: UniqueId('').getOrCrash(),
        userId: '',
        commentText: CommentText(''),
        isAnon: false,
        timestamp: '',
      );
}

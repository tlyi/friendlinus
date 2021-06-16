import 'dart:core';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:friendlinus/domain/data/forum/value_objects.dart';

part 'forum_post.freezed.dart';

@freezed
abstract class ForumPost implements _$ForumPost {
  const ForumPost._();

  const factory ForumPost({
    required Title title,
    required Tag tag,
    required Body body,
    required String photoUrl,
  }) = _ForumPost;

  factory ForumPost.empty() => ForumPost(
        title: Title(''),
        tag: Tag(''),
        body: Body(''),
        photoUrl: '',
      );
}

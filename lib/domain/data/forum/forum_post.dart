import 'dart:core';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:friendlinus/domain/data/forum/poll.dart';
import 'package:friendlinus/domain/data/forum/value_objects.dart';

part 'forum_post.freezed.dart';

@freezed
abstract class ForumPost implements _$ForumPost {
  const ForumPost._();

  const factory ForumPost({
    required Title title,
    required Tag tag,
    required Body body,
    required int likes,
    required String posterUserId,
    required bool isAnon,
    required String photoUrl,
    required bool photoAdded,
    required bool pollAdded, //Use this bool to check if poll exists and navigate to poll via forumId in firestore
  }) = _ForumPost;

  factory ForumPost.empty() => ForumPost(
        title: Title(''),
        tag: Tag(''),
        body: Body(''),
        likes: 0,
        posterUserId: '',
        isAnon: false,
        photoUrl: '',
        photoAdded: false,
        pollAdded: false,
      );
}

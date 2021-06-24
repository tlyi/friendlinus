import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:friendlinus/domain/data/forum/forum_post.dart';
import 'package:friendlinus/domain/data/forum/value_objects.dart';

part 'forum_post_dtos.freezed.dart';
part 'forum_post_dtos.g.dart';

@freezed
abstract class ForumPostDto implements _$ForumPostDto {
  const ForumPostDto._();

  const factory ForumPostDto({
    required String forumId,
    required String title,
    required String tag,
    required String body,
    required int likes,
    required String posterUserId,
    required bool isAnon,
    required String photoUrl,
    required bool photoAdded,
    required bool pollAdded,
    required String timestamp,

  }) = _ForumPostDto;

  factory ForumPostDto.fromDomain(ForumPost forumPost) {
    return ForumPostDto(
      forumId: forumPost.forumId,
      title: forumPost.title.getOrCrash(),
      tag: forumPost.tag.getOrCrash(),
      body: forumPost.body.getOrCrash(),
      likes: forumPost.likes,
      posterUserId: forumPost.posterUserId,
      isAnon: forumPost.isAnon,
      photoUrl: forumPost.photoUrl,
      photoAdded: forumPost.photoAdded,
      pollAdded: forumPost.pollAdded,
      timestamp: forumPost.timestamp,
    );
  }

  ForumPost toDomain() {
    return ForumPost(
      forumId: forumId,
      title: Title(title),
      tag: Tag(tag),
      body: Body(body),
      likes: likes,
      posterUserId: posterUserId,
      isAnon: isAnon,
      photoUrl: photoUrl,
      photoAdded: photoAdded,
      pollAdded: pollAdded,
      timestamp: timestamp,
    );
  }

  factory ForumPostDto.fromJson(Map<String, dynamic> json) =>
      _$ForumPostDtoFromJson(json);

  factory ForumPostDto.fromFirestore(DocumentSnapshot doc) {
    return ForumPostDto.fromJson(doc.data()! as Map<String, dynamic>);
  }
}

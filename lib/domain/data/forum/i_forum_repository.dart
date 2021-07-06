import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:friendlinus/domain/data/data_failure.dart';
import 'package:friendlinus/domain/data/forum/comment/comment.dart';
import 'package:friendlinus/domain/data/forum/forum_post/forum_post.dart';
import 'package:friendlinus/domain/data/forum/poll/poll.dart';

abstract class IForumRepository {
  Future<String> getOwnId();
  Future<Either<DataFailure, Unit>> create(ForumPost forumPost, String forumId);
  Future<Either<DataFailure, String>> uploadPhoto(File photo, String forumId);
  Future<Either<DataFailure, Unit>> createPoll(Poll poll, String forumId);
  Stream<Either<DataFailure, List<ForumPost>>> retrieveForums();
  Stream<Either<DataFailure, ForumPost>> retrieveForumPost(String forumId);
  Stream<Either<DataFailure, Poll>> retrievePoll(String forumId);
  Future<Either<DataFailure, Unit>> likeForum(String forumId, String userId);
  Future<Either<DataFailure, Unit>> unlikeForum(String forumId, String userId);
  Future<Either<DataFailure, Unit>> vote(
      String forumId, int index, String userId);
  Future<Either<DataFailure, Unit>> createComment(
      Comment comment, String forumId);
  Stream<Either<DataFailure, List<Comment>>> retrieveComments(
      String sortedBy, String forumId);
  Future<Either<DataFailure, Unit>> likeComment(
      String forumId, String commentId, String userId);
  Future<Either<DataFailure, Unit>> unlikeComment(
      String forumId, String commentId, String userId);
  Future<Either<DataFailure, Unit>> deleteForum(String forumId, bool hasPhoto);
}

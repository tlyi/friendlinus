import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:friendlinus/domain/data/data_failure.dart';
import 'package:friendlinus/domain/data/forum/comment/comment.dart';
import 'package:friendlinus/domain/data/forum/forum_post/forum_post.dart';
import 'package:friendlinus/domain/data/forum/poll/poll.dart';
import 'package:friendlinus/domain/mods/mod.dart';

abstract class IForumRepository {
  Future<String> getOwnId();

  Future<Either<DataFailure, Unit>> create(ForumPost forumPost, String forumId);

  Future<Either<DataFailure, String>> uploadPhoto(File photo, String forumId);

  Future<Either<DataFailure, Unit>> createPoll(Poll poll, String forumId);

  Stream<Either<DataFailure, List<ForumPost>>> retrieveForums();

  Stream<Either<DataFailure, ForumPost>> retrieveForumPost(String forumId);

  Stream<Either<DataFailure, Poll>> retrievePoll(String forumId);

  Future<Either<DataFailure, Unit>> likeForum(ForumPost forum, String userId);

  Future<Either<DataFailure, Unit>> unlikeForum(String forumId, String userId);

  Future<Either<DataFailure, Unit>> vote(
      String forumId, int index, String userId);

  Future<Either<DataFailure, Unit>> createComment(
      Comment comment, ForumPost forum);

  Stream<Either<DataFailure, List<Comment>>> retrieveComments(
      String sortedBy, String forumId);

  Future<Either<DataFailure, Unit>> likeComment(
      ForumPost forum, Comment comment, String userId);

  Future<Either<DataFailure, Unit>> unlikeComment(
      String forumId, String commentId, String userId);

  Future<Either<DataFailure, Unit>> deleteForum(String forumId, bool hasPhoto);

  Future<Either<DataFailure, List<String>>> searchModulesByModuleCode(
      String moduleCode);

  Stream<Either<DataFailure, List<Mod>>> retrieveModules();

  Stream<Either<DataFailure, List<ForumPost>>> retrieveModuleForums(
      String moduleCode);

  Stream<Either<DataFailure, List<ForumPost>>> retrieveHomeForums();

  Stream<Either<DataFailure, List<ForumPost>>> retrieveFollowingForums();

  Future<Either<DataFailure, List<ForumPost>>> searchForumByTitle(
      String queryStr);
}

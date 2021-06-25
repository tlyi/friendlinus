import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:friendlinus/domain/data/data_failure.dart';
import 'package:friendlinus/domain/data/forum/forum_post.dart';
import 'package:friendlinus/domain/data/forum/poll.dart';

abstract class IForumRepository {
  Future<Either<DataFailure, Unit>> create(ForumPost forumPost, String forumId);
  Future<Either<DataFailure, String>> uploadPhoto(File photo, String forumId);
  Future<Either<DataFailure, Unit>> createPoll(Poll poll, String forumId);
  Stream<Either<DataFailure, List<ForumPost>>> retrieveForums();
  Future<Either<DataFailure, Poll>> retrievePoll(String forumId);
  Future<Either<DataFailure, Unit>> like(String forumId, String userId);
  Future<Either<DataFailure, Unit>> unlike(String forumId, String userId);
  Future<Either<DataFailure, Unit>> vote(
      String forumId, int index, String userId);
}

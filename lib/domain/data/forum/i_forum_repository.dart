import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:friendlinus/domain/data/data_failure.dart';
import 'package:friendlinus/domain/data/forum/forum_post.dart';

abstract class IForumRepository {
  Future<Either<DataFailure, Unit>> create(ForumPost forumPost, String forumId);
  Future<Either<DataFailure, String>> uploadPhoto(File photo, String forumId);
}

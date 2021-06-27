import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:friendlinus/domain/core/value_objects.dart';
import 'package:friendlinus/domain/data/data_failure.dart';
import 'package:friendlinus/domain/data/profile/profile.dart';

abstract class IProfileRepository {
  Future<String> getUserId();

  Future<Either<DataFailure, Unit>> create(Profile profile);

  Future<Either<DataFailure, Unit>> update(Profile profile);

  Future<Either<DataFailure, String>> uploadPhoto(File photo);

  Future<Either<DataFailure, Profile>> readOwnProfile();

  Future<Either<DataFailure, Profile>> readOtherProfile(String username);

  Future<Either<DataFailure, List<Profile>>> searchProfileByUsername(
      String username);

  Future<Either<DataFailure, bool>> verifyUsernameUnique(String username);

  Future<Either<DataFailure, bool>> verifyUserRegistered();

  Future<Either<DataFailure, Unit>> addForum(String forumId);

  Future<bool> checkIfFollowing(String userId);

  Future<Either<DataFailure, Unit>> addFollower(String userToFollowId);

  Future<Either<DataFailure, Unit>> removeFollower(String userToFollowId);

  Future<List<Profile>> retrieveFollowing(
      String userId); //future consideration: Should this be a stream?

}

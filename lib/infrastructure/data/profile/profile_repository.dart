import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:friendlinus/domain/auth/i_auth_facade.dart';
import 'package:friendlinus/domain/core/errors.dart';
import 'package:friendlinus/domain/core/value_objects.dart';
import 'package:friendlinus/domain/data/data_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:friendlinus/domain/data/profile/i_profile_repository.dart';
import 'package:friendlinus/domain/data/profile/profile.dart';
import 'package:friendlinus/infrastructure/data/profile/profile_dtos.dart';
import 'package:friendlinus/injection.dart';
import 'package:injectable/injectable.dart';
import 'package:friendlinus/infrastructure/core/firestore_helpers.dart';

//This files contains all the actions that can be done to the data
//The argument to all the functions here should be entities

@LazySingleton(as: IProfileRepository)
class ProfileRepository implements IProfileRepository {
  final FirebaseFirestore _firestore;
  final FirebaseStorage _firebaseStorage;

  ProfileRepository(this._firestore, this._firebaseStorage);

  @override
  Future<String> getUserId() async {
    final userDoc = await _firestore.userDocument();
    return userDoc.id;
  }

  @override
  Future<Either<DataFailure, Unit>> create(Profile profile) async {
    try {
      final userDoc = await _firestore.userDocument();
      final profileDto = ProfileDto.fromDomain(profile);

      await userDoc.set(profileDto.toJson());

      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const DataFailure.insufficientPermission());
      } else {
        return left(const DataFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<DataFailure, Unit>> update(Profile profile) async {
    try {
      final userDoc = await _firestore.userDocument();
      final profileDto = ProfileDto.fromDomain(profile);

      await userDoc.update(profileDto.toJson());

      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const DataFailure.insufficientPermission());
      } else if (e.message!.contains('NOT_FOUND')) {
        return left(const DataFailure.unableToUpdate());
      } else {
        return left(const DataFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<DataFailure, String>> uploadPhoto(File photo) async {
    final userOption = await getIt<IAuthFacade>().getSignedInUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    final String userID = user.id.getOrCrash();

    UploadTask storageUploadTask;
    storageUploadTask = _firebaseStorage
        .ref()
        .child('profilePictures')
        .child(userID)
        .child(userID)
        .putFile(photo);

    try {
      final String url = await storageUploadTask.then((ref) async {
        return ref.ref.getDownloadURL();
      });
      return right(url);
    } on FirebaseException catch (e) {
      print(e.code);
      return left(const DataFailure.unexpected());
    }
  }

  @override
  Future<Either<DataFailure, Profile>> readOwnProfile() async {
    final userDoc = await _firestore.userDocument();
    try {
      return userDoc.get().then((DocumentSnapshot doc) =>
          right(ProfileDto.fromFirestore(doc).toDomain()));
    } on FirebaseException catch (e) {
      print(e);
      return left(const DataFailure.unexpected());
    }
  }

  @override
  Future<Either<DataFailure, List<Profile>>> searchProfileByUsername(
      String username) async {
    final searchResults = <Profile>[];
    final usersRef = await _firestore.usersRef();
    try {
      QuerySnapshot query = await usersRef
          .where('username', isGreaterThanOrEqualTo: username)
          .where('username', isLessThanOrEqualTo: '$username~')
          .get();
      {
        if (query.docs.isNotEmpty) {
          for (final doc in query.docs) {
            searchResults.add(ProfileDto.fromFirestore(doc).toDomain());
          }
        }
        return right(searchResults);
      }
    } on FirebaseException catch (e) {
      print(e);
      return left(const DataFailure.unexpected());
    }
  }

  @override
  Future<Either<DataFailure, Profile>> readOtherProfile(String username) async {
    final usersRef = await _firestore.usersRef();
    try {
      QuerySnapshot query =
          await usersRef.where('username', isEqualTo: username).get();
      {
        if (query.docs.isNotEmpty) {
          return right(ProfileDto.fromFirestore(query.docs[0]).toDomain());
        } else {
          return right(Profile.empty());
        }
      }
    } on FirebaseException catch (e) {
      print(e);
      return left(const DataFailure.unexpected());
    }
  }

  @override
  Future<Either<DataFailure, bool>> verifyUsernameUnique(
      String username) async {
    final otherProfile = await readOtherProfile(username);
    return otherProfile.fold((_) => left(const DataFailure.unexpected()),
        (profile) {
      if (profile == Profile.empty()) {
        return right(true);
      } else {
        return right(false);
      }
    });
  }

  @override
  Future<Either<DataFailure, bool>> verifyUserRegistered() async {
    final userDoc = await _firestore.userDocument();
    try {
      return userDoc.get().then((docSnapshot) {
        final bool userRegistered = docSnapshot.exists;
        return right(userRegistered);
      });
    } on FirebaseException catch (e) {
      print(e);
      return left(const DataFailure.unexpected());
    }
  }

  @override
  Future<Either<DataFailure, Unit>> addForum(String forumId) async {
    try {
      final userDoc = await _firestore.userDocument();
      await userDoc.update({
        'forumsPosted': FieldValue.arrayUnion([forumId])
      });
      return right(unit);
    } on FirebaseException catch (e) {
      print(e);
      return left(const DataFailure.unexpected());
    }
  }

  @override
  Future<bool> checkIfFollowing(String userId) async {
    final usersRef = await _firestore.usersRef();
    final ownId = await getUserId();
    QuerySnapshot query = await usersRef
        .where('uuid', isEqualTo: ownId)
        .where('following', arrayContains: userId)
        .get();

    return query.docs.isNotEmpty;
  }

  @override
  Future<Either<DataFailure, Unit>> addFollower(String userToFollowId) async {
    try {
      final ownId = await getUserId();
      final ownDoc = await _firestore.userDocument();
      final otherUserDoc = await _firestore.userDocumentById(userToFollowId);
      WriteBatch batch = _firestore.batch();
      batch.update(ownDoc, {
        'following': FieldValue.arrayUnion([userToFollowId])
      });
      batch.update(otherUserDoc, {
        'followedBy': FieldValue.arrayUnion([ownId])
      });
      await batch.commit();
      return right(unit);
    } on FirebaseException catch (e) {
      print(e);
      return left(const DataFailure.unexpected());
    }
  }

  @override
  Future<Either<DataFailure, Unit>> removeFollower(
      String userToFollowId) async {
    try {
      final ownId = await getUserId();
      final ownDoc = await _firestore.userDocument();
      final otherUserDoc = await _firestore.userDocumentById(userToFollowId);
      WriteBatch batch = _firestore.batch();
      batch.update(ownDoc, {
        'following': FieldValue.arrayRemove([userToFollowId])
      });
      batch.update(otherUserDoc, {
        'followedBy': FieldValue.arrayRemove([ownId])
      });
      await batch.commit();
      return right(unit);
    } on FirebaseException catch (e) {
      print(e);
      return left(const DataFailure.unexpected());
    }
  }

  @override
  Future<List<Profile>> retrieveFollowing(String userId) async {
    final following = <Profile>[];
    final usersRef = await _firestore.usersRef();
    try {
      QuerySnapshot query =
          await usersRef.where('followedBy', arrayContains: userId).get();
      {
        if (query.docs.isNotEmpty) {
          for (final doc in query.docs) {
            following.add(ProfileDto.fromFirestore(doc).toDomain());
          }
        }
        return following;
      }
    } on FirebaseException catch (e) {
      print(e);
      return following;
    }
  }
}

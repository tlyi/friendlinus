import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:friendlinus/domain/data/forum/forum_post.dart';
import 'package:friendlinus/domain/data/data_failure.dart';
import 'package:friendlinus/domain/data/forum/i_forum_repository.dart';
import 'package:friendlinus/domain/data/forum/poll.dart';
import 'package:friendlinus/infrastructure/data/forum/forum_post_dtos.dart';
import 'package:friendlinus/infrastructure/data/forum/poll_dtos.dart';
import 'package:injectable/injectable.dart';
import 'package:friendlinus/infrastructure/core/firestore_helpers.dart';

@LazySingleton(as: IForumRepository)
class ForumPostRepository implements IForumRepository {
  final FirebaseFirestore _firestore;
  final FirebaseStorage _firebaseStorage;

  ForumPostRepository(this._firestore, this._firebaseStorage);

  @override
  Future<Either<DataFailure, Unit>> create(
      ForumPost forumPost, String forumId) async {
    try {
      final forumsRef = await _firestore.forumsRef();
      final forumPostDto = ForumPostDto.fromDomain(forumPost);

      await forumsRef.doc(forumId).set(forumPostDto.toJson());
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
  Future<Either<DataFailure, String>> uploadPhoto(
      File photo, String forumId) async {
    UploadTask storageUploadTask;
    storageUploadTask = _firebaseStorage
        .ref()
        .child('forumPictures')
        .child(forumId)
        .child(forumId)
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
  Future<Either<DataFailure, Unit>> createPoll(
      Poll poll, String forumId) async {
    try {
      final pollDoc = await _firestore.pollDocument(forumId);
      final pollDto = PollDto.fromDomain(poll);

      await pollDoc.set(pollDto.toJson());
      
      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const DataFailure.insufficientPermission());
      } else {
        return left(const DataFailure.unexpected());
      }
    }
  }
}

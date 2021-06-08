import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:friendlinus/domain/auth/i_auth_facade.dart';
import 'package:friendlinus/domain/core/errors.dart';
import 'package:friendlinus/domain/data/data_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:friendlinus/domain/data/i_data_repository.dart';
import 'package:friendlinus/injection.dart';
import 'package:injectable/injectable.dart';
import 'package:friendlinus/infrastructure/core/firestore_helpers.dart';

@LazySingleton(as: IDataRepository)
class DataRepository implements IDataRepository {
  final FirebaseFirestore _firestore;
  final FirebaseStorage _firebaseStorage;

  DataRepository(this._firestore, this._firebaseStorage);

  @override
  Future<Either<DataFailure, Unit>> create(String photoUrl, String username,
      String course, String bio, String module) async {
    try {
      final userDoc = await _firestore.userDocument();

      await userDoc.set({
        'photoUrl': photoUrl,
        'username': username,
        'course': course,
        'bio': bio,
        'module': module,
      });

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

    /* //Upload photo to Firebase Storage
    try {
       TaskSnapshot task = await storageUploadTask;
    } on FirebaseException catch (e) {
      print(e.code);
      return left(const DataFailure.unexpected());
    } */

    //Get download URL from Firebase Storage
    try {
      final String url = await storageUploadTask.then((ref) async {
        return await ref.ref.getDownloadURL();
      });
      return right(url);
    } on FirebaseException catch (e) {
      print(e.code);
      return left(const DataFailure.unexpected());
    }
  }
}

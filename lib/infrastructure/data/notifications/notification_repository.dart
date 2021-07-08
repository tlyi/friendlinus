import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:friendlinus/domain/data/data_failure.dart';
import 'package:friendlinus/domain/data/notifications/i_notification_repository.dart';
import 'package:friendlinus/domain/data/profile/profile.dart';
import 'package:friendlinus/domain/data/notifications/notification.dart';
import 'package:friendlinus/infrastructure/data/notifications/notification_dtos.dart';
import 'package:friendlinus/infrastructure/data/profile/profile_dtos.dart';
import 'package:injectable/injectable.dart';
import 'package:friendlinus/infrastructure/core/firestore_helpers.dart';

@LazySingleton(as: INotificationRepository)
class NotificationRepository implements INotificationRepository {
  final FirebaseFirestore _firestore;
  final FirebaseStorage _firebaseStorage;

  NotificationRepository(this._firestore, this._firebaseStorage);

  @override
  Future<String> getOwnId() async {
    final userDoc = await _firestore.userDocument();
    return userDoc.id;
  }

  @override
  Stream<Either<DataFailure, int>> retrieveNumberUnreadChats(
      {required String userId}) async* {
    final chatsRef = await _firestore.chatsRef();
    yield* chatsRef
        .where('userIds', arrayContains: userId)
        .where('lastSenderId', isNotEqualTo: userId)
        .where('lastMessageRead', isEqualTo: false)
        .snapshots()
        .map((docSnapshot) => right<DataFailure, int>(docSnapshot.docs.length))
        .handleError((e) {
      if (e is FirebaseException && e.message!.contains('PERMISSION_DENIED')) {
        return left(const DataFailure.insufficientPermission());
      } else {
        print(e);
        return left(const DataFailure.unexpected());
      }
    });
  }

  @override
  Stream<Either<DataFailure, int>> retrieveNumberUnreadNotifications(
      {required String userId}) async* {
    final notificationsRef = await _firestore.notificationsUserRef(userId);
    yield* notificationsRef
        .where('isRead', isEqualTo: false)
        .snapshots()
        .map((docSnapshot) => right<DataFailure, int>(docSnapshot.docs.length))
        .handleError((e) {
      if (e is FirebaseException && e.message!.contains('PERMISSION_DENIED')) {
        return left(const DataFailure.insufficientPermission());
      } else {
        print(e);
        return left(const DataFailure.unexpected());
      }
    });
  }

  @override
  Stream<Either<DataFailure, List<Notification>>> retrieveNotifications(
      String userId) async* {
    final notificationsRef = await _firestore.notificationsUserRef(userId);
    yield* notificationsRef
        .orderBy('timestamp', descending: true)
        .snapshots()
        .map(
      (snapshot) {
        if (snapshot.docs.isNotEmpty) {
          for (final DocumentSnapshot doc in snapshot.docs) {
            String notifId = doc.id;
            notificationsRef.doc(notifId).update({'isRead': true});
          }
        }
        return right<DataFailure, List<Notification>>(
          snapshot.docs
              .map((doc) => NotificationDto.fromFirestore(doc).toDomain())
              .toList(),
        );
      },
    ).handleError((e) {
      if (e is FirebaseException && e.message!.contains('PERMISSION_DENIED')) {
        return left(const DataFailure.insufficientPermission());
      } else {
        print(e);
        return left(const DataFailure.unexpected());
      }
    });
  }

  @override
  Future<Either<DataFailure, Profile>> searchProfileByUuid(String uuid) async {
    try {
      final usersRef = await _firestore.usersRef();
      return usersRef.doc(uuid).get().then((DocumentSnapshot doc) =>
          right(ProfileDto.fromFirestore(doc).toDomain()));
    } on FirebaseException catch (e) {
      print(e);
      return left(const DataFailure.unexpected());
    }
  }
}

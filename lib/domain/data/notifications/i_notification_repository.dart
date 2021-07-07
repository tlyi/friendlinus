import 'package:dartz/dartz.dart';
import 'package:friendlinus/domain/data/data_failure.dart';
import 'package:friendlinus/domain/data/notifications/notification.dart';
import 'package:friendlinus/domain/data/profile/profile.dart';

abstract class INotificationRepository {
  Future<String> getOwnId();
  Stream<Either<DataFailure, int>> retrieveNumberUnreadChats(
      {required String userId});
  Stream<Either<DataFailure, int>> retrieveNumberUnreadNotifications(
      {required String userId});
  Stream<Either<DataFailure, List<Notification>>> retrieveNotifications(
      String userId);
  Future<Either<DataFailure, Profile>> searchProfileByUuid(String uuid);
}

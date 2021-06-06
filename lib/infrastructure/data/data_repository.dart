import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:friendlinus/domain/data/data_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:friendlinus/domain/data/i_data_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:friendlinus/infrastructure/core/firestore_helpers.dart';

@LazySingleton(as: IDataRepository)
class DataRepository implements IDataRepository {
  final FirebaseFirestore _firestore;

  DataRepository(this._firestore);

  @override
  Future<Either<DataFailure, Unit>> create(
      String username, String course, String bio, String module) async {
    try {
      final userDoc = await _firestore.userDocument();

      await userDoc.set({
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
}

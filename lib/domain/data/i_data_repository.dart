import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:friendlinus/domain/data/data_failure.dart';

abstract class IDataRepository {
  Future<Either<DataFailure, Unit>> create(
    String photoUrl,
    String username,
    String course,
    String bio,
    String module,
  );

  Future<Either<DataFailure, String>> uploadPhoto(File photo);
}

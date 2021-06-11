import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:friendlinus/domain/data/data_failure.dart';
import 'package:friendlinus/domain/data/profile/profile.dart';

abstract class IDataRepository {
  Future<Either<DataFailure, Unit>> create(Profile profile);

  Future<Either<DataFailure, String>> uploadPhoto(File photo);
}

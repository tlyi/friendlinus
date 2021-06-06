import 'package:dartz/dartz.dart';
import 'package:friendlinus/domain/data/data_failure.dart';

abstract class IDataRepository {
  Future<Either<DataFailure, Unit>> create(
    String username,
    String course,
    String bio,
    String module,
  );
}

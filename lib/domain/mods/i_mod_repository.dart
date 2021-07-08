import 'package:dartz/dartz.dart';
import 'package:friendlinus/domain/data/data_failure.dart';
import 'package:friendlinus/domain/mods/mod.dart';

abstract class IModRepository {
  Future<Either<DataFailure, List<Mod>>> getMods();
  Future<Either<DataFailure, Unit>> uploadMods();
  Future<Either<DataFailure, Unit>> addLastPosted();
}

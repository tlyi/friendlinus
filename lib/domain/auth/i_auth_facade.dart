import 'package:dartz/dartz.dart';
import 'package:friendlinus/domain/auth/auth_failures.dart';
import 'package:friendlinus/domain/auth/user.dart';
import 'package:friendlinus/domain/auth/value_objects.dart';
import 'package:injectable/injectable.dart';

abstract class IAuthFacade {
  Future<Option<User>> getSignedInUser();

  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  });

  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  });

  Future<void> signOut();
}

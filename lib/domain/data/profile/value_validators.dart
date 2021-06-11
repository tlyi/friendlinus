import 'package:dartz/dartz.dart';
import 'package:friendlinus/domain/core/failures.dart';
import 'package:friendlinus/domain/data/profile/profile.dart';
import 'package:friendlinus/infrastructure/data/profile/profile_repository.dart';
import 'package:injectable/injectable.dart';

import 'package:friendlinus/domain/data/data_failure.dart';

Either<ValueFailure<String>, String> validateUsernameFormat(String input) {
  // ignore: unnecessary_raw_strings
  const usernameRegex = r'^[a-z0-9._]*$';
  if (RegExp(usernameRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidUsernameFormat(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateUsernameUnique(String input) {
  // TODO: Check if username exists in usersRef
  if (input == ' not unique ') {
    return left(ValueFailure.usernameTaken(failedValue: input));
  } else {
    return right(input);
  }
}

import 'package:dartz/dartz.dart';
import 'package:friendlinus/domain/core/failures.dart';

Either<ValueFailure<String>, String> validateUsernameFormat(String input) {
  // ignore: unnecessary_raw_strings
  const usernameRegex = r'^[a-zA-Z0-9._]';
  if (RegExp(usernameRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidUsernameFormat(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateUsernameUnique(String input) {
  // TODO: Check if username exists in usersRef
  const usernameRegex = r'^[a-zA-Z0-9._]';
  if (RegExp(usernameRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.usernameTaken(failedValue: input));
  }
}

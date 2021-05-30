import 'package:dartz/dartz.dart';
import 'package:friendlinus/domain/core/failures.dart';

Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  const idRegex = r'^e\d{7}@u.nus.edu$';
  if (RegExp(idRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidEmail(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validatePassword(String input) {
  if (input.length >= 6) {
    return right(input);
  } else {
    return left(ValueFailure.shortPassword(failedValue: input));
  }
}

import 'package:dartz/dartz.dart';
import 'package:friendlinus/domain/core/failures.dart';
import 'package:friendlinus/domain/core/value_objects.dart';
import 'package:friendlinus/domain/core/value_validators.dart';
import 'package:friendlinus/domain/data/profile/value_validators.dart';

class Username extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 16;

  factory Username(String input) {
    return Username._(validateMaxStringLength(input, maxLength)
        .flatMap(validateUsernameUnique)
        .flatMap(validateStringNotEmpty)
        .flatMap(validateUsernameFormat));
  }

  const Username._(this.value);
}

//course; TO DO: Validate against database of courses
class Course extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 20;

  factory Course(String input) {
    return Course._(validateMaxStringLength(input, maxLength)
        .flatMap(validateStringNotEmpty));
  }

  const Course._(this.value);
}

class Bio extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 80;

  factory Bio(String input) {
    return Bio._(validateMaxStringLength(input, maxLength));
  }

  const Bio._(this.value);
}

//module; TO DO: Validate against database of modules (NUSMods API)
class Mod extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 6;

  factory Mod(String input) {
    return Mod._(validateMaxStringLength(input, maxLength));
  }

  const Mod._(this.value);
}

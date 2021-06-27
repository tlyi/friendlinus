import 'package:dartz/dartz.dart';
import 'package:friendlinus/domain/core/failures.dart';
import 'package:friendlinus/domain/core/value_objects.dart';
import 'package:friendlinus/domain/core/value_validators.dart';

class Title extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 25;

  factory Title(String input) {
    return Title._(validateMaxStringLength(input, maxLength)
        .flatMap(validateStringNotEmpty));
  }

  const Title._(this.value);
}

class Tag extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 6;

  factory Tag(String input) {
    return Tag._(validateMaxStringLength(input, maxLength));
  }

  const Tag._(this.value);
}

class Body extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 200;

  factory Body(String input) {
    return Body._(validateMaxStringLength(input, maxLength));
  }

  const Body._(this.value);
}

class PollOption extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 15;

  factory PollOption(String input) {
    return PollOption._(validateMaxStringLength(input, maxLength)
        .flatMap(validateStringNotEmpty));
  }

  const PollOption._(this.value);
}

class CommentText extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 100;

  factory CommentText(String input) {
    return CommentText._(validateMaxStringLength(input, maxLength)
        .flatMap(validateStringNotEmpty));
  }

  const CommentText._(this.value);
}

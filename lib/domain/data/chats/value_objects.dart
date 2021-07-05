import 'package:dartz/dartz.dart';
import 'package:friendlinus/domain/core/failures.dart';
import 'package:friendlinus/domain/core/value_objects.dart';
import 'package:friendlinus/domain/core/value_validators.dart';

class MessageBody extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 4096;

  factory MessageBody(String input) {
    return MessageBody._(validateMaxStringLength(input, maxLength));
  }

  const MessageBody._(this.value);
}

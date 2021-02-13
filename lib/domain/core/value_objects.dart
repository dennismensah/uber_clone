import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uber_clone/domain/core/errors.dart';
import 'package:uber_clone/domain/core/value_failure.dart';
import 'package:uber_clone/domain/core/value_validators.dart';
import 'package:uuid/uuid.dart';

@immutable
abstract class ValueObject<T> {
  const ValueObject();
  Either<ValueFailure<T>, T> get value;

  // Get the value if it's valid or throw an error
  /// Throws [UnexpectedValueError] containing the [ValueFailure]
  T getOrCrash() {
    return value.fold((f) => throw UnexpectedValueError(f), id);
  }

  // Check whether value is valid
  Either<ValueFailure<dynamic>, Unit> get failureOrUnit {
    return value.fold(
      (l) => left(l),
      (r) => right(unit),
    );
  }

  bool isValid() => value.isRight();

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is ValueObject<T> && o.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Value($value)';
}

class UniqueId extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory UniqueId() {
    return UniqueId._(
      right(Uuid().v1()),
    );
  }

  factory UniqueId.fromUniqueString(String uniqueId) {
    assert(uniqueId != null);
    return UniqueId._(
      right(uniqueId),
    );
  }

  const UniqueId._(this.value);
}

class RequiredField extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory RequiredField(String input) {
    assert(input != null);
    return RequiredField._(
      validateStringNotEmpty(input),
    );
  }

  const RequiredField._(this.value);
}

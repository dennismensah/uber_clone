import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uber_clone/domain/auth/value_objects.dart';
import 'package:uber_clone/domain/core/value_failure.dart';
import 'package:uber_clone/domain/core/value_objects.dart';

part 'user.freezed.dart';

@freezed
abstract class User with _$User {
  const factory User({
    @required UniqueId id,
    @required PhoneNumber phone,
    @required EmailAddress email,
  }) = _User;

  factory User.empty() => User(
        id: UniqueId(),
        phone: PhoneNumber(''),
        email: EmailAddress(''),
      );

  // Option<ValueFailure<dynamic>> get failureOption {
  //   return phone.failureOrUnit
  //       .andThen(email.failureOrUnit)
  //       .fold((f) => some(f), (_) => none());
  // }
}

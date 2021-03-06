import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:uber_clone/domain/auth/auth_failure.dart';
import 'package:uber_clone/domain/auth/user.dart';
import 'package:uber_clone/domain/core/value_objects.dart';

import 'value_objects.dart';

abstract class IAuthFacade {
  Future<Option<User>> getSignedInUser();
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    @required RequiredField firstName,
    @required RequiredField lastName,
    @required EmailAddress emailAddress,
    @required Password password,
    @required Password confirmPassword,
    @required PhoneNumber phoneNumber,
  });
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  });
  Future<Either<AuthFailure, Unit>> signInWithGoogle();
  Future<void> signOut();
}

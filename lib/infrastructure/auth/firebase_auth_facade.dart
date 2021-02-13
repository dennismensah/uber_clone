import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart' hide User;
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:uber_clone/domain/auth/auth_failure.dart';
import 'package:uber_clone/domain/auth/i_auth_facade.dart';
import 'package:uber_clone/domain/auth/user.dart';
import 'package:uber_clone/domain/auth/value_objects.dart';
import 'package:uber_clone/domain/core/value_objects.dart';
import './firebase_user_mapper.dart';
import 'package:uber_clone/infrastructure/core/firestore_helpers.dart';

@LazySingleton(as: IAuthFacade)
class FirebaseAuthFacade implements IAuthFacade {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;
  final FirebaseFirestore _fireStore;

  FirebaseAuthFacade(
    this._firebaseAuth,
    this._googleSignIn,
    this._fireStore,
  );

  @override
  Future<Option<User>> getSignedInUser() async =>
      optionOf(_firebaseAuth.currentUser?.toDomain());

  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    @required RequiredField firstName,
    @required RequiredField lastName,
    @required EmailAddress emailAddress,
    @required Password password,
    @required Password confirmPassword,
    @required PhoneNumber phoneNumber,
  }) async {
    final firstNameStr = firstName.getOrCrash();
    final lastNameStr = lastName.getOrCrash();
    final emailAddressStr = emailAddress.getOrCrash();
    final passwordStr = password.getOrCrash();
    final phoneStr = phoneNumber.getOrCrash();
    try {
      final userCreds = await _firebaseAuth.createUserWithEmailAndPassword(
        email: emailAddressStr,
        password: passwordStr,
      );
      final userDoc = await _fireStore.userDocument();
      if (userCreds != null) {
        await userDoc.set({
          'firstName': firstNameStr,
          'lastName': lastNameStr,
          'phoneNumber': phoneStr,
        });
      }
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'ERROR_EMAIL_ALREADY_IN_USE') {
        return left(const AuthFailure.emailAlreadyInUse());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  }) async {
    final emailAddressStr = emailAddress.getOrCrash();
    final passwordStr = password.getOrCrash();
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
        email: emailAddressStr,
        password: passwordStr,
      );
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'ERROR_WRONG_PASSWORD' ||
          e.code == 'ERROR_USER_NOT_FOUND') {
        return left(const AuthFailure.invalidEmailAndPasswordCombination());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() async {
    try {
      final googleUser = await _googleSignIn.signIn();
      if (googleUser == null) {
        return left(const AuthFailure.cancelledByUser());
      }

      final googleAuthentication = await googleUser.authentication;

      final authCredential = GoogleAuthProvider.credential(
        idToken: googleAuthentication.idToken,
        accessToken: googleAuthentication.accessToken,
      );

      await _firebaseAuth.signInWithCredential(authCredential);
      return right(unit);
    } on FirebaseAuthException catch (_) {
      return left(const AuthFailure.serverError());
    } on PlatformException catch (e) {
      debugPrint('plat $e');
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<void> signOut() => Future.wait([
        _googleSignIn.signOut(),
        _firebaseAuth.signOut(),
      ]);
}

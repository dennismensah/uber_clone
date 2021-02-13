import 'package:firebase_auth/firebase_auth.dart' as firebase;
import 'package:uber_clone/domain/auth/user.dart';
import 'package:uber_clone/domain/auth/value_objects.dart';
import 'package:uber_clone/domain/core/value_objects.dart';

extension FirebaseUserDomainX on firebase.User {
  User toDomain() {
    return User(
      id: UniqueId.fromUniqueString(uid),
      phone: PhoneNumber(''),
      email:EmailAddress(''),
    );
  }
}

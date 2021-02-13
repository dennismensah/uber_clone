import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:uber_clone/application/auth/auth_bloc.dart';
import 'package:uber_clone/domain/auth/i_auth_facade.dart';
import 'package:mockito/mockito.dart';
import 'package:uber_clone/domain/auth/user.dart';
import 'package:uber_clone/domain/auth/value_objects.dart';
import 'package:uber_clone/domain/core/value_objects.dart';

class MockAuthFacade extends Mock implements IAuthFacade {}

void main() {
  final mockAuthFacade = MockAuthFacade();
  group('AuthBloc', () {
    blocTest(
      'emits [] when nothing is added',
      build: () => AuthBloc(mockAuthFacade),
      expect: [],
    );

    group('when user is authenticated', () {
      final user = User(
        id: UniqueId.fromUniqueString('7757559678975576'),
        phone: PhoneNumber('0207860987'),
        email: EmailAddress('dmtkay@yahoo.com'),
      );
      blocTest(
        'should emit [AuthState.authenticated()] when AuthEvent.authCheckRequested is called',
        build: () {
          when(mockAuthFacade.getSignedInUser())
              .thenAnswer((_) async => Future.value(some(user)));
          return AuthBloc(mockAuthFacade);
        },
        act: (bloc) => bloc.add(const AuthEvent.authCheckRequested()),
        expect: [const AuthState.authenticated()],
        verify: (_) {
          verify(mockAuthFacade.getSignedInUser()).called(1);
        },
      );
      blocTest(
        'should emit [AuthState.unauthenticated] when AuthEvent.signedOut is added',
        build: () => AuthBloc(mockAuthFacade),
        act: (bloc) => bloc.add(const AuthEvent.signedOut()),
        expect: [const AuthState.unauthenticated()],
      );
    });
    group('when user is unauthenticated', () {
      blocTest(
        'should emit [AuthState.authenticated()] when AuthEvent.authCheckRequested is called',
        build: () {
          when(mockAuthFacade.getSignedInUser())
              .thenAnswer((_) async => Future.value(none()));
          return AuthBloc(mockAuthFacade);
        },
        act: (bloc) => bloc.add(const AuthEvent.authCheckRequested()),
        expect: [const AuthState.unauthenticated()],
        verify: (_) {
          verify(mockAuthFacade.getSignedInUser()).called(1);
        },
      );
    });
  });
}

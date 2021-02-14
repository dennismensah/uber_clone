import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:uber_clone/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:uber_clone/domain/auth/i_auth_facade.dart';
import 'package:mockito/mockito.dart';
import 'package:uber_clone/domain/auth/value_objects.dart';
import 'package:uber_clone/domain/core/value_failure.dart';

class MockAuthFacade extends Mock implements IAuthFacade {}

void main() {
  final mockAuthFacade = MockAuthFacade();
  group('SignIn Bloc', () {
    blocTest(
      'emits [] when nothing is added',
      build: () => SignInFormBloc(mockAuthFacade),
      expect: [],
    );

    group('when form is valid', () {
      const email = "dmtkay@yahoo.com";
      const password = "dmtkay";

      blocTest(
        'should have an email value of (dmtkay@yahoo.com) when SignInFormEvent.emailChanged is called',
        build: () => SignInFormBloc(mockAuthFacade),
        act: (bloc) => bloc.add(const SignInFormEvent.emailChanged(email)),
        verify: (bloc) =>
            (bloc as SignInFormBloc).state.emailAddress == EmailAddress(email),
      );

      blocTest(
        'should have an password value of (dmtkay) when SignInFormEvent.passwordChanged is called',
        build: () => SignInFormBloc(mockAuthFacade),
        act: (bloc) =>
            bloc.add(const SignInFormEvent.passwordChanged(password)),
        verify: (bloc) =>
            (bloc as SignInFormBloc).state.password == Password(password),
      );
    });

    group('when form is invalid', () {
      const email = "dmtkayyahoo.com";
      const password = "dmtka";

      blocTest(
        'should return a ValueFailure when SignInFormEvent.emailChanged is called',
        build: () => SignInFormBloc(mockAuthFacade),
        act: (bloc) => bloc.add(const SignInFormEvent.emailChanged(email)),
        verify: (bloc) =>
            (bloc as SignInFormBloc).state.emailAddress.value ==
            left(
              const ValueFailure.invalidEmail(failedValue: email),
            ),
      );

      blocTest(
        'should return a ValueFailure when SignInFormEvent.passwordChanged is called',
        build: () => SignInFormBloc(mockAuthFacade),
        act: (bloc) =>
            bloc.add(const SignInFormEvent.passwordChanged(password)),
        verify: (bloc) =>
            (bloc as SignInFormBloc).state.password.value ==
            left(
              const ValueFailure.shortPassword(failedValue: password),
            ),
      );
    });
  });
}

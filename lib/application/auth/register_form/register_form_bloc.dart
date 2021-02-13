import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:uber_clone/domain/auth/auth_failure.dart';
import 'package:uber_clone/domain/auth/i_auth_facade.dart';
import 'package:uber_clone/domain/auth/value_objects.dart';
import 'package:uber_clone/domain/core/value_objects.dart';

part 'register_form_event.dart';
part 'register_form_state.dart';
part 'register_form_bloc.freezed.dart';

@Injectable()
class RegisterFormBloc extends Bloc<RegisterFormEvent, RegisterFormState> {
  final IAuthFacade _authFacade;

  RegisterFormBloc(this._authFacade) : super(RegisterFormState.initial());

  @override
  Stream<RegisterFormState> mapEventToState(
    RegisterFormEvent event,
  ) async* {
    yield* event.map(
      firstNameChanged: (e) async* {
        yield state.copyWith(
          firstName: RequiredField(e.firstNameStr),
          authFailureOrSuccessOption: none(),
        );
      },
      lastNameChanged: (e) async* {
        yield state.copyWith(
          lastName: RequiredField(e.lastNameStr),
          authFailureOrSuccessOption: none(),
        );
      },
      emailChanged: (e) async* {
        yield state.copyWith(
          emailAddress: EmailAddress(e.emailStr),
          authFailureOrSuccessOption: none(),
        );
      },
      passwordChanged: (e) async* {
        yield state.copyWith(
          password: Password(e.passwordStr),
          authFailureOrSuccessOption: none(),
        );
      },
      confirmPasswordChanged: (e) async* {
        yield state.copyWith(
          confirmPassword: Password(e.confirmPasswordStr),
          authFailureOrSuccessOption: none(),
        );
      },
      phoneNumberChanged: (e) async* {
        yield state.copyWith(
          password: Password(e.phoneNumberStr),
          authFailureOrSuccessOption: none(),
        );
      },
      registerPressed: (e) async* {
        yield* _register(
          _authFacade.registerWithEmailAndPassword,
        );
      },
    );
  }

  Stream<RegisterFormState> _register(
    Future<Either<AuthFailure, Unit>> Function({
      @required RequiredField firstName,
      @required RequiredField lastName,
      @required EmailAddress emailAddress,
      @required Password password,
      @required Password confirmPassword,
      @required PhoneNumber phoneNumber,
    })
        forwardedCall,
  ) async* {
    Either<AuthFailure, Unit> failureOrSuccess;
    final isfirstNameValid = state.firstName.isValid();
    final isLastNameValid = state.lastName.isValid();
    final isEmailValid = state.emailAddress.isValid();
    final isPasswordValid = state.password.isValid();
    final isconfirmPasswordValid = state.confirmPassword.isValid();
    final isPhoneNumberValid = state.phoneNumber.isValid();

    if (isfirstNameValid &&
        isLastNameValid &&
        isEmailValid &&
        isPasswordValid &&
        isconfirmPasswordValid &&
        isPhoneNumberValid) {
      yield state.copyWith(
        isSubmitting: true,
        authFailureOrSuccessOption: none(),
      );

      failureOrSuccess = await forwardedCall(
          firstName: state.firstName,
          lastName: state.lastName,
          emailAddress: state.emailAddress,
          password: state.password,
          confirmPassword: state.confirmPassword,
          phoneNumber: state.phoneNumber,);
    }

    yield state.copyWith(
      isSubmitting: false,
      showErrorMessages: true,
      authFailureOrSuccessOption: optionOf(failureOrSuccess),
    );
  }
}

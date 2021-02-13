part of 'register_form_bloc.dart';

@freezed
abstract class RegisterFormState with _$RegisterFormState {
  const factory RegisterFormState({
    @required RequiredField firstName,
    @required RequiredField lastName,
    @required EmailAddress emailAddress,
    @required Password password,
    @required Password confirmPassword,
    @required PhoneNumber phoneNumber,
    @required bool showErrorMessages,
    @required bool isSubmitting,
    @required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
  }) = _RegisterFormState;

  factory RegisterFormState.initial() => RegisterFormState(
        firstName: RequiredField(''),
        lastName: RequiredField(''),
        emailAddress: EmailAddress(''),
        password: Password(''),
        confirmPassword: Password(''),
        phoneNumber: PhoneNumber(''),
        showErrorMessages: false,
        isSubmitting: false,
        authFailureOrSuccessOption: none(),
      );
}

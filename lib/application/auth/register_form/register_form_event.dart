part of 'register_form_bloc.dart';

@freezed
abstract class RegisterFormEvent with _$RegisterFormEvent {
  const factory RegisterFormEvent.firstNameChanged(String firstNameStr) = FirstNameChanged;
  const factory RegisterFormEvent.lastNameChanged(String lastNameStr) = LastNameChanged;
  const factory RegisterFormEvent.emailChanged(String emailStr) = EmailChanged;
  const factory RegisterFormEvent.passwordChanged(String passwordStr) = PasswordChanged;
  const factory RegisterFormEvent.confirmPasswordChanged(String confirmPasswordStr) = ConfirmPasswordChanged;
  const factory RegisterFormEvent.phoneNumberChanged(String phoneNumberStr) =
      PhoneNumberChanged;
  const factory RegisterFormEvent.registerPressed() =
      RegisterPressed;
}
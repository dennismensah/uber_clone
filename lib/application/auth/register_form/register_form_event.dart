part of 'register_form_bloc.dart';

@freezed
abstract class RegisterFormEvent with _$RegisterFormEvent {
  const factory RegisterFormEvent.emailChanged(String emailStr) = EmailChanged;
  const factory RegisterFormEvent.passwordChanged(String passwordStr) = PasswordChanged;
  const factory RegisterFormEvent.phoneNumberChanged(String phoneNumberStr) =
      PhoneNumberChanged;
  const factory RegisterFormEvent.registerPressed() =
      RegisterPressed;
}
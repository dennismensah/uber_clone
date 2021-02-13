// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'register_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$RegisterFormEventTearOff {
  const _$RegisterFormEventTearOff();

// ignore: unused_element
  FirstNameChanged firstNameChanged(String firstNameStr) {
    return FirstNameChanged(
      firstNameStr,
    );
  }

// ignore: unused_element
  LastNameChanged lastNameChanged(String lastNameStr) {
    return LastNameChanged(
      lastNameStr,
    );
  }

// ignore: unused_element
  EmailChanged emailChanged(String emailStr) {
    return EmailChanged(
      emailStr,
    );
  }

// ignore: unused_element
  PasswordChanged passwordChanged(String passwordStr) {
    return PasswordChanged(
      passwordStr,
    );
  }

// ignore: unused_element
  ConfirmPasswordChanged confirmPasswordChanged(String confirmPasswordStr) {
    return ConfirmPasswordChanged(
      confirmPasswordStr,
    );
  }

// ignore: unused_element
  PhoneNumberChanged phoneNumberChanged(String phoneNumberStr) {
    return PhoneNumberChanged(
      phoneNumberStr,
    );
  }

// ignore: unused_element
  RegisterPressed registerPressed() {
    return const RegisterPressed();
  }
}

/// @nodoc
// ignore: unused_element
const $RegisterFormEvent = _$RegisterFormEventTearOff();

/// @nodoc
mixin _$RegisterFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult firstNameChanged(String firstNameStr),
    @required TResult lastNameChanged(String lastNameStr),
    @required TResult emailChanged(String emailStr),
    @required TResult passwordChanged(String passwordStr),
    @required TResult confirmPasswordChanged(String confirmPasswordStr),
    @required TResult phoneNumberChanged(String phoneNumberStr),
    @required TResult registerPressed(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult firstNameChanged(String firstNameStr),
    TResult lastNameChanged(String lastNameStr),
    TResult emailChanged(String emailStr),
    TResult passwordChanged(String passwordStr),
    TResult confirmPasswordChanged(String confirmPasswordStr),
    TResult phoneNumberChanged(String phoneNumberStr),
    TResult registerPressed(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult firstNameChanged(FirstNameChanged value),
    @required TResult lastNameChanged(LastNameChanged value),
    @required TResult emailChanged(EmailChanged value),
    @required TResult passwordChanged(PasswordChanged value),
    @required TResult confirmPasswordChanged(ConfirmPasswordChanged value),
    @required TResult phoneNumberChanged(PhoneNumberChanged value),
    @required TResult registerPressed(RegisterPressed value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult firstNameChanged(FirstNameChanged value),
    TResult lastNameChanged(LastNameChanged value),
    TResult emailChanged(EmailChanged value),
    TResult passwordChanged(PasswordChanged value),
    TResult confirmPasswordChanged(ConfirmPasswordChanged value),
    TResult phoneNumberChanged(PhoneNumberChanged value),
    TResult registerPressed(RegisterPressed value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $RegisterFormEventCopyWith<$Res> {
  factory $RegisterFormEventCopyWith(
          RegisterFormEvent value, $Res Function(RegisterFormEvent) then) =
      _$RegisterFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$RegisterFormEventCopyWithImpl<$Res>
    implements $RegisterFormEventCopyWith<$Res> {
  _$RegisterFormEventCopyWithImpl(this._value, this._then);

  final RegisterFormEvent _value;
  // ignore: unused_field
  final $Res Function(RegisterFormEvent) _then;
}

/// @nodoc
abstract class $FirstNameChangedCopyWith<$Res> {
  factory $FirstNameChangedCopyWith(
          FirstNameChanged value, $Res Function(FirstNameChanged) then) =
      _$FirstNameChangedCopyWithImpl<$Res>;
  $Res call({String firstNameStr});
}

/// @nodoc
class _$FirstNameChangedCopyWithImpl<$Res>
    extends _$RegisterFormEventCopyWithImpl<$Res>
    implements $FirstNameChangedCopyWith<$Res> {
  _$FirstNameChangedCopyWithImpl(
      FirstNameChanged _value, $Res Function(FirstNameChanged) _then)
      : super(_value, (v) => _then(v as FirstNameChanged));

  @override
  FirstNameChanged get _value => super._value as FirstNameChanged;

  @override
  $Res call({
    Object firstNameStr = freezed,
  }) {
    return _then(FirstNameChanged(
      firstNameStr == freezed ? _value.firstNameStr : firstNameStr as String,
    ));
  }
}

/// @nodoc
class _$FirstNameChanged implements FirstNameChanged {
  const _$FirstNameChanged(this.firstNameStr) : assert(firstNameStr != null);

  @override
  final String firstNameStr;

  @override
  String toString() {
    return 'RegisterFormEvent.firstNameChanged(firstNameStr: $firstNameStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FirstNameChanged &&
            (identical(other.firstNameStr, firstNameStr) ||
                const DeepCollectionEquality()
                    .equals(other.firstNameStr, firstNameStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(firstNameStr);

  @JsonKey(ignore: true)
  @override
  $FirstNameChangedCopyWith<FirstNameChanged> get copyWith =>
      _$FirstNameChangedCopyWithImpl<FirstNameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult firstNameChanged(String firstNameStr),
    @required TResult lastNameChanged(String lastNameStr),
    @required TResult emailChanged(String emailStr),
    @required TResult passwordChanged(String passwordStr),
    @required TResult confirmPasswordChanged(String confirmPasswordStr),
    @required TResult phoneNumberChanged(String phoneNumberStr),
    @required TResult registerPressed(),
  }) {
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(confirmPasswordChanged != null);
    assert(phoneNumberChanged != null);
    assert(registerPressed != null);
    return firstNameChanged(firstNameStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult firstNameChanged(String firstNameStr),
    TResult lastNameChanged(String lastNameStr),
    TResult emailChanged(String emailStr),
    TResult passwordChanged(String passwordStr),
    TResult confirmPasswordChanged(String confirmPasswordStr),
    TResult phoneNumberChanged(String phoneNumberStr),
    TResult registerPressed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (firstNameChanged != null) {
      return firstNameChanged(firstNameStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult firstNameChanged(FirstNameChanged value),
    @required TResult lastNameChanged(LastNameChanged value),
    @required TResult emailChanged(EmailChanged value),
    @required TResult passwordChanged(PasswordChanged value),
    @required TResult confirmPasswordChanged(ConfirmPasswordChanged value),
    @required TResult phoneNumberChanged(PhoneNumberChanged value),
    @required TResult registerPressed(RegisterPressed value),
  }) {
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(confirmPasswordChanged != null);
    assert(phoneNumberChanged != null);
    assert(registerPressed != null);
    return firstNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult firstNameChanged(FirstNameChanged value),
    TResult lastNameChanged(LastNameChanged value),
    TResult emailChanged(EmailChanged value),
    TResult passwordChanged(PasswordChanged value),
    TResult confirmPasswordChanged(ConfirmPasswordChanged value),
    TResult phoneNumberChanged(PhoneNumberChanged value),
    TResult registerPressed(RegisterPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (firstNameChanged != null) {
      return firstNameChanged(this);
    }
    return orElse();
  }
}

abstract class FirstNameChanged implements RegisterFormEvent {
  const factory FirstNameChanged(String firstNameStr) = _$FirstNameChanged;

  String get firstNameStr;
  @JsonKey(ignore: true)
  $FirstNameChangedCopyWith<FirstNameChanged> get copyWith;
}

/// @nodoc
abstract class $LastNameChangedCopyWith<$Res> {
  factory $LastNameChangedCopyWith(
          LastNameChanged value, $Res Function(LastNameChanged) then) =
      _$LastNameChangedCopyWithImpl<$Res>;
  $Res call({String lastNameStr});
}

/// @nodoc
class _$LastNameChangedCopyWithImpl<$Res>
    extends _$RegisterFormEventCopyWithImpl<$Res>
    implements $LastNameChangedCopyWith<$Res> {
  _$LastNameChangedCopyWithImpl(
      LastNameChanged _value, $Res Function(LastNameChanged) _then)
      : super(_value, (v) => _then(v as LastNameChanged));

  @override
  LastNameChanged get _value => super._value as LastNameChanged;

  @override
  $Res call({
    Object lastNameStr = freezed,
  }) {
    return _then(LastNameChanged(
      lastNameStr == freezed ? _value.lastNameStr : lastNameStr as String,
    ));
  }
}

/// @nodoc
class _$LastNameChanged implements LastNameChanged {
  const _$LastNameChanged(this.lastNameStr) : assert(lastNameStr != null);

  @override
  final String lastNameStr;

  @override
  String toString() {
    return 'RegisterFormEvent.lastNameChanged(lastNameStr: $lastNameStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LastNameChanged &&
            (identical(other.lastNameStr, lastNameStr) ||
                const DeepCollectionEquality()
                    .equals(other.lastNameStr, lastNameStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(lastNameStr);

  @JsonKey(ignore: true)
  @override
  $LastNameChangedCopyWith<LastNameChanged> get copyWith =>
      _$LastNameChangedCopyWithImpl<LastNameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult firstNameChanged(String firstNameStr),
    @required TResult lastNameChanged(String lastNameStr),
    @required TResult emailChanged(String emailStr),
    @required TResult passwordChanged(String passwordStr),
    @required TResult confirmPasswordChanged(String confirmPasswordStr),
    @required TResult phoneNumberChanged(String phoneNumberStr),
    @required TResult registerPressed(),
  }) {
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(confirmPasswordChanged != null);
    assert(phoneNumberChanged != null);
    assert(registerPressed != null);
    return lastNameChanged(lastNameStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult firstNameChanged(String firstNameStr),
    TResult lastNameChanged(String lastNameStr),
    TResult emailChanged(String emailStr),
    TResult passwordChanged(String passwordStr),
    TResult confirmPasswordChanged(String confirmPasswordStr),
    TResult phoneNumberChanged(String phoneNumberStr),
    TResult registerPressed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (lastNameChanged != null) {
      return lastNameChanged(lastNameStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult firstNameChanged(FirstNameChanged value),
    @required TResult lastNameChanged(LastNameChanged value),
    @required TResult emailChanged(EmailChanged value),
    @required TResult passwordChanged(PasswordChanged value),
    @required TResult confirmPasswordChanged(ConfirmPasswordChanged value),
    @required TResult phoneNumberChanged(PhoneNumberChanged value),
    @required TResult registerPressed(RegisterPressed value),
  }) {
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(confirmPasswordChanged != null);
    assert(phoneNumberChanged != null);
    assert(registerPressed != null);
    return lastNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult firstNameChanged(FirstNameChanged value),
    TResult lastNameChanged(LastNameChanged value),
    TResult emailChanged(EmailChanged value),
    TResult passwordChanged(PasswordChanged value),
    TResult confirmPasswordChanged(ConfirmPasswordChanged value),
    TResult phoneNumberChanged(PhoneNumberChanged value),
    TResult registerPressed(RegisterPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (lastNameChanged != null) {
      return lastNameChanged(this);
    }
    return orElse();
  }
}

abstract class LastNameChanged implements RegisterFormEvent {
  const factory LastNameChanged(String lastNameStr) = _$LastNameChanged;

  String get lastNameStr;
  @JsonKey(ignore: true)
  $LastNameChangedCopyWith<LastNameChanged> get copyWith;
}

/// @nodoc
abstract class $EmailChangedCopyWith<$Res> {
  factory $EmailChangedCopyWith(
          EmailChanged value, $Res Function(EmailChanged) then) =
      _$EmailChangedCopyWithImpl<$Res>;
  $Res call({String emailStr});
}

/// @nodoc
class _$EmailChangedCopyWithImpl<$Res>
    extends _$RegisterFormEventCopyWithImpl<$Res>
    implements $EmailChangedCopyWith<$Res> {
  _$EmailChangedCopyWithImpl(
      EmailChanged _value, $Res Function(EmailChanged) _then)
      : super(_value, (v) => _then(v as EmailChanged));

  @override
  EmailChanged get _value => super._value as EmailChanged;

  @override
  $Res call({
    Object emailStr = freezed,
  }) {
    return _then(EmailChanged(
      emailStr == freezed ? _value.emailStr : emailStr as String,
    ));
  }
}

/// @nodoc
class _$EmailChanged implements EmailChanged {
  const _$EmailChanged(this.emailStr) : assert(emailStr != null);

  @override
  final String emailStr;

  @override
  String toString() {
    return 'RegisterFormEvent.emailChanged(emailStr: $emailStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EmailChanged &&
            (identical(other.emailStr, emailStr) ||
                const DeepCollectionEquality()
                    .equals(other.emailStr, emailStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(emailStr);

  @JsonKey(ignore: true)
  @override
  $EmailChangedCopyWith<EmailChanged> get copyWith =>
      _$EmailChangedCopyWithImpl<EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult firstNameChanged(String firstNameStr),
    @required TResult lastNameChanged(String lastNameStr),
    @required TResult emailChanged(String emailStr),
    @required TResult passwordChanged(String passwordStr),
    @required TResult confirmPasswordChanged(String confirmPasswordStr),
    @required TResult phoneNumberChanged(String phoneNumberStr),
    @required TResult registerPressed(),
  }) {
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(confirmPasswordChanged != null);
    assert(phoneNumberChanged != null);
    assert(registerPressed != null);
    return emailChanged(emailStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult firstNameChanged(String firstNameStr),
    TResult lastNameChanged(String lastNameStr),
    TResult emailChanged(String emailStr),
    TResult passwordChanged(String passwordStr),
    TResult confirmPasswordChanged(String confirmPasswordStr),
    TResult phoneNumberChanged(String phoneNumberStr),
    TResult registerPressed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(emailStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult firstNameChanged(FirstNameChanged value),
    @required TResult lastNameChanged(LastNameChanged value),
    @required TResult emailChanged(EmailChanged value),
    @required TResult passwordChanged(PasswordChanged value),
    @required TResult confirmPasswordChanged(ConfirmPasswordChanged value),
    @required TResult phoneNumberChanged(PhoneNumberChanged value),
    @required TResult registerPressed(RegisterPressed value),
  }) {
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(confirmPasswordChanged != null);
    assert(phoneNumberChanged != null);
    assert(registerPressed != null);
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult firstNameChanged(FirstNameChanged value),
    TResult lastNameChanged(LastNameChanged value),
    TResult emailChanged(EmailChanged value),
    TResult passwordChanged(PasswordChanged value),
    TResult confirmPasswordChanged(ConfirmPasswordChanged value),
    TResult phoneNumberChanged(PhoneNumberChanged value),
    TResult registerPressed(RegisterPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class EmailChanged implements RegisterFormEvent {
  const factory EmailChanged(String emailStr) = _$EmailChanged;

  String get emailStr;
  @JsonKey(ignore: true)
  $EmailChangedCopyWith<EmailChanged> get copyWith;
}

/// @nodoc
abstract class $PasswordChangedCopyWith<$Res> {
  factory $PasswordChangedCopyWith(
          PasswordChanged value, $Res Function(PasswordChanged) then) =
      _$PasswordChangedCopyWithImpl<$Res>;
  $Res call({String passwordStr});
}

/// @nodoc
class _$PasswordChangedCopyWithImpl<$Res>
    extends _$RegisterFormEventCopyWithImpl<$Res>
    implements $PasswordChangedCopyWith<$Res> {
  _$PasswordChangedCopyWithImpl(
      PasswordChanged _value, $Res Function(PasswordChanged) _then)
      : super(_value, (v) => _then(v as PasswordChanged));

  @override
  PasswordChanged get _value => super._value as PasswordChanged;

  @override
  $Res call({
    Object passwordStr = freezed,
  }) {
    return _then(PasswordChanged(
      passwordStr == freezed ? _value.passwordStr : passwordStr as String,
    ));
  }
}

/// @nodoc
class _$PasswordChanged implements PasswordChanged {
  const _$PasswordChanged(this.passwordStr) : assert(passwordStr != null);

  @override
  final String passwordStr;

  @override
  String toString() {
    return 'RegisterFormEvent.passwordChanged(passwordStr: $passwordStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PasswordChanged &&
            (identical(other.passwordStr, passwordStr) ||
                const DeepCollectionEquality()
                    .equals(other.passwordStr, passwordStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(passwordStr);

  @JsonKey(ignore: true)
  @override
  $PasswordChangedCopyWith<PasswordChanged> get copyWith =>
      _$PasswordChangedCopyWithImpl<PasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult firstNameChanged(String firstNameStr),
    @required TResult lastNameChanged(String lastNameStr),
    @required TResult emailChanged(String emailStr),
    @required TResult passwordChanged(String passwordStr),
    @required TResult confirmPasswordChanged(String confirmPasswordStr),
    @required TResult phoneNumberChanged(String phoneNumberStr),
    @required TResult registerPressed(),
  }) {
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(confirmPasswordChanged != null);
    assert(phoneNumberChanged != null);
    assert(registerPressed != null);
    return passwordChanged(passwordStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult firstNameChanged(String firstNameStr),
    TResult lastNameChanged(String lastNameStr),
    TResult emailChanged(String emailStr),
    TResult passwordChanged(String passwordStr),
    TResult confirmPasswordChanged(String confirmPasswordStr),
    TResult phoneNumberChanged(String phoneNumberStr),
    TResult registerPressed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (passwordChanged != null) {
      return passwordChanged(passwordStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult firstNameChanged(FirstNameChanged value),
    @required TResult lastNameChanged(LastNameChanged value),
    @required TResult emailChanged(EmailChanged value),
    @required TResult passwordChanged(PasswordChanged value),
    @required TResult confirmPasswordChanged(ConfirmPasswordChanged value),
    @required TResult phoneNumberChanged(PhoneNumberChanged value),
    @required TResult registerPressed(RegisterPressed value),
  }) {
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(confirmPasswordChanged != null);
    assert(phoneNumberChanged != null);
    assert(registerPressed != null);
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult firstNameChanged(FirstNameChanged value),
    TResult lastNameChanged(LastNameChanged value),
    TResult emailChanged(EmailChanged value),
    TResult passwordChanged(PasswordChanged value),
    TResult confirmPasswordChanged(ConfirmPasswordChanged value),
    TResult phoneNumberChanged(PhoneNumberChanged value),
    TResult registerPressed(RegisterPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordChanged implements RegisterFormEvent {
  const factory PasswordChanged(String passwordStr) = _$PasswordChanged;

  String get passwordStr;
  @JsonKey(ignore: true)
  $PasswordChangedCopyWith<PasswordChanged> get copyWith;
}

/// @nodoc
abstract class $ConfirmPasswordChangedCopyWith<$Res> {
  factory $ConfirmPasswordChangedCopyWith(ConfirmPasswordChanged value,
          $Res Function(ConfirmPasswordChanged) then) =
      _$ConfirmPasswordChangedCopyWithImpl<$Res>;
  $Res call({String confirmPasswordStr});
}

/// @nodoc
class _$ConfirmPasswordChangedCopyWithImpl<$Res>
    extends _$RegisterFormEventCopyWithImpl<$Res>
    implements $ConfirmPasswordChangedCopyWith<$Res> {
  _$ConfirmPasswordChangedCopyWithImpl(ConfirmPasswordChanged _value,
      $Res Function(ConfirmPasswordChanged) _then)
      : super(_value, (v) => _then(v as ConfirmPasswordChanged));

  @override
  ConfirmPasswordChanged get _value => super._value as ConfirmPasswordChanged;

  @override
  $Res call({
    Object confirmPasswordStr = freezed,
  }) {
    return _then(ConfirmPasswordChanged(
      confirmPasswordStr == freezed
          ? _value.confirmPasswordStr
          : confirmPasswordStr as String,
    ));
  }
}

/// @nodoc
class _$ConfirmPasswordChanged implements ConfirmPasswordChanged {
  const _$ConfirmPasswordChanged(this.confirmPasswordStr)
      : assert(confirmPasswordStr != null);

  @override
  final String confirmPasswordStr;

  @override
  String toString() {
    return 'RegisterFormEvent.confirmPasswordChanged(confirmPasswordStr: $confirmPasswordStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ConfirmPasswordChanged &&
            (identical(other.confirmPasswordStr, confirmPasswordStr) ||
                const DeepCollectionEquality()
                    .equals(other.confirmPasswordStr, confirmPasswordStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(confirmPasswordStr);

  @JsonKey(ignore: true)
  @override
  $ConfirmPasswordChangedCopyWith<ConfirmPasswordChanged> get copyWith =>
      _$ConfirmPasswordChangedCopyWithImpl<ConfirmPasswordChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult firstNameChanged(String firstNameStr),
    @required TResult lastNameChanged(String lastNameStr),
    @required TResult emailChanged(String emailStr),
    @required TResult passwordChanged(String passwordStr),
    @required TResult confirmPasswordChanged(String confirmPasswordStr),
    @required TResult phoneNumberChanged(String phoneNumberStr),
    @required TResult registerPressed(),
  }) {
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(confirmPasswordChanged != null);
    assert(phoneNumberChanged != null);
    assert(registerPressed != null);
    return confirmPasswordChanged(confirmPasswordStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult firstNameChanged(String firstNameStr),
    TResult lastNameChanged(String lastNameStr),
    TResult emailChanged(String emailStr),
    TResult passwordChanged(String passwordStr),
    TResult confirmPasswordChanged(String confirmPasswordStr),
    TResult phoneNumberChanged(String phoneNumberStr),
    TResult registerPressed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (confirmPasswordChanged != null) {
      return confirmPasswordChanged(confirmPasswordStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult firstNameChanged(FirstNameChanged value),
    @required TResult lastNameChanged(LastNameChanged value),
    @required TResult emailChanged(EmailChanged value),
    @required TResult passwordChanged(PasswordChanged value),
    @required TResult confirmPasswordChanged(ConfirmPasswordChanged value),
    @required TResult phoneNumberChanged(PhoneNumberChanged value),
    @required TResult registerPressed(RegisterPressed value),
  }) {
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(confirmPasswordChanged != null);
    assert(phoneNumberChanged != null);
    assert(registerPressed != null);
    return confirmPasswordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult firstNameChanged(FirstNameChanged value),
    TResult lastNameChanged(LastNameChanged value),
    TResult emailChanged(EmailChanged value),
    TResult passwordChanged(PasswordChanged value),
    TResult confirmPasswordChanged(ConfirmPasswordChanged value),
    TResult phoneNumberChanged(PhoneNumberChanged value),
    TResult registerPressed(RegisterPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (confirmPasswordChanged != null) {
      return confirmPasswordChanged(this);
    }
    return orElse();
  }
}

abstract class ConfirmPasswordChanged implements RegisterFormEvent {
  const factory ConfirmPasswordChanged(String confirmPasswordStr) =
      _$ConfirmPasswordChanged;

  String get confirmPasswordStr;
  @JsonKey(ignore: true)
  $ConfirmPasswordChangedCopyWith<ConfirmPasswordChanged> get copyWith;
}

/// @nodoc
abstract class $PhoneNumberChangedCopyWith<$Res> {
  factory $PhoneNumberChangedCopyWith(
          PhoneNumberChanged value, $Res Function(PhoneNumberChanged) then) =
      _$PhoneNumberChangedCopyWithImpl<$Res>;
  $Res call({String phoneNumberStr});
}

/// @nodoc
class _$PhoneNumberChangedCopyWithImpl<$Res>
    extends _$RegisterFormEventCopyWithImpl<$Res>
    implements $PhoneNumberChangedCopyWith<$Res> {
  _$PhoneNumberChangedCopyWithImpl(
      PhoneNumberChanged _value, $Res Function(PhoneNumberChanged) _then)
      : super(_value, (v) => _then(v as PhoneNumberChanged));

  @override
  PhoneNumberChanged get _value => super._value as PhoneNumberChanged;

  @override
  $Res call({
    Object phoneNumberStr = freezed,
  }) {
    return _then(PhoneNumberChanged(
      phoneNumberStr == freezed
          ? _value.phoneNumberStr
          : phoneNumberStr as String,
    ));
  }
}

/// @nodoc
class _$PhoneNumberChanged implements PhoneNumberChanged {
  const _$PhoneNumberChanged(this.phoneNumberStr)
      : assert(phoneNumberStr != null);

  @override
  final String phoneNumberStr;

  @override
  String toString() {
    return 'RegisterFormEvent.phoneNumberChanged(phoneNumberStr: $phoneNumberStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PhoneNumberChanged &&
            (identical(other.phoneNumberStr, phoneNumberStr) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumberStr, phoneNumberStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(phoneNumberStr);

  @JsonKey(ignore: true)
  @override
  $PhoneNumberChangedCopyWith<PhoneNumberChanged> get copyWith =>
      _$PhoneNumberChangedCopyWithImpl<PhoneNumberChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult firstNameChanged(String firstNameStr),
    @required TResult lastNameChanged(String lastNameStr),
    @required TResult emailChanged(String emailStr),
    @required TResult passwordChanged(String passwordStr),
    @required TResult confirmPasswordChanged(String confirmPasswordStr),
    @required TResult phoneNumberChanged(String phoneNumberStr),
    @required TResult registerPressed(),
  }) {
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(confirmPasswordChanged != null);
    assert(phoneNumberChanged != null);
    assert(registerPressed != null);
    return phoneNumberChanged(phoneNumberStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult firstNameChanged(String firstNameStr),
    TResult lastNameChanged(String lastNameStr),
    TResult emailChanged(String emailStr),
    TResult passwordChanged(String passwordStr),
    TResult confirmPasswordChanged(String confirmPasswordStr),
    TResult phoneNumberChanged(String phoneNumberStr),
    TResult registerPressed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (phoneNumberChanged != null) {
      return phoneNumberChanged(phoneNumberStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult firstNameChanged(FirstNameChanged value),
    @required TResult lastNameChanged(LastNameChanged value),
    @required TResult emailChanged(EmailChanged value),
    @required TResult passwordChanged(PasswordChanged value),
    @required TResult confirmPasswordChanged(ConfirmPasswordChanged value),
    @required TResult phoneNumberChanged(PhoneNumberChanged value),
    @required TResult registerPressed(RegisterPressed value),
  }) {
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(confirmPasswordChanged != null);
    assert(phoneNumberChanged != null);
    assert(registerPressed != null);
    return phoneNumberChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult firstNameChanged(FirstNameChanged value),
    TResult lastNameChanged(LastNameChanged value),
    TResult emailChanged(EmailChanged value),
    TResult passwordChanged(PasswordChanged value),
    TResult confirmPasswordChanged(ConfirmPasswordChanged value),
    TResult phoneNumberChanged(PhoneNumberChanged value),
    TResult registerPressed(RegisterPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (phoneNumberChanged != null) {
      return phoneNumberChanged(this);
    }
    return orElse();
  }
}

abstract class PhoneNumberChanged implements RegisterFormEvent {
  const factory PhoneNumberChanged(String phoneNumberStr) =
      _$PhoneNumberChanged;

  String get phoneNumberStr;
  @JsonKey(ignore: true)
  $PhoneNumberChangedCopyWith<PhoneNumberChanged> get copyWith;
}

/// @nodoc
abstract class $RegisterPressedCopyWith<$Res> {
  factory $RegisterPressedCopyWith(
          RegisterPressed value, $Res Function(RegisterPressed) then) =
      _$RegisterPressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$RegisterPressedCopyWithImpl<$Res>
    extends _$RegisterFormEventCopyWithImpl<$Res>
    implements $RegisterPressedCopyWith<$Res> {
  _$RegisterPressedCopyWithImpl(
      RegisterPressed _value, $Res Function(RegisterPressed) _then)
      : super(_value, (v) => _then(v as RegisterPressed));

  @override
  RegisterPressed get _value => super._value as RegisterPressed;
}

/// @nodoc
class _$RegisterPressed implements RegisterPressed {
  const _$RegisterPressed();

  @override
  String toString() {
    return 'RegisterFormEvent.registerPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is RegisterPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult firstNameChanged(String firstNameStr),
    @required TResult lastNameChanged(String lastNameStr),
    @required TResult emailChanged(String emailStr),
    @required TResult passwordChanged(String passwordStr),
    @required TResult confirmPasswordChanged(String confirmPasswordStr),
    @required TResult phoneNumberChanged(String phoneNumberStr),
    @required TResult registerPressed(),
  }) {
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(confirmPasswordChanged != null);
    assert(phoneNumberChanged != null);
    assert(registerPressed != null);
    return registerPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult firstNameChanged(String firstNameStr),
    TResult lastNameChanged(String lastNameStr),
    TResult emailChanged(String emailStr),
    TResult passwordChanged(String passwordStr),
    TResult confirmPasswordChanged(String confirmPasswordStr),
    TResult phoneNumberChanged(String phoneNumberStr),
    TResult registerPressed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (registerPressed != null) {
      return registerPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult firstNameChanged(FirstNameChanged value),
    @required TResult lastNameChanged(LastNameChanged value),
    @required TResult emailChanged(EmailChanged value),
    @required TResult passwordChanged(PasswordChanged value),
    @required TResult confirmPasswordChanged(ConfirmPasswordChanged value),
    @required TResult phoneNumberChanged(PhoneNumberChanged value),
    @required TResult registerPressed(RegisterPressed value),
  }) {
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(confirmPasswordChanged != null);
    assert(phoneNumberChanged != null);
    assert(registerPressed != null);
    return registerPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult firstNameChanged(FirstNameChanged value),
    TResult lastNameChanged(LastNameChanged value),
    TResult emailChanged(EmailChanged value),
    TResult passwordChanged(PasswordChanged value),
    TResult confirmPasswordChanged(ConfirmPasswordChanged value),
    TResult phoneNumberChanged(PhoneNumberChanged value),
    TResult registerPressed(RegisterPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (registerPressed != null) {
      return registerPressed(this);
    }
    return orElse();
  }
}

abstract class RegisterPressed implements RegisterFormEvent {
  const factory RegisterPressed() = _$RegisterPressed;
}

/// @nodoc
class _$RegisterFormStateTearOff {
  const _$RegisterFormStateTearOff();

// ignore: unused_element
  _RegisterFormState call(
      {@required RequiredField firstName,
      @required RequiredField lastName,
      @required EmailAddress emailAddress,
      @required Password password,
      @required Password confirmPassword,
      @required PhoneNumber phoneNumber,
      @required bool showErrorMessages,
      @required bool isSubmitting,
      @required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption}) {
    return _RegisterFormState(
      firstName: firstName,
      lastName: lastName,
      emailAddress: emailAddress,
      password: password,
      confirmPassword: confirmPassword,
      phoneNumber: phoneNumber,
      showErrorMessages: showErrorMessages,
      isSubmitting: isSubmitting,
      authFailureOrSuccessOption: authFailureOrSuccessOption,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $RegisterFormState = _$RegisterFormStateTearOff();

/// @nodoc
mixin _$RegisterFormState {
  RequiredField get firstName;
  RequiredField get lastName;
  EmailAddress get emailAddress;
  Password get password;
  Password get confirmPassword;
  PhoneNumber get phoneNumber;
  bool get showErrorMessages;
  bool get isSubmitting;
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption;

  @JsonKey(ignore: true)
  $RegisterFormStateCopyWith<RegisterFormState> get copyWith;
}

/// @nodoc
abstract class $RegisterFormStateCopyWith<$Res> {
  factory $RegisterFormStateCopyWith(
          RegisterFormState value, $Res Function(RegisterFormState) then) =
      _$RegisterFormStateCopyWithImpl<$Res>;
  $Res call(
      {RequiredField firstName,
      RequiredField lastName,
      EmailAddress emailAddress,
      Password password,
      Password confirmPassword,
      PhoneNumber phoneNumber,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class _$RegisterFormStateCopyWithImpl<$Res>
    implements $RegisterFormStateCopyWith<$Res> {
  _$RegisterFormStateCopyWithImpl(this._value, this._then);

  final RegisterFormState _value;
  // ignore: unused_field
  final $Res Function(RegisterFormState) _then;

  @override
  $Res call({
    Object firstName = freezed,
    Object lastName = freezed,
    Object emailAddress = freezed,
    Object password = freezed,
    Object confirmPassword = freezed,
    Object phoneNumber = freezed,
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object authFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      firstName:
          firstName == freezed ? _value.firstName : firstName as RequiredField,
      lastName:
          lastName == freezed ? _value.lastName : lastName as RequiredField,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as EmailAddress,
      password: password == freezed ? _value.password : password as Password,
      confirmPassword: confirmPassword == freezed
          ? _value.confirmPassword
          : confirmPassword as Password,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber as PhoneNumber,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$RegisterFormStateCopyWith<$Res>
    implements $RegisterFormStateCopyWith<$Res> {
  factory _$RegisterFormStateCopyWith(
          _RegisterFormState value, $Res Function(_RegisterFormState) then) =
      __$RegisterFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {RequiredField firstName,
      RequiredField lastName,
      EmailAddress emailAddress,
      Password password,
      Password confirmPassword,
      PhoneNumber phoneNumber,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class __$RegisterFormStateCopyWithImpl<$Res>
    extends _$RegisterFormStateCopyWithImpl<$Res>
    implements _$RegisterFormStateCopyWith<$Res> {
  __$RegisterFormStateCopyWithImpl(
      _RegisterFormState _value, $Res Function(_RegisterFormState) _then)
      : super(_value, (v) => _then(v as _RegisterFormState));

  @override
  _RegisterFormState get _value => super._value as _RegisterFormState;

  @override
  $Res call({
    Object firstName = freezed,
    Object lastName = freezed,
    Object emailAddress = freezed,
    Object password = freezed,
    Object confirmPassword = freezed,
    Object phoneNumber = freezed,
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object authFailureOrSuccessOption = freezed,
  }) {
    return _then(_RegisterFormState(
      firstName:
          firstName == freezed ? _value.firstName : firstName as RequiredField,
      lastName:
          lastName == freezed ? _value.lastName : lastName as RequiredField,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as EmailAddress,
      password: password == freezed ? _value.password : password as Password,
      confirmPassword: confirmPassword == freezed
          ? _value.confirmPassword
          : confirmPassword as Password,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber as PhoneNumber,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc
class _$_RegisterFormState implements _RegisterFormState {
  const _$_RegisterFormState(
      {@required this.firstName,
      @required this.lastName,
      @required this.emailAddress,
      @required this.password,
      @required this.confirmPassword,
      @required this.phoneNumber,
      @required this.showErrorMessages,
      @required this.isSubmitting,
      @required this.authFailureOrSuccessOption})
      : assert(firstName != null),
        assert(lastName != null),
        assert(emailAddress != null),
        assert(password != null),
        assert(confirmPassword != null),
        assert(phoneNumber != null),
        assert(showErrorMessages != null),
        assert(isSubmitting != null),
        assert(authFailureOrSuccessOption != null);

  @override
  final RequiredField firstName;
  @override
  final RequiredField lastName;
  @override
  final EmailAddress emailAddress;
  @override
  final Password password;
  @override
  final Password confirmPassword;
  @override
  final PhoneNumber phoneNumber;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption;

  @override
  String toString() {
    return 'RegisterFormState(firstName: $firstName, lastName: $lastName, emailAddress: $emailAddress, password: $password, confirmPassword: $confirmPassword, phoneNumber: $phoneNumber, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, authFailureOrSuccessOption: $authFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RegisterFormState &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)) &&
            (identical(other.emailAddress, emailAddress) ||
                const DeepCollectionEquality()
                    .equals(other.emailAddress, emailAddress)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.confirmPassword, confirmPassword) ||
                const DeepCollectionEquality()
                    .equals(other.confirmPassword, confirmPassword)) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(emailAddress) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(confirmPassword) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(authFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$RegisterFormStateCopyWith<_RegisterFormState> get copyWith =>
      __$RegisterFormStateCopyWithImpl<_RegisterFormState>(this, _$identity);
}

abstract class _RegisterFormState implements RegisterFormState {
  const factory _RegisterFormState(
          {@required
              RequiredField firstName,
          @required
              RequiredField lastName,
          @required
              EmailAddress emailAddress,
          @required
              Password password,
          @required
              Password confirmPassword,
          @required
              PhoneNumber phoneNumber,
          @required
              bool showErrorMessages,
          @required
              bool isSubmitting,
          @required
              Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption}) =
      _$_RegisterFormState;

  @override
  RequiredField get firstName;
  @override
  RequiredField get lastName;
  @override
  EmailAddress get emailAddress;
  @override
  Password get password;
  @override
  Password get confirmPassword;
  @override
  PhoneNumber get phoneNumber;
  @override
  bool get showErrorMessages;
  @override
  bool get isSubmitting;
  @override
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$RegisterFormStateCopyWith<_RegisterFormState> get copyWith;
}

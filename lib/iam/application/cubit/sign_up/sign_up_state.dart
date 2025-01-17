part of 'sign_up_cubit.dart';

enum FormStatus { invalid, valid, validating, posting }

/// ### Sign Up State
/// This class is used to manage the state of the sign up form.
///
/// #### Properties
/// - [formStatus] - The status of the form. It can be one of the following:
/// - [isValid] - A boolean value that indicates if the form is valid.
/// - [username] - The username field of the form.
/// - [email] - The email field of the form.
/// - [password] - The password field of the form.
///
/// #### Methods
/// - [copyWith] - A method that creates a new instance of the class with the provided values.
class SignUpState extends Equatable {
  final FormStatus formStatus;
  final bool isValid;
  final Username username;
  final Email email;
  final Password password;

  const SignUpState({
    this.isValid = false,
    this.formStatus = FormStatus.invalid,
    this.username = const Username.pure(),
    this.email = const Email.pure(),
    this.password = const Password.pure(),
  });

  SignUpState copyWith({
    FormStatus? formStatus,
    bool? isValid,
    Username? username,
    Email? email,
    Password? password,
  }) {
    return SignUpState(
      formStatus: formStatus ?? this.formStatus,
      isValid: isValid ?? this.isValid,
      username: username ?? this.username,
      email: email ?? this.email,
      password: password ?? this.password,
    );
  }

  @override
  List<Object?> get props => [formStatus, username, email, password];
}

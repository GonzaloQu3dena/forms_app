part of 'sign_up_cubit.dart';

enum FormStatus { invalid, valid, validating, posting }

class SignUpState extends Equatable {
  final FormStatus formStatus;
  final String username;
  final String email;
  final String password;

  const SignUpState({
    this.formStatus = FormStatus.invalid,
    this.username = '',
    this.email = '',
    this.password = '',
  });

  SignUpState copyWith({
    FormStatus? formStatus,
    String? username,
    String? email,
    String? password,
  }) {
    return SignUpState(
      formStatus: formStatus ?? this.formStatus,
      username: username ?? this.username,
      email: email ?? this.email,
      password: password ?? this.password,
    );
  }

  @override
  List<Object?> get props => [formStatus, username, email, password];
}
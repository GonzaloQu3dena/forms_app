import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:forms_app/iam/infrastructure/validation/email.dart';
import 'package:forms_app/iam/infrastructure/validation/password.dart';
import 'package:forms_app/iam/infrastructure/validation/username.dart';
import 'package:formz/formz.dart';

part 'sign_up_state.dart';

/// ### Sign Up Cubit
/// This cubit is used to manage the state of the Sign Up Screen.
///
/// #### Methods
/// - [onSubmit]: This method is used to submit the form.
/// - [usernameChanged]: This method is used to update the username field.
/// - [emailChanged]: This method is used to update the email field.
/// - [passwordChanged]: This method is used to update the password field.
///
/// #### Author
/// Gonzalo Quedena
class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit() : super(const SignUpState());

  void onSubmit() {
    emit(
      state.copyWith(
        // We set the form status to validating
        formStatus: FormStatus.validating,
        
        // We validate the form
        email: Email.dirty(state.email.value),
        username: Username.dirty(state.username.value),
        password: Password.dirty(state.password.value),

        // We check if the form is valid
        isValid: Formz.validate([
          state.username,
          state.password,
          state.email,
        ])
      ),
    );
  }

  void usernameChanged(String value) {
    final username = Username.dirty(value);

    emit(
      state.copyWith(
        username: username,
        isValid: Formz.validate([username, state.password]),
      ),
    );
  }

  void emailChanged(String value) {
    final email = Email.dirty(value);

    emit(
      state.copyWith(
        email: email,
        isValid: Formz.validate([email]),
      ),
    );
  }

  void passwordChanged(String value) {
    final password = Password.dirty(value);

    emit(
      state.copyWith(
        password: password,
        isValid: Formz.validate([password, state.username]),
      ),
    );
  }
}

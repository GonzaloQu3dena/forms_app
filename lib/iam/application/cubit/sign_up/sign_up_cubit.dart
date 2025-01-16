import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
    print('Submit $state');
  }

  void usernameChanged(String value) {
    emit(
      state.copyWith(
        username: value,
      ),
    );
  }

  void emailChanged(String value) {
    emit(
      state.copyWith(
        email: value,
      ),
    );
  }

  void passwordChanged(String value) {
    emit(
      state.copyWith(
        password: value,
      ),
    );
  }
}

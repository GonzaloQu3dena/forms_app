import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:forms_app/iam/application/cubit/sign_up/sign_up_cubit.dart';
import 'package:forms_app/iam/presentation/widgets/custom_text_form_field.dart';

/// ### Sign Up Screen
/// This screen is used to register a new user. It contains a form to fill the user's details.
///
/// #### Author
/// Gonzalo Quedena
class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New user'),
      ),
      body: BlocProvider(
        create: (context) => SignUpCubit(),
        child: const _SignUpView(),
      ),
    );
  }
}

///### Sign Up View
/// This is the view of the Sign Up Screen. It contains the form to fill the user's details.
///
/// #### Author
/// Gonzalo Quedena
class _SignUpView extends StatelessWidget {
  const _SignUpView();

  @override
  Widget build(BuildContext context) {
    /// SafeArea is used to avoid the notch and other system-provided.
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),

        /// SingleChildScrollView is used to avoid the overflow of the screen.
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
              SizedBox(
                height: 20,
              ),
              FlutterLogo(
                size: 100,
              ),
              SizedBox(
                height: 20,
              ),
              _SignUpForm(),
            ],
          ),
        ),
      ),
    );
  }
}

///### Sign Up Form
/// This is the form to fill the user's details.
///
/// #### Author
/// Gonzalo Quedena
class _SignUpForm extends StatelessWidget {
  const _SignUpForm();

  /// This method is called when a field is changed. It updates the state of the form.
  void _onChanged(SignUpCubit signUpCubit, String field, String value) {
    switch (field) {
      case 'username':
        signUpCubit.usernameChanged(value);
        break;
      case 'email':
        signUpCubit.emailChanged(value);
        break;
      case 'password':
        signUpCubit.passwordChanged(value);
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    final signUpCubit = context.watch<SignUpCubit>();

    final email = signUpCubit.state.email;
    final username = signUpCubit.state.username;
    final password = signUpCubit.state.password;

    /// Form is used to manage the state of the form.
    return Form(
      child: Column(
        children: [
          CustomTextFormField(
            label: 'User name',
            onChanged: (value) => _onChanged(signUpCubit, 'username', value),
            errorMessage: username.errorMessage,
          ),
          const SizedBox(
            height: 20,
          ),
          CustomTextFormField(
            label: 'Email',
            onChanged: (value) => _onChanged(signUpCubit, 'email', value),
            errorMessage: email.errorMessage,
          ),
          const SizedBox(
            height: 20,
          ),
          CustomTextFormField(
            label: 'Password',
            obscureText: true,
            onChanged: (value) => _onChanged(signUpCubit, 'password', value),
            errorMessage: password.errorMessage,
          ),
          const SizedBox(
            height: 20,
          ),
          FilledButton.tonalIcon(
            onPressed: () {
              signUpCubit.onSubmit();
            },
            label: const Text('Sign Up'),
            icon: const Icon(Icons.save),
          ),
        ],
      ),
    );
  }
}

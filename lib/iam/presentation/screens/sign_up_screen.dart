import 'package:flutter/material.dart';
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
      body: const _SignUpView(),
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
              FlutterLogo(
                size: 100,
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
class _SignUpForm extends StatefulWidget {
  const _SignUpForm();

  @override
  State<_SignUpForm> createState() => _SignUpFormState();
}

/// ### Sign Up Form State
/// This is the state of the Sign Up Form. It contains the form fields and the validation of the form.
/// 
/// #### Properties
/// - [username]: The username of the user.
/// - [email]: The email of the user.
/// - [password]: The password of the user.
/// 
/// #### Author
/// Gonzalo Quedena
class _SignUpFormState extends State<_SignUpForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String username = '';
  String email = '';
  String password = '';

  String? _validateUsername(String? value) {
    if (value == null || value.isEmpty) return 'Required field';
    if (value.trim().isEmpty) return 'Required field';
    if (value.length < 6) return 'More than 6 characters';
    return null;
  }

  String? _validateEmail(String? value) {
    if (value == null || value.isEmpty) return 'Required field';
    if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) return 'Invalid email';
    return null;
  }

  String? _validatePassword(String? value) {
    if (value == null || value.isEmpty) return 'Required field';
    if (value.length < 6) return 'More than 6 characters';
    return null;
  }

  @override
  Widget build(BuildContext context) {
    /// Form is used to manage the state of the form.
    return Form(
      key: _formKey,
      child: Column(
        children: [
          CustomTextFormField(
            label: 'User name',
            onChanged: (value) => username = value,
            validator: _validateUsername,
          ),
          const SizedBox(
            height: 20,
          ),
          CustomTextFormField(
            label: 'Email',
            onChanged: (value) => email = value,
            validator: _validateEmail,
          ),
          const SizedBox(
            height: 20,
          ),
          CustomTextFormField(
            label: 'Password',
            obscureText: true,
            onChanged: (value) => password = value,
            validator: _validatePassword,
          ),
          const SizedBox(
            height: 20,
          ),
          FilledButton.tonalIcon(
            onPressed: () {
              final isValid = _formKey.currentState!.validate();
              if (!isValid) return;
            },
            label: const Text('Sign Up'),
            icon: const Icon(Icons.save),
          ),
        ],
      ),
    );
  }
}

import 'package:formz/formz.dart';

enum PasswordError { empty, length }

/// ### Password validation
/// This class is used to validate the password input.
///
/// #### Validations
/// - Check if the password is empty.
/// - Check if the password is at least 6 characters long.
///
/// #### Author
/// Gonzalo Quedena
class Password extends FormzInput<String, PasswordError> {
  // Call the super constructor to represent an unmodified form input.
  const Password.pure() : super.pure('');

  // Call the super constructor to represent a modified form input.
  const Password.dirty(super.value) : super.dirty();

  String? get errorMessage {
    if (isValid || isPure) return null;

    if (displayError == PasswordError.empty) return 'This field is required';
    if (displayError == PasswordError.length) {
      return 'Username must be at least 6 characters long';
    }

    return null;
  }

  // Validate the password input.
  @override
  PasswordError? validator(String value) {
    if (value.isEmpty || value.trim().isEmpty) return PasswordError.empty;
    if (value.length < 6) return PasswordError.length;

    return null;
  }
}

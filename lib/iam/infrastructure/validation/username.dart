import 'package:formz/formz.dart';

enum UsernameError { empty, length }

/// ### Username input validation.
/// This class represents the username input validation. It checks if the username is empty and if it is at least 6 characters long.
/// 
/// #### Validations
/// - Check if the username is empty.
/// - Check if the username is at least 6 characters long.
/// 
/// #### Author
/// Gonzalo Quedena
class Username extends FormzInput<String, UsernameError> {
  // Call the super constructor to represent an unmodified form input.
  const Username.pure() : super.pure('');

  // Call the super constructor to represent a modified form input.
  const Username.dirty(super.value) : super.dirty();

  String? get errorMessage {
    if (isValid || isPure) return null;

    if (displayError == UsernameError.empty) return 'This field is required';
    if (displayError == UsernameError.length) {
      return 'Username must be at least 6 characters long';
    }

    return null;
  }

  // Validate the username input.
  @override
  UsernameError? validator(String value) {
    
    if (value.isEmpty || value.trim().isEmpty) return UsernameError.empty;
    if (value.length < 6) return UsernameError.length;

    return null;
  }
}

import 'package:formz/formz.dart';

enum EmailError { empty, format }

/// ### Email input validation
/// This class represents the email input validation. It checks if the email is empty and if it is in the correct format.
/// 
/// #### Properties
/// - [emailRegExp] - Regular expression for email validation.
///
/// #### Validations
/// - Check if the email is empty.
/// - Check if the email is in the correct format.
/// 
/// #### Author
/// Gonzalo Quedena
class Email extends FormzInput<String, EmailError> {

  // Define the regular expression for email validation.
  static final RegExp emailRegExp = RegExp(
    r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
  );

  // Call the super constructor to represent an unmodified form input.
  const Email.pure() : super.pure('');

  // Call the super constructor to represent a modified form input.
  const Email.dirty(super.value) : super.dirty();

  String? get errorMessage {
    if (isValid || isPure) return null;

    if (displayError == EmailError.empty) return 'This field is required';
    if (displayError == EmailError.format) return 'Invalid email format';

    return null;
  }

  // Validate the email input.
  @override
  EmailError? validator(String value) {
    if (value.isEmpty || value.trim().isEmpty) return EmailError.empty;
    if (!emailRegExp.hasMatch(value)) return EmailError.format;

    return null;
  }
}

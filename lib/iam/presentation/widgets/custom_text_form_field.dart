import 'package:flutter/material.dart';

/// ### Custom Text Form Field
/// This is a custom text form field that can be used in any form.
/// 
/// #### Properties
/// - [label]: The label of the text form field.
/// - [hint]: The hint of the text form field.
/// - [errorMessage]: The error message of the text form field.
/// - [onChanged]: The function that will be called when the text form field changes.
/// - [validator]: The function that will be called to validate the text form field.
/// - [obscureText]: If the text form field should be obscured.
///
/// #### Author
/// Gonzalo Quedena
class CustomTextFormField extends StatelessWidget {
  final String? label;
  final String? hint;
  final String? errorMessage;
  final Function(String)? onChanged;
  final bool obscureText;
  final String? Function(String?)? validator;

  const CustomTextFormField({
    super.key,
    this.label,
    this.hint,
    this.errorMessage,
    this.onChanged,
    this.validator,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    final border = OutlineInputBorder(
      /// borderSide: BorderSide(color: colors.primary),
      borderRadius: BorderRadius.circular(40),
    );

    return TextFormField(
      onChanged: onChanged,
      validator: validator,
      obscureText: obscureText,
      /// InputDecoration is used to customize the appearance of the input field.
      decoration: InputDecoration(
        isDense: true,
        hintText: hint,
        enabledBorder: border,
        errorText: errorMessage,
        label: label != null ? Text(label!) : null,
        /// The focusedBorder property is used to customize the appearance of the input field when it is focused.
        focusedBorder: border.copyWith(
          borderSide: BorderSide(color: colors.primary),
        ),
        /// The errorBorder property is used to customize the appearance of the input field when it has an error.
        errorBorder: border.copyWith(
          borderSide: BorderSide(color: Colors.red.shade800),
        ),
        /// The focusedErrorBorder property is used to customize the appearance of the input field when it has an error and is focused.
        focusedErrorBorder: border.copyWith(
          borderSide: BorderSide(color: Colors.red.shade800),
        ),
      ),
    );
  }
}

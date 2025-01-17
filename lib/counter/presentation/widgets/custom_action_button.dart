import 'package:flutter/material.dart';

/// ### Custom Action Button
/// This is a custom action button widget that is used to create a floating action button with a label.
/// 
/// #### Properties
/// - [label] : The label of the button.
/// - [onPressed] : The function that is called when the button is pressed.
/// - [heroTag] : The hero tag of the button.
/// 
/// #### Author
/// Gonzalo Quedena
class CustomActionButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final String heroTag;

  const CustomActionButton({
    super.key,
    required this.label,
    required this.onPressed,
    required this.heroTag,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      heroTag: heroTag,
      onPressed: onPressed,
      child: Text(label),
    );
  }
}

import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final String labelText;
  final VoidCallback onPressed;

  const CustomElevatedButton({
    Key? key,
    required this.labelText,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(labelText),
      onPressed: onPressed,
    );
  }
}

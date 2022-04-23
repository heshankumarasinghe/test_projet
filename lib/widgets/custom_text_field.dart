import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final Function(String) onChanged;

  const CustomTextField({
    Key? key,
    required this.controller,
    required this.labelText,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: labelText,
        hintText: labelText,
      ),
      onChanged: onChanged,
    );
  }
}

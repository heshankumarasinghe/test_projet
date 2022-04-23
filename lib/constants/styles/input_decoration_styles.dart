import 'package:flutter/material.dart';

class InputDecorationStyles {
  InputDecorationStyles._();

  static InputDecorationTheme inputDecorationTheme = InputDecorationTheme(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(7.5),
    ),
    errorMaxLines: 3,
  );
}

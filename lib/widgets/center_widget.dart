import 'package:flutter/material.dart';

class CenterWidget extends StatelessWidget {
  final Widget child;

  const CenterWidget({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        child,
      ],
    );
  }
}

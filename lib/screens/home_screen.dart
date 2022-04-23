import 'package:flutter/material.dart';

import '../constants/routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  void _goToFormScreen(BuildContext context) => Navigator.of(context).pushNamed(Routes.formScreen);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Get Started'),
          centerTitle: true,
        ),
        body: Center(
          child: ElevatedButton(
            child: const Text('Get Started'),
            onPressed: () => _goToFormScreen(context),
          ),
        ),
      ),
    );
  }
}

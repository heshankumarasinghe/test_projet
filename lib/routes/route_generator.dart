import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../constants/routes.dart';
import '../screens/home_screen.dart';
import '../screens/form_screen.dart';
import '../screens/error_screen.dart';

class RouteGenerator {
  RouteGenerator._();

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );

      case Routes.formScreen:
        return MaterialPageRoute(
          builder: (_) => const FormScreen(),
        );

      default:
        return MaterialPageRoute(
          builder: (_) => const ErrorScreen(),
        );
    }
  }
}

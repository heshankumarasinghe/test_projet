import 'package:flutter/material.dart';

import './constants/routes.dart';
import './constants/styles/input_decoration_styles.dart';
import './routes/route_generator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo Application',
      theme: ThemeData(primarySwatch: Colors.blue, inputDecorationTheme: InputDecorationStyles.inputDecorationTheme),
      onGenerateRoute: RouteGenerator.generateRoute,
      initialRoute: Routes.homeScreen,
    );
  }
}

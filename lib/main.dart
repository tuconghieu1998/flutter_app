import 'package:flutter/material.dart';
import 'package:flutter_app/core/constants/color_constants.dart';
import 'package:flutter_app/representation/screens/splash_screen.dart';
import 'package:flutter_app/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: ColorPalette.primaryColor,
        scaffoldBackgroundColor: ColorPalette.backgroundScaffoldColor,
        backgroundColor: ColorPalette.backgroundScaffoldColor
      ),
      home: const SplashScreen(),
      debugShowCheckedModeBanner: false,
      routes: routes,
    );
  }
}

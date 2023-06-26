import 'package:flutter/material.dart';
import 'package:untitled7/core/app_colors.dart';
import 'package:untitled7/screens/on_borading_screen.dart';
import 'package:untitled7/screens/splash_screen.dart';

import 'core/app_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      theme: ThemeData(
          scaffoldBackgroundColor: AppColors.white,
          appBarTheme: const AppBarTheme(
              backgroundColor: AppColors.white, elevation: 0)),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}

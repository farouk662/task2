import 'package:go_router/go_router.dart';
import 'package:untitled7/screens/home.dart';
import 'package:untitled7/screens/on_borading_screen.dart';
import 'package:untitled7/screens/splash_screen.dart';

class AppRouter{

  static String homeRoute='/home';
  static String splashRoute='/';
  static String onBoardingRoute='/onBoarding';

  static final router = GoRouter(routes: [
    GoRoute(path: homeRoute,builder: (context ,state)=>const HomeScreen()),
    GoRoute(path: splashRoute,builder: (context ,state)=>const SplashScreen()),
    GoRoute(path: onBoardingRoute,builder: (context ,state)=>const OnBoardingScreen())
  ]);
}
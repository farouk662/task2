import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:untitled7/core/app_assets.dart';
import 'package:untitled7/screens/home.dart';
import 'package:untitled7/screens/on_borading_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        // duration: 1000,
        splashIconSize: MediaQuery.of(context).size.height * .2,
        backgroundColor: Colors.white,
         pageTransitionType: PageTransitionType.fade,
        splashTransition: SplashTransition.fadeTransition,
        splash: Image.asset(AppAssets.splashLogo),
        nextScreen: const OnBoardingScreen());
  }
}

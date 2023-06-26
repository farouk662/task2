import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:untitled7/core/app_assets.dart';
import 'package:untitled7/core/app_colors.dart';
import 'package:untitled7/screens/home.dart';
import 'package:untitled7/widgets/on_boarding_item.dart';

import '../models/on_boarding_model.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  List<BoardingModel> boarding = [
    BoardingModel(
        title: 'Set Date', body: 'body1', image: AppAssets.onBoardingImage1),
    BoardingModel(
        title: 'Book Online', body: 'body2', image: AppAssets.onBoardingImage2),
    BoardingModel(
        title: 'Destination', body: 'body3', image: AppAssets.onBoardingImage3),
  ];

  bool isLast = false;

  var boardController = PageController();

  void _navigateToHome() => Navigator.push(
      context,
      PageTransition(duration: const Duration(milliseconds: 500),
          child: const HomeScreen(), type: PageTransitionType.rightToLeft));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
              onPressed: () {
                _navigateToHome();
              },
              child: const Text('Skip',))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                physics: const BouncingScrollPhysics(),
                controller: boardController,
                onPageChanged: (index) {
                  if (index == boarding.length - 1) {
                    setState(() {
                      isLast = true;
                    });
                  } else {
                    setState(() {
                      isLast = false;
                    });
                  }
                },
                itemBuilder: (context, index) =>
                    OnBoardingItem(model: boarding[index]),
                itemCount: boarding.length,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                SmoothPageIndicator(
                  controller: boardController,
                  count: boarding.length,
                  effect: const ExpandingDotsEffect(
                      dotColor: Colors.grey,
                      activeDotColor: AppColors.blue,
                      expansionFactor: 3,
                      spacing: 5,
                      dotWidth: 12,
                      dotHeight: 12),
                ),
                const Spacer(),
                FloatingActionButton(
                  onPressed: () {
                    if (isLast) {
                      _navigateToHome();
                    } else {
                      boardController.nextPage(
                          duration: const Duration(
                            milliseconds: 800,
                          ),
                          curve: Curves.fastLinearToSlowEaseIn);
                    }
                  },
                  child: const Icon(Icons.arrow_forward_rounded),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

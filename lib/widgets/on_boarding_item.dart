import 'package:flutter/material.dart';
import 'package:untitled7/core/app_colors.dart';
import 'package:untitled7/models/on_boarding_model.dart';

class OnBoardingItem extends StatelessWidget {
  const OnBoardingItem({Key? key, required this.model}) : super(key: key);
  final BoardingModel model;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 50,),
        Image(image: AssetImage(model.image)),
        const SizedBox(
          height: 40,
        ),
        Text(
          model.title,
          style: const TextStyle(fontSize: 50, fontWeight: FontWeight.bold,color: AppColors.blue),
        ),
        // const SizedBox(
        //   height: 10,
        // ),
        // Text(
        //   model.body,
        //   style: const TextStyle(
        //     fontSize: 025,
        //   ),
        // ),
      ],
    );
  }
}

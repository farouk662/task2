import 'package:flutter/material.dart';

import '../core/app_colors.dart';

class ButtonBuilder extends StatelessWidget {
  const ButtonBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: MaterialButton(
        onPressed: () {},
        color: AppColors.lightBlue,
        minWidth: double.infinity,
        height: 50,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15)),
        elevation: 0,
        child: const Text(
          'Create Post',
          style: TextStyle(
              color: AppColors.blue,
              fontWeight: FontWeight.bold,
              fontSize: 20),
        ),
      ),
    );
  }
}

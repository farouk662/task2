import 'package:flutter/material.dart';

import '../core/app_assets.dart';
import '../core/app_colors.dart';

class ImageBuilder extends StatelessWidget {
  const ImageBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Stack(
        children: [
          Image.asset(AppAssets.logo2),
          Positioned(
            top: 8,
            left: 5,
            child: Container(
              height: 40,
              width: 80,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: AppColors.white, width: 2)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.camera_alt,
                    color: AppColors.white,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Edit',
                    style: TextStyle(color: AppColors.white),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: 80,
            left: 110,
            child: Stack(
              children: [
                CircleAvatar(
                  radius: 57,
                  backgroundColor: AppColors.white,
                  child: CircleAvatar(
                    radius: 56,
                    backgroundColor: AppColors.blue,
                    child: CircleAvatar(
                      radius: 55,
                      foregroundImage: AssetImage(
                        AppAssets.logo,
                      ),
                      backgroundColor: Colors.red,
                    ),
                  ),
                ),
                Positioned(
                    top: 80,
                    left: 90,
                    child: CircleAvatar(
                        radius: 10,
                        backgroundColor: AppColors.white,
                        child: Center(
                            child: Image.asset(
                          AppAssets.instagram,
                        ))))
              ],
            ),
          ),
          Positioned(
            top: 80,
            left: 10,
            child: Stack(
              children: [
                CircleAvatar(
                  radius: 57,
                  backgroundColor: AppColors.white,
                  child: CircleAvatar(
                    radius: 56,
                    backgroundColor: AppColors.blue,
                    child: CircleAvatar(
                      radius: 55,
                      foregroundImage: AssetImage(
                        AppAssets.logo,
                      ),
                      backgroundColor: Colors.red,
                    ),
                  ),
                ),
                const Positioned(
                    top: 80,
                    left: 90,
                    child: CircleAvatar(
                        radius: 8,
                        backgroundColor: AppColors.white,
                        child: Center(
                          child: Icon(
                            Icons.facebook,
                            color: AppColors.blue,
                          ),
                        )))
              ],
            ),
          ),
        ],
      ),
    );
  }
}

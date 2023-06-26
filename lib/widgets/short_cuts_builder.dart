import 'package:flutter/material.dart';

import '../core/app_assets.dart';

class ShortCutsBuilder extends StatelessWidget {
  const ShortCutsBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        shortcutsWidget(image: AppAssets.ads2, label: 'Ads'),
        shortcutsWidget(
            image: AppAssets.people, label: 'Invite Friends'),
        shortcutsWidget(image: AppAssets.trend2, label: 'Trends'),
        shortcutsWidget(image: AppAssets.comments, label: 'Comments'),
      ],
    );
  }
  Widget shortcutsWidget({
    required String image,
    required String label,
  }) =>
      Expanded(
        child: Column(
          children: [
            Image.asset(
              image,
              height: 50,
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              label,
              style: const TextStyle(fontSize: 16),
            )
          ],
        ),
      );

}

import 'package:flutter/material.dart';

import '../core/app_assets.dart';

class EventsBuilder extends StatelessWidget {
  const EventsBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        actionWidget(image: AppAssets.reels, label: 'Reel'),
        actionWidget(image: AppAssets.stories, label: 'Story'),
        actionWidget(image: AppAssets.ads, label: 'Create ad'),
        actionWidget(image: AppAssets.photo, label: 'Photo'),
      ],
    );
  }

  Widget actionWidget({
    required String image,
    required String label,
  }) =>
      Expanded(
        child: Column(
          children: [
            Image.asset(
              image,
              height: 20,
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              label,
              style: const TextStyle(fontSize: 15),
            )
          ],
        ),
      );
}

import 'package:flutter/material.dart';

import '../core/app_colors.dart';

class FollowersBuilder extends StatelessWidget {
  const FollowersBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          followersBuilder(
              number: '7,789', label: 'Facebook Followers'),
          followersBuilder(number: '100', label: 'Instagram Followers'),
        ],
      ),
    );
  }

  Widget followersBuilder({
    required String number,
    required String label,
  }) =>
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              number,
              style: const TextStyle(
                  color: AppColors.darkBlue,
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 7,
            ),
            Row(
              children: [
                Text(
                  label,
                  style: const TextStyle(
                      color: AppColors.darkBlue,
                      fontSize: 15,
                      fontWeight: FontWeight.w300),
                ),
                const SizedBox(
                  width: 5,
                ),
                const Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: AppColors.darkBlue,
                  size: 16,
                )
              ],
            ),
          ],
        ),
      );
}

import 'package:flutter/material.dart';

import '../core/app_colors.dart';

class CommentsBuilder extends StatelessWidget {
  const CommentsBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 15,
        ),
        Container(
          decoration: BoxDecoration(
              color: AppColors.gray.withOpacity(.3),
              borderRadius: BorderRadius.circular(5)),
          padding: const EdgeInsets.all(5),
          child: const Icon(
            Icons.insert_comment_rounded,
            color: AppColors.darkBlue,
          ),
        ),
        const SizedBox(
          width: 15,
        ),
        const Text(
          'Comments',
          style: TextStyle(color: AppColors.darkBlue, fontSize: 18),
        ),
        const Spacer(),
        const Text(
          '2 unread',
          style: TextStyle(color: AppColors.gray, fontSize: 14),
        ),
        const SizedBox(
          width: 7,
        ),
        const Icon(
          Icons.circle,
          color: Colors.red,
          size: 10,
        ),
        const SizedBox(
          width: 15,
        )
      ],
    );
  }
}

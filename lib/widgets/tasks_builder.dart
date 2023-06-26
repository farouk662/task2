import 'package:flutter/material.dart';

import '../core/app_colors.dart';

class TasksBuilder extends StatelessWidget {
  const TasksBuilder({Key? key}) : super(key: key);

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
            Icons.task_alt_rounded,
            color: AppColors.darkBlue,
          ),
        ),
        const SizedBox(
          width: 15,
        ),
        const Text(
          'Tasks',
          style: TextStyle(color: AppColors.darkBlue, fontSize: 18),
        ),
      ],
    );
  }
}

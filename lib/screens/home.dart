import 'package:flutter/material.dart';
import 'package:untitled7/core/app_assets.dart';
import 'package:untitled7/core/app_colors.dart';
import 'package:untitled7/core/constants.dart';
import 'package:untitled7/widgets/button_builder.dart';
import 'package:untitled7/widgets/comments_builder.dart';
import 'package:untitled7/widgets/events_builder.dart';
import 'package:untitled7/widgets/followers_builder.dart';
import 'package:untitled7/widgets/image_bulider.dart';
import 'package:untitled7/widgets/short_cuts_builder.dart';
import 'package:untitled7/widgets/tasks_builder.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Stack(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(
                AppAssets.logo,
              ),
              radius: 25,
            ),
            const Positioned(
              right: 8,
              top: 2,
              child: Icon(
                Icons.circle,
                color: Colors.red,
                size: 10,
              ),
            ),
          ],
        ),
        title: const Text(
          'Home',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          Stack(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    AppAssets.notification,
                    height: 25,
                  )),
              const Positioned(
                right: 12,
                top: 26,
                child: Icon(
                  Icons.circle,
                  color: Colors.red,
                  size: 9,
                ),
              ),
            ],
          )
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const SizedBox(
                  width: 18,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Manage',
                      style: TextStyle(color: AppColors.darkBlue, fontSize: 21),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 2,
                      color: AppColors.darkBlue,
                      width: 80,
                    )
                  ],
                ),
                const SizedBox(
                  width: 15,
                ),
                const Text(
                  'Explore',
                  style: TextStyle(color: AppColors.gray, fontSize: 21),
                ),
              ],
            ),
            const ImageBuilder(),
            const Padding(
              padding: EdgeInsets.only(left: 15.0),
              child: Text(
                'Cyber Royale',
                style: TextStyle(
                    color: AppColors.darkBlue,
                    fontSize: 26,
                    fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const FollowersBuilder(),
            const SizedBox(
              height: 25,
            ),
            const ButtonBuilder(),
            const SizedBox(
              height: 20,
            ),
           const EventsBuilder(),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 10,
              width: double.infinity,
              color: AppColors.gray.withOpacity(.08),
            ),
             Padding(
              padding: const EdgeInsets.only(left: 15.0, top: 10),
              child: Text(
                'Shortcuts',
                style: Constants.title,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            const ShortCutsBuilder(),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 10,
              width: double.infinity,
              color: AppColors.gray.withOpacity(.08),
            ),
            const SizedBox(
              height: 5,
            ),
             Padding(
              padding: const EdgeInsets.only(left: 15.0, top: 10),
              child: Text(
                'To-Do List',
                style: Constants.title,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const CommentsBuilder(),
            const SizedBox(
              height: 20,
            ),
            const TasksBuilder(),
            const SizedBox(
              height: 100,
            )
          ],
        ),
      ),
    );
  }



}

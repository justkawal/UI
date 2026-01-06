import 'package:databest/models/profile_models.dart';
import 'package:databest/utilities/colors.dart';
import 'package:databest/utilities/data_actions_widget.dart';
import 'package:databest/utilities/header_widget.dart';
import 'package:databest/utilities/lecture_advertisement_widget.dart';
import 'package:databest/utilities/profile_title_widget.dart';
import 'package:flutter/material.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: ListView(
        padding: const EdgeInsets.only(top: 70, bottom: 120),
        children: [
          HeaderWidget(),
          const SizedBox(height: 45),
          LectureAdvertisementWidget(),
          const SizedBox(height: 30),
          DataActionsWidget(),
          const SizedBox(height: 10),
          Text(
            'EMAIL OPEN RATE',
            style: TextStyle(
              color: DatabestColors.darkBlue,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              letterSpacing: -.1,
            ),
          ),
          const SizedBox(height: 20),
          for (int index = 0; index < Profile.profiles.length; index++)
            ProfileTitleWidget(profileModel: Profile.profiles[index]),
        ],
      ),
    );
  }
}

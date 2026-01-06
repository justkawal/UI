import 'package:education_desktop/utils/colors.dart';
import 'package:education_desktop/widgets/activities_and_schedules.dart';
import 'package:education_desktop/widgets/header_widget.dart';
import 'package:flutter/material.dart';

class RightMenuComponent extends StatelessWidget {
  const RightMenuComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: EducationColors.backgroundColor,
        child: ListView(
          padding: const EdgeInsets.only(bottom: 30),
          children: [
            const SizedBox(height: 45),
            HeaderWidget(),
            const SizedBox(height: 15),
            ActivitiesAndSchedules(),
          ],
        ),
      ),
    );
  }
}

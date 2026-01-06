import 'package:education_desktop/widgets/activities.dart';
import 'package:education_desktop/widgets/lesson_schedule.dart';
import 'package:flutter/material.dart';

class ActivitiesAndSchedules extends StatelessWidget {
  const ActivitiesAndSchedules({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Activities(),
        const SizedBox(width: 15),
        LessonSchedule(),
      ],
    );
  }
}

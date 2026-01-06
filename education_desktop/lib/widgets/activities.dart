import 'package:education_desktop/utils/colors.dart';
import 'package:education_desktop/widgets/activity_widget.dart';
import 'package:education_desktop/widgets/detailed_learning_progress_widget.dart';
import 'package:education_desktop/widgets/learning_progress_widget.dart';
import 'package:flutter/material.dart';

class Activities extends StatelessWidget {
  const Activities({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 580,
      padding: const EdgeInsets.only(left: 25, right: 25),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 70,
            alignment: Alignment.centerLeft,
            child: RichText(
              text: TextSpan(
                style: TextStyle(
                  color: EducationColors.darkColor,
                  fontSize: 36,
                  fontWeight: FontWeight.w500,
                ),
                children: [
                  TextSpan(text: 'Your activities today'),
                  TextSpan(
                    text: ' (6)',
                    style: TextStyle(
                      color: EducationColors.blueColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 3),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: ActivityWidget(
                    rating: '4.8',
                    text: 'UX/UI Design',
                    color: EducationColors.greenColor,
                    darkColor: EducationColors.darkGreenColor,
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: ActivityWidget(
                    rating: '4.8',
                    text: 'Analytics Tools',
                    color: EducationColors.pinkColor,
                    darkColor: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          Text(
            'Learning progress',
            style: TextStyle(
              color: EducationColors.darkColor,
              fontSize: 36,
              fontWeight: FontWeight.w500,
              letterSpacing: -.5,
            ),
          ),
          const SizedBox(height: 15),
          Row(
            children: [
              Expanded(
                child: LearningProgressWidget(
                  heading: 'Completed',
                  score: '18',
                  color: EducationColors.greenColor,
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: LearningProgressWidget(
                  heading: 'Your score',
                  score: '72',
                  color: EducationColors.yellowColor,
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: LearningProgressWidget(
                  heading: 'Active',
                  score: '11',
                  color: EducationColors.purpleColor,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          SizedBox(
            width: double.infinity,
            child: DetailedLearningProgressWidget(
              heading: 'Design & Creativity',
              subjectName: 'Design principles',
              lessonsDoneCount: 22,
              totalLessonCount: 30,
              color: EducationColors.pinkColor,
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            width: double.infinity,
            child: DetailedLearningProgressWidget(
              heading: 'IT & Software',
              subjectName: 'Interface motion',
              lessonsDoneCount: 5,
              totalLessonCount: 24,
              color: EducationColors.yellowColor,
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            width: double.infinity,
            child: DetailedLearningProgressWidget(
              heading: 'DSA & Algorithms',
              subjectName: 'Data structures',
              lessonsDoneCount: 28,
              totalLessonCount: 30,
              color: EducationColors.purpleColor,
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:education_desktop/utils/colors.dart';
import 'package:education_desktop/widgets/arrow_widget.dart';
import 'package:flutter/material.dart';

class LearningProgressWidget extends StatelessWidget {
  final Color color;
  final String heading;
  final String score;
  const LearningProgressWidget({
    required this.heading,
    required this.score,
    required this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(22),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15, bottom: 9, top: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  heading,
                  style: TextStyle(
                    color: EducationColors.darkColor,
                    fontSize: 15,
                    letterSpacing: -.2,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  score,
                  style: TextStyle(
                    color: EducationColors.darkColor,
                    fontSize: 38,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 18, bottom: 13, right: 13),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ArrowWidget(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

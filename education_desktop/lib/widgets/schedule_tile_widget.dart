import 'package:education_desktop/utils/colors.dart';
import 'package:flutter/material.dart';

class ScheduleTilesWidget extends StatelessWidget {
  final String upcomingLessonName;
  const ScheduleTilesWidget({
    required this.upcomingLessonName,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      decoration: BoxDecoration(
        color: EducationColors.greenColor,
        borderRadius: BorderRadius.circular(30),
      ),
      margin: const EdgeInsets.only(right: 33),
      padding: const EdgeInsets.only(left: 12, right: 15),
      child: Row(
        children: [
          Container(
            height: 60,
            width: 60,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Icon(Icons.menu_book_rounded),
          ),
          const SizedBox(width: 15),
          Expanded(
            child: Text(
              upcomingLessonName,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: EducationColors.darkColor,
                fontSize: 15,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

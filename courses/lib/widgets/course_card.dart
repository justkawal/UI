import 'package:courses/utilities/colors.dart';
import 'package:flutter/material.dart';

class CourseCard extends StatelessWidget {
  final String title;
  final IconData iconData;
  final Color color;
  const CourseCard({
    required this.title,
    required this.iconData,
    required this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 150,
        padding: const EdgeInsets.all(18),
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(.15),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  color: color, borderRadius: BorderRadius.circular(50)),
              child: Icon(
                iconData,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 28),
            Text(
              title,
              style: TextStyle(
                color: CoursesColors.darkGreen,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

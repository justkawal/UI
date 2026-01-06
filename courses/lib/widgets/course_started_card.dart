import 'package:courses/utilities/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CoursesStartedCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String date;
  final String completed;
  final bool isBookmarked;
  const CoursesStartedCard({
    required this.imagePath,
    required this.title,
    required this.date,
    required this.completed,
    this.isBookmarked = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: SizedBox(
                  height: 110,
                  width: 80,
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 20),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    date,
                    style: TextStyle(
                      color: Color.fromARGB(255, 248, 198, 133),
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    title,
                    style: TextStyle(
                      color: Colors.black.withOpacity(.7),
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    completed,
                    style: TextStyle(
                      color: CoursesColors.darkGreen.withOpacity(.6),
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(width: 5),
          Icon(
            isBookmarked
                ? CupertinoIcons.bookmark_fill
                : CupertinoIcons.bookmark,
            color: Colors.grey.withOpacity(.9),
          )
        ],
      ),
    );
  }
}

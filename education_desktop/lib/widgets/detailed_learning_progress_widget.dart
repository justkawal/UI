import 'dart:math';
import 'package:education_desktop/utils/colors.dart';
import 'package:education_desktop/widgets/arrow_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailedLearningProgressWidget extends StatefulWidget {
  final Color color;
  final String heading;
  final String subjectName;
  final int lessonsDoneCount;
  final int totalLessonCount;
  const DetailedLearningProgressWidget({
    required this.heading,
    required this.subjectName,
    required this.lessonsDoneCount,
    required this.totalLessonCount,
    required this.color,
    super.key,
  });

  @override
  State<DetailedLearningProgressWidget> createState() =>
      _DetailedLearningProgressWidgetState();
}

class _DetailedLearningProgressWidgetState
    extends State<DetailedLearningProgressWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 165,
      decoration: BoxDecoration(
        color: widget.color,
        borderRadius: BorderRadius.circular(29),
      ),
      padding: const EdgeInsets.only(left: 18, top: 16, right: 15, bottom: 13),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              // magic icon
              Container(
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                padding: const EdgeInsets.only(left: 3, bottom: 2),
                alignment: Alignment.center,
                child: Transform.rotate(
                  angle: pi * .5,
                  child: Icon(
                    CupertinoIcons.wand_stars_inverse,
                    color: EducationColors.darkColor,
                    size: 16,
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Text(
                widget.heading,
                style: TextStyle(
                  color: EducationColors.darkColor,
                  fontSize: 16,
                  letterSpacing: -.2,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Spacer(),
              ArrowWidget(),
            ],
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.only(left: 4),
            child: Row(
              children: [
                Icon(
                  Icons.menu_book_rounded,
                  color: Colors.black45,
                  size: 14,
                ),
                const SizedBox(width: 5),
                Text(
                  '${widget.lessonsDoneCount.clamp(0, widget.totalLessonCount)}/${widget.totalLessonCount} lessons',
                  style: TextStyle(
                    color: Colors.black45,
                    fontSize: 11,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 3),
          Text(
            widget.subjectName,
            style: TextStyle(
              color: EducationColors.darkColor,
              fontSize: 26,
              letterSpacing: -.2,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 7),
          TweenAnimationBuilder<double>(
            duration: const Duration(milliseconds: 750),
            curve: Curves.easeInOut,
            tween: Tween<double>(
              begin: 0,
              end: 1.0,
            ),
            builder: (context, value, _) => LinearProgressIndicator(
              value:
                  ((value * widget.lessonsDoneCount) / widget.totalLessonCount)
                      .clamp(0.0, 1.0),
              minHeight: 5.5,
              borderRadius: BorderRadius.circular(20),
              backgroundColor: Colors.black.withOpacity(.12),
              valueColor: AlwaysStoppedAnimation<Color>(Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}

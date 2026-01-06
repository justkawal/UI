import 'package:courses/pages/profile_page.dart';
import 'package:courses/utilities/colors.dart';
import 'package:courses/widgets/hexagon_custom_clipper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  const BottomNavigationBarWidget({super.key});

  @override
  State<BottomNavigationBarWidget> createState() =>
      _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 50,
          height: 50,
          child: Icon(
            CupertinoIcons.home,
            color: CoursesColors.darkGreen,
          ),
        ),
        SizedBox(
          width: 50,
          height: 50,
          child: Icon(
            CupertinoIcons.chat_bubble_2,
            color: CoursesColors.darkGreen.withOpacity(.5),
          ),
        ),
        SizedBox(
          width: 50,
          height: 60,
          child: ClipPath(
            clipper: HexagonCustomClipper(),
            child: Container(
              color: CoursesColors.yellow,
              height: 70,
              width: 60,
              child: Icon(
                CupertinoIcons.add,
                color: CoursesColors.darkGreen,
              ),
            ),
          ),
        ),
        SizedBox(
          width: 50,
          height: 50,
          child: Icon(
            CupertinoIcons.bookmark,
            color: CoursesColors.darkGreen.withOpacity(.5),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProfilePage(),
              ),
            );
          },
          child: SizedBox(
            width: 50,
            height: 50,
            child: Icon(
              CupertinoIcons.person,
              color: CoursesColors.darkGreen.withOpacity(.5),
            ),
          ),
        ),
      ],
    );
  }
}

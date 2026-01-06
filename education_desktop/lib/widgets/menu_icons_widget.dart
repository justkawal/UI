import 'package:education_desktop/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MenuIconsWidget extends StatefulWidget {
  const MenuIconsWidget({super.key});

  @override
  State<MenuIconsWidget> createState() => _MenuIconsWidgetState();
}

class _MenuIconsWidgetState extends State<MenuIconsWidget> {
  int selectedIndex = 0;
  static final List<IconData> icons = [
    CupertinoIcons.square_grid_2x2_fill,
    CupertinoIcons.book_fill,
    CupertinoIcons.calendar,
    CupertinoIcons.suit_diamond_fill,
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
      child: Stack(
        children: [
          AnimatedPositioned(
            top: selectedIndex * 85,
            left: 20,
            duration: const Duration(milliseconds: 250),
            curve: Curves.easeInOut,
            child: Container(
              height: 55,
              width: 55,
              margin: const EdgeInsets.symmetric(vertical: 15),
              decoration: BoxDecoration(
                color: EducationColors.darkColor,
                borderRadius: BorderRadius.circular(50),
              ),
            ),
          ),
          Positioned.fill(
            child: Column(
              children: [
                for (int index = 0; index < icons.length; index++)
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    behavior: HitTestBehavior.translucent,
                    child: Container(
                      height: 55,
                      width: 55,
                      margin: const EdgeInsets.symmetric(vertical: 15),
                      child: Icon(
                        icons[index],
                        color: selectedIndex == index
                            ? Colors.white
                            : Colors.black,
                        size: 23,
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

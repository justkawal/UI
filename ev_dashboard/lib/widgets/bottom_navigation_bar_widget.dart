import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  const BottomNavigationBarWidget({super.key});

  @override
  State<BottomNavigationBarWidget> createState() =>
      _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 30,
      left: 40,
      right: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = 0;
              });
            },
            child: FaIcon(
              FontAwesomeIcons.car,
              color: selectedIndex == 0 ? Colors.white : Colors.grey,
              size: 30,
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = 1;
              });
            },
            child: FaIcon(
              Icons.explore_rounded,
              color: selectedIndex == 1 ? Colors.white : Colors.grey,
              size: 30,
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = 2;
              });
            },
            child: FaIcon(
              CupertinoIcons.circle_grid_3x3,
              color: selectedIndex == 2 ? Colors.white : Colors.grey,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}

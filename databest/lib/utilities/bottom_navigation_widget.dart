import 'package:databest/utilities/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

typedef OnTap = void Function(int tabIndex);

class BottomNavigationWidget extends StatefulWidget {
  final OnTap onTap;
  const BottomNavigationWidget({required this.onTap, Key? key})
      : super(key: key);

  @override
  State<BottomNavigationWidget> createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  int _selectedTabIndex = 0;
  final List<IconData> tabIcons = <IconData>[
    CupertinoIcons.home,
    CupertinoIcons.chart_bar_alt_fill,
    CupertinoIcons.settings_solid,
  ];
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        height: 80,
        decoration: BoxDecoration(
          color: DatabestColors.homePageBackgroundColor,
        ),
        padding: const EdgeInsets.only(bottom: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            for (int index = 0; index < tabIcons.length; index++)
              GestureDetector(
                onTap: () {
                  widget.onTap(index);
                  setState(() {
                    _selectedTabIndex = index;
                  });
                },
                child: Icon(
                  tabIcons[index],
                  color: _selectedTabIndex == index
                      ? DatabestColors.pink
                      : Colors.grey,
                  size: 30,
                ),
              ),
          ],
        ),
      ),
    );
  }
}

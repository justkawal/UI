import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:journeys/widgets/frosted_widget.dart';

class NavigationBarWidget extends StatefulWidget {
  const NavigationBarWidget({Key? key}) : super(key: key);

  @override
  State<NavigationBarWidget> createState() => _NavigationBarWidgetState();
}

class _NavigationBarWidgetState extends State<NavigationBarWidget> {
  int selectedTabIndex = 0;
  final List<IconData> tabIcons = [
    CupertinoIcons.home,
    CupertinoIcons.location_fill,
    CupertinoIcons.calendar_today,
    CupertinoIcons.person,
  ];

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 20,
      left: 10,
      right: 10,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          for (int index = 0; index < tabIcons.length; index++)
            GestureDetector(
              onTap: () {
                setState(() {
                  selectedTabIndex = index;
                });
              },
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 150),
                width: selectedTabIndex == index ? 110 : 75,
                height: 70,
                child: FrostedWidget(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.black.withOpacity(.58),
                  child: Icon(
                    tabIcons[index],
                    size: 28,
                    color:
                        selectedTabIndex == index ? Colors.white : Colors.grey,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

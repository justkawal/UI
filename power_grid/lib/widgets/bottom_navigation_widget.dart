import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:power_grid/pages/module_one_page.dart';
import 'package:power_grid/pages/power_usage_page.dart';
import 'package:power_grid/widgets/frosted_widget.dart';

class BottomNavigationButtons extends StatelessWidget {
  final int selectedIndex;
  const BottomNavigationButtons({
    required this.selectedIndex,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 20,
      left: (MediaQuery.of(context).size.width / 4) - 60,
      right: (MediaQuery.of(context).size.width / 4) - 60,
      child: SizedBox(
        width: 80,
        height: 80,
        child: FrostedWidget(
          padding: EdgeInsets.all(4),
          borderRadius: BorderRadius.circular(40),
          showBorder: true,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushReplacement(
                    CupertinoPageRoute(
                      builder: (context) => PowerUsagePage(),
                    ),
                  );
                },
                child: NavigationIconButton(
                  isSelected: selectedIndex == 0,
                  iconData: CupertinoIcons.bolt,
                ),
              ),
              NavigationIconButton(
                isSelected: selectedIndex == 1,
                iconData: CupertinoIcons.sun_max,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushReplacement(
                    CupertinoPageRoute(
                      builder: (context) => ModuleOnePage(),
                    ),
                  );
                },
                child: NavigationIconButton(
                  isSelected: selectedIndex == 2,
                  iconData: CupertinoIcons.chart_bar,
                ),
              ),
              NavigationIconButton(
                isSelected: selectedIndex == 3,
                iconData: Icons.settings,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NavigationIconButton extends StatelessWidget {
  final bool isSelected;
  final IconData iconData;
  const NavigationIconButton({
    required this.isSelected,
    required this.iconData,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 72,
      height: 72,
      child: FrostedWidget(
        padding: EdgeInsets.all(10),
        borderRadius: BorderRadius.circular(40),
        color: isSelected ? Colors.white : null,
        showBorder: true,
        child: Icon(
          iconData,
          color: isSelected ? null : Colors.white.withOpacity(0.6),
        ),
      ),
    );
  }
}

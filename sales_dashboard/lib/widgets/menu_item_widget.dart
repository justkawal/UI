import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sales_dashboard/utils/colors.dart';

class MenuItemWidget extends StatelessWidget {
  final String title;
  final IconData iconData;
  final bool isSelected;
  final bool? showArrowDownIcon;
  final int? notificationCount;
  const MenuItemWidget({
    required this.title,
    required this.iconData,
    required this.isSelected,
    this.showArrowDownIcon = false,
    this.notificationCount = 0,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final Color greenColor = isSelected
        ? SalesDashboardColors.lightAccentGreen
        : Colors.white.withOpacity(.45);
    return Container(
      height: 40,
      margin: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SizedBox(
                width: 30,
                child: Stack(
                  children: [
                    AnimatedPositioned(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                      top: 5,
                      right: isSelected ? 24.5 : 35,
                      child: Container(
                        height: 30,
                        width: 50,
                        decoration: BoxDecoration(
                          color: SalesDashboardColors.lightAccentGreen,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(5),
                            bottomRight: Radius.circular(5),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Icon(
                iconData,
                size: 20,
                color: greenColor,
              ),
              const SizedBox(width: 8),
              Text(
                title,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  letterSpacing: -.1,
                  color: isSelected
                      ? Colors.white.withOpacity(.9)
                      : Colors.white.withOpacity(.55),
                ),
              ),
              const SizedBox(width: 8),
              if (notificationCount != 0)
                Container(
                  height: 16,
                  width: 24,
                  decoration: BoxDecoration(
                    color: SalesDashboardColors.lightAccentGreen,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    '$notificationCount',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 8,
                      fontWeight: FontWeight.w600,
                      letterSpacing: -.1,
                      color: Colors.black.withOpacity(.9),
                    ),
                  ),
                ),
            ],
          ),
          if (showArrowDownIcon!)
            Icon(
              CupertinoIcons.chevron_down,
              color: isSelected
                  ? Colors.white.withOpacity(.9)
                  : Colors.white.withOpacity(.55),
              size: 16,
            )
        ],
      ),
    );
  }
}

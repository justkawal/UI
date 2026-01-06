import 'package:ev_dashboard/utils/colors.dart';
import 'package:flutter/material.dart';

class ActionButtonCircle extends StatelessWidget {
  final IconData icon;
  final bool isActive;
  const ActionButtonCircle({
    required this.icon,
    required this.isActive,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 87,
      width: 87,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: 87,
              height: 87,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: DashboardColors.outerCircleColorStart,
                    blurRadius: 1,
                    spreadRadius: 1,
                  ),
                ],
                borderRadius: BorderRadius.circular(85),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 1.5,
            child: Container(
              width: 84,
              height: 84,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: DashboardColors.darkInnerCircleColorStart,
                    blurRadius: 1,
                    spreadRadius: 1,
                  ),
                ],
                borderRadius: BorderRadius.circular(137),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 3,
            child: Container(
              width: 81,
              height: 81,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: DashboardColors.middleCircleColorStart,
                    blurRadius: 0,
                    spreadRadius: 0,
                  ),
                ],
                borderRadius: BorderRadius.circular(137),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 4.5,
            child: Container(
              width: 78,
              height: 78,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    DashboardColors.darkInnerCircleColorStart,
                    DashboardColors.allCircleColorEnd,
                  ],
                ),
                borderRadius: BorderRadius.circular(137),
              ),
              padding: const EdgeInsets.only(bottom: 4),
              child: Icon(
                icon,
                color: isActive ? Colors.white : Colors.grey,
                size: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

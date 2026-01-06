import 'package:ev_dashboard/utils/colors.dart';
import 'package:flutter/material.dart';

class ActionButtonSquareWidget extends StatelessWidget {
  final Widget child;
  const ActionButtonSquareWidget({
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const radius = 20.0;
    return SizedBox(
      height: 87 * 2,
      width: 87 * 2,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: 87 * 2,
              height: 87 * 2,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: DashboardColors.outerCircleColorStart,
                    blurRadius: 1,
                    spreadRadius: 1,
                  ),
                ],
                borderRadius: BorderRadius.circular(radius),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 1.5,
            child: Container(
              width: 86 * 2,
              height: 86 * 2,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: DashboardColors.darkInnerCircleColorStart,
                    blurRadius: 1,
                    spreadRadius: 1,
                  ),
                ],
                borderRadius: BorderRadius.circular(radius),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 3 * 1.1,
            child: Container(
              width: 85 * 2,
              height: 85 * 2,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: DashboardColors.middleCircleColorStart,
                    blurRadius: 0,
                    spreadRadius: 0,
                  ),
                ],
                borderRadius: BorderRadius.circular(radius),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 2.1 * 2,
            child: Container(
              width: 84.2 * 2,
              height: 84.3 * 2,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    DashboardColors.darkInnerCircleColorStart,
                    DashboardColors.allCircleColorEnd,
                  ],
                ),
                borderRadius: BorderRadius.circular(radius),
              ),
              child: child,
            ),
          ),
        ],
      ),
    );
  }
}

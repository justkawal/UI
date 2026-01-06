import 'package:flutter/material.dart';

class IconHolder extends StatelessWidget {
  final IconData iconData;
  final Color iconColor;
  final double side;
  final Color backgroundColor;
  final double iconSize;
  final double radius;
  const IconHolder({
    super.key,
    required this.iconData,
    required this.iconColor,
    required this.side,
    required this.backgroundColor,
    required this.iconSize,
    required this.radius,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: side,
      height: side,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(radius),
      ),
      child: Icon(iconData, color: iconColor, size: iconSize),
    );
  }
}

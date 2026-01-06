import 'package:flutter/material.dart';

class ShadowBox extends StatelessWidget {
  final Color color;
  final Widget child;
  final Offset offset;
  final double width;
  final double height;
  final Color borderColor;
  final Color shadowColor;
  final double borderRadius;
  final double borderWidth;
  const ShadowBox({
    this.width = 60,
    this.height = 60,
    this.color = Colors.white,
    required this.child,
    this.offset = const Offset(3, 3),
    this.borderColor = Colors.black,
    this.shadowColor = Colors.black,
    this.borderRadius = 10,
    this.borderWidth = 2,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(borderRadius),
        border: Border.all(
          color: borderColor,
          width: borderWidth,
        ),
        boxShadow: [
          BoxShadow(
            color: shadowColor,
            blurRadius: 0,
            offset: offset,
          ),
        ],
      ),
      child: child,
    );
  }
}

import 'dart:ui';
import 'package:flutter/material.dart';

class FrostedWidget extends StatelessWidget {
  final Alignment begin;
  final Alignment end;
  final Color color;
  final Widget child;
  final double? opacity;
  const FrostedWidget({
    super.key,
    this.begin = Alignment.topCenter,
    this.end = Alignment.bottomLeft,
    required this.child,
    required this.color,
    this.opacity = .5,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
        child: Container(
          width: double.infinity,
          color: color,
          alignment: Alignment.center,
          child: child,
        ),
      ),
    );
  }
}

class RoundedIconContainer extends StatelessWidget {
  const RoundedIconContainer({
    super.key,
    required this.iconBackgroundColor,
    required this.iconData,
    required this.iconColor,
    this.borderRadius = 6,
  });

  final Color iconBackgroundColor;
  final IconData? iconData;
  final Color? iconColor;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(6),
      child: Container(
        height: 23,
        width: 23,
        decoration: BoxDecoration(
          color: iconBackgroundColor,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: Center(
          child: Icon(
            iconData!,
            color: iconColor!.withOpacity(.9),
            size: 13,
          ),
        ),
      ),
    );
  }
}

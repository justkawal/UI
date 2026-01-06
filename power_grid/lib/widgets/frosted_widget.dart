import 'dart:ui';
import 'package:flutter/material.dart';

class FrostedWidget extends StatelessWidget {
  final EdgeInsetsGeometry padding;
  final BorderRadius borderRadius;
  final Widget child;
  final Color? color;
  final bool showBorder;
  const FrostedWidget({
    required this.padding,
    required this.borderRadius,
    required this.child,
    this.showBorder = false,
    this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: borderRadius,
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
        child: Container(
          padding: padding,
          decoration: BoxDecoration(
            color: color ?? Colors.grey.withOpacity(0.15),
            border: showBorder
                ? Border.all(
                    color: Colors.white.withOpacity(0.1),
                    width: .8,
                  )
                : null,
            borderRadius: borderRadius,
          ),
          child: child,
        ),
      ),
    );
  }
}

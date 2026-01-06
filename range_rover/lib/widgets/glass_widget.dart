import 'dart:ui';
import 'package:flutter/material.dart';

class GlassWidget extends StatelessWidget {
  final bool showIcon;
  final Alignment begin;
  final Alignment end;
  final Widget child;
  final EdgeInsets padding;
  final double? opacity;
  const GlassWidget({
    super.key,
    required this.showIcon,
    required this.begin,
    required this.end,
    required this.child,
    this.opacity,
    this.padding = const EdgeInsets.symmetric(horizontal: 20),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: showIcon ? 10 : 0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  //RangeRoverColors.darkGreyColor2.withOpacity(.65),
                  // RangeRoverColors.darkGreenColor.withOpacity(opacity ?? .5),
                ],
                begin: begin,
                end: end,
              ),
            ),
            padding: padding,
            child: child,
          ),
        ),
      ),
    );
  }
}

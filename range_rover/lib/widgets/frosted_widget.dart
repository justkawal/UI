import 'dart:ui';
import 'package:flutter/material.dart';

class FrostedWidget extends StatelessWidget {
  final Alignment begin;
  final Alignment end;
  final IconData? iconData;
  final Color colorBegin;
  final Color colorEnd;
  final Color iconBackgroundColor;
  final Color? iconColor;
  final bool showIcon;
  final Widget child;
  final double? opacity;
  const FrostedWidget({
    super.key,
    this.begin = Alignment.topCenter,
    this.end = Alignment.bottomLeft,
    this.showIcon = true,
    this.iconData,
    this.iconColor,
    required this.child,
    required this.colorBegin,
    required this.colorEnd,
    required this.iconBackgroundColor,
    this.opacity = .5,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: SizedBox(
        child: Stack(
          children: <Widget>[
            Container(
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
                          colorBegin.withOpacity(.65),
                          colorEnd.withOpacity(opacity ?? .5),
                        ],
                        begin: begin,
                        end: end,
                      ),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: child,
                  ),
                ),
              ),
            ),
            if (showIcon)
              Positioned(
                left: 20,
                child: RoundedIconContainer(
                    iconBackgroundColor: iconBackgroundColor,
                    iconData: iconData,
                    iconColor: iconColor),
              ),
          ],
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

import 'dart:math';
import 'package:flutter/material.dart';
import 'package:power_grid/utils/colors.dart';

class DottedBorder extends CustomPainter {
  final int numberOfStories;
  final double spaceLength;
  double startOfArcInDegree = 180;

  DottedBorder({required this.numberOfStories, this.spaceLength = 10});

  double inRads(double degree) {
    return (degree * pi) / 180;
  }

  @override
  bool shouldRepaint(DottedBorder oldDelegate) {
    return false;
  }

  @override
  void paint(Canvas canvas, Size size) {
    final double arcLength =
        (188.5 - (numberOfStories * spaceLength)) / numberOfStories;

    final Rect rect = Rect.fromLTWH(0, 0, size.width, size.height);
    final paint = Paint()
      ..strokeWidth = 9.4
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke;

    for (int i = 0; i < numberOfStories; i++) {
      canvas.drawArc(
          rect,
          inRads(startOfArcInDegree),
          inRads(arcLength),
          false,
          paint
            ..color = i <= (numberOfStories - 8)
                ? PowerGridColors.lightGreen
                : PowerGridColors.glassBlack);

      startOfArcInDegree += arcLength + spaceLength;
    }
  }
}

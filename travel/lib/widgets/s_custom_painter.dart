import 'package:flutter/material.dart';
import 'package:travel/utils/colors.dart';

class SCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final calc = (10 / 15) * size.width;
    Path path_0 = Path();
    path_0.moveTo(size.width, 0);
    path_0.cubicTo(size.width, calc, calc, size.width, 0, size.width);
    path_0.lineTo(size.width, size.height);
    path_0.lineTo(size.width, 0);

    final Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = TravelColors.offWhite;
    canvas.drawPath(path_0, paint0Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

import 'package:flutter/material.dart';

class TriangleCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    final double xScaling = size.width / 200;
    final double yScaling = size.height / 200;
    path.moveTo(77.875644347018 * xScaling, 17.397459621556 * yScaling);
    path.cubicTo(
      83.2642468594545 * xScaling,
      8.064126288222667 * yScaling,
      96.73575314054548 * xScaling,
      8.064126288222672 * yScaling,
      102.12435565298199 * xScaling,
      17.397459621556 * yScaling,
    );
    path.cubicTo(
      102.12435565298199 * xScaling,
      17.397459621556 * yScaling,
      177.875644347018 * xScaling,
      148.602540378446 * yScaling,
      177.875644347018 * xScaling,
      148.602540378446 * yScaling,
    );
    path.cubicTo(
      183.26424685945452 * xScaling,
      157.93587371177932 * yScaling,
      176.5284937189089 * xScaling,
      169.602540378446 * yScaling,
      165.75128869403588 * xScaling,
      169.602540378446 * yScaling,
    );
    path.cubicTo(
      165.75128869403588 * xScaling,
      169.602540378446 * yScaling,
      165.75128869403602 * xScaling,
      169.602540378446 * yScaling,
      165.75128869403602 * xScaling,
      169.602540378446 * yScaling,
    );
    path.cubicTo(
      165.75128869403602 * xScaling,
      169.602540378446 * yScaling,
      14.248711305966026 * xScaling,
      169.602540378446 * yScaling,
      14.248711305966026 * xScaling,
      169.602540378446 * yScaling,
    );
    path.cubicTo(
      3.4715062810930135 * xScaling,
      169.602540378446 * yScaling,
      -3.264246859452477 * xScaling,
      157.93587371177935 * yScaling,
      2.1243556529840255 * xScaling,
      148.602540378446 * yScaling,
    );
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}

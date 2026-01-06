import 'package:flutter/material.dart';

class HexagonCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    final double xScaling = size.width / 335;
    final double yScaling = size.height / 345;
    path.moveTo(164 * xScaling, 2.4074772881119 * yScaling);
    path.cubicTo(
      169.2598183016685 * xScaling,
      -0.6292802212214372 * yScaling,
      175.7401816983315 * xScaling,
      -0.629280221221435 * yScaling,
      181 * xScaling,
      2.4074772881119 * yScaling,
    );
    path.cubicTo(
      181 * xScaling,
      2.4074772881119 * yScaling,
      315.55444566228 * xScaling,
      80.09252271188791 * yScaling,
      315.55444566228 * xScaling,
      80.09252271188791 * yScaling,
    );
    path.cubicTo(
      320.81426397075137 * xScaling,
      83.12928022514889 * yScaling,
      324.05444566228 * xScaling,
      88.74143954516569 * yScaling,
      324.05444566228 * xScaling,
      94.8149545762229 * yScaling,
    );
    path.cubicTo(
      324.05444566228 * xScaling,
      94.8149545762229 * yScaling,
      324.05444566228 * xScaling,
      250.1850454237729 * yScaling,
      324.05444566228 * xScaling,
      250.1850454237729 * yScaling,
    );
    path.cubicTo(
      324.05444566228 * xScaling,
      256.2585604548301 * yScaling,
      320.81426397075137 * xScaling,
      261.8707197748469 * yScaling,
      315.55444566228 * xScaling,
      264.9074772881079 * yScaling,
    );
    path.cubicTo(
      315.55444566228 * xScaling,
      264.9074772881079 * yScaling,
      181 * xScaling,
      342.5925227118839 * yScaling,
      181 * xScaling,
      342.5925227118839 * yScaling,
    );
    path.cubicTo(
      175.7401816983315 * xScaling,
      345.6292802212172 * yScaling,
      169.2598183016685 * xScaling,
      345.6292802212172 * yScaling,
      164 * xScaling,
      342.5925227118839 * yScaling,
    );
    path.cubicTo(
      164 * xScaling,
      342.5925227118839 * yScaling,
      29.44555433772001 * xScaling,
      264.9074772881079 * yScaling,
      29.44555433772001 * xScaling,
      264.9074772881079 * yScaling,
    );
    path.cubicTo(
      24.185736029248616 * xScaling,
      261.8707197748469 * yScaling,
      20.94555433772001 * xScaling,
      256.2585604548301 * yScaling,
      20.94555433772001 * xScaling,
      250.1850454237729 * yScaling,
    );
    path.cubicTo(
      20.94555433772001 * xScaling,
      250.1850454237729 * yScaling,
      20.94555433772026 * xScaling,
      94.8149545762229 * yScaling,
      20.94555433772026 * xScaling,
      94.8149545762229 * yScaling,
    );
    path.cubicTo(
      20.94555433772026 * xScaling,
      88.74143954516569 * yScaling,
      24.185736029248872 * xScaling,
      83.12928022514889 * yScaling,
      29.44555433772026 * xScaling,
      80.09252271188791 * yScaling,
    );
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}

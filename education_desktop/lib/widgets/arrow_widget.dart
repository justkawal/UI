import 'dart:math';
import 'package:education_desktop/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ArrowWidget extends StatelessWidget {
  const ArrowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 47,
      width: 47,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Transform.rotate(
        angle: pi * -.34,
        child: Icon(
          CupertinoIcons.arrow_right,
          color: EducationColors.darkColor,
          size: 25,
        ),
      ),
    );
  }
}

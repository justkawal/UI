import 'dart:math';

import 'package:flutter/material.dart';

class EducationIconWidget extends StatelessWidget {
  const EducationIconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 5),
      height: 52,
      width: 60,
      child: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              height: 45,
              width: 45,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(25),
              ),
            ),
          ),
          Positioned(
            top: 28,
            left: 13,
            child: Transform.rotate(
              angle: pi * .17,
              child: Container(
                height: 12,
                width: 60,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 8.3,
            right: 3.6,
            child: Container(
              height: 12,
              width: 12,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'dart:math';

import 'package:finances/utils/finances_colors.dart';
import 'package:flutter/material.dart';

class TiltedBarWidget extends StatelessWidget {
  const TiltedBarWidget({
    super.key,
  });

  static const int gap = 25;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Stack(
        children: [
          Positioned(
            top: 5,
            bottom: 5,
            right: 10,
            child: Container(
              height: 190,
              width: 30,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    FinancesColors.lightPurple,
                    FinancesColors.lightYellow,
                  ],
                  stops: [.05, .4],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          Positioned(
            top: 5,
            bottom: 5,
            right: 40 + (gap * 1.15),
            child: Container(
              height: 190,
              width: 30,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    FinancesColors.purple,
                    FinancesColors.green,
                  ],
                  stops: [.001, .3],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          Positioned(
            top: 5,
            bottom: 3,
            right: 60 + (gap * 2.7),
            child: Transform.rotate(
              angle: pi * 2.1,
              child: Container(
                height: 190,
                width: 30,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      FinancesColors.orange,
                      FinancesColors.lightPurple,
                    ],
                    stops: [.03, .25],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
          Positioned(
            top: 10,
            right: 60 + (gap * 5.5),
            child: Transform.rotate(
              angle: pi * 2.223,
              child: Container(
                height: 205,
                width: 30,
                decoration: BoxDecoration(
                  color: FinancesColors.purple,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
          Positioned(
            top: 72,
            left: 32,
            child: Transform.rotate(
              angle: pi * 2.223,
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      FinancesColors.orange,
                      FinancesColors.lightOrange,
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

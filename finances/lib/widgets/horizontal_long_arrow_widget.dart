import 'dart:math';

import 'package:finances/utils/finances_colors.dart';
import 'package:flutter/material.dart';

class HorizontalLongArrowWidget extends StatelessWidget {
  const HorizontalLongArrowWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          Container(
            height: 3.7,
            width: 40,
            decoration: BoxDecoration(
              color: FinancesColors.purple,
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          const SizedBox(width: 10),
          Container(
            height: 3.7,
            width: 25,
            decoration: BoxDecoration(
              color: FinancesColors.purple,
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          const SizedBox(width: 10),
          Container(
            height: 3.7,
            width: 25,
            decoration: BoxDecoration(
              color: FinancesColors.purple,
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          const SizedBox(width: 30),
          Expanded(
            child: Container(
              height: 3.7,
              width: 25,
              decoration: BoxDecoration(
                color: FinancesColors.purple,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 45,
            width: 70,
            child: Stack(
              children: [
                Positioned(
                  left: 59.6,
                  child: Transform.rotate(
                    angle: pi * 1.8,
                    child: Container(
                      width: 3.7,
                      height: 25,
                      decoration: BoxDecoration(
                        color: FinancesColors.purple,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 3.7,
                        width: 75,
                        decoration: BoxDecoration(
                          color: FinancesColors.purple,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(width: 10),
        ],
      ),
    );
  }
}

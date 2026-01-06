import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:range_rover/utilities/colors.dart';
import 'package:range_rover/widgets/frosted_widget.dart';
import 'package:range_rover/widgets/small_chip_km_range_widget.dart';

class OverallRangeLeftStatsWidget extends StatelessWidget {
  const OverallRangeLeftStatsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final randomPercent = Random.secure().nextInt(90) + 9;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      height: 99,
      child: Row(
        children: [
          Expanded(
            child: FrostedWidget(
              iconData: Icons.wallet_rounded,
              iconColor: Colors.white,
              colorBegin: RangeRoverColors.greyBackgroundColorDark,
              colorEnd: RangeRoverColors.greyBackgroundColorDark,
              opacity: .3,
              iconBackgroundColor: Colors.black,
              child: SmallChipKMRangeWidget(
                progressColor: Colors.white,
                text1: 'YOUR BALANCE',
                text2: '\$3,423',
                showProgress: false,
                fontSize: 26,
              ),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: FrostedWidget(
              iconData: CupertinoIcons.bolt_fill,
              iconColor: RangeRoverColors.lightGreenColor,
              colorBegin: RangeRoverColors.greyBackgroundColorDark,
              colorEnd: RangeRoverColors.greyBackgroundColorDark,
              opacity: .3,
              iconBackgroundColor: Colors.black,
              child: SmallChipKMRangeWidget(
                progressColor: RangeRoverColors.yellowColor,
                text1: 'KM RANGE',
                text2: '$randomPercent%',
                progressValue: randomPercent / 100,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

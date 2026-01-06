import 'dart:math';

import 'package:flutter/material.dart';
import 'package:range_rover/utilities/colors.dart';
import 'package:range_rover/widgets/frosted_widget.dart';
import 'package:range_rover/widgets/last_ride_progress_stats_widget.dart';
import 'package:range_rover/widgets/route_widget.dart';

class PastRideStatsWidget extends StatelessWidget {
  const PastRideStatsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: FrostedWidget(
        showIcon: false,
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colorBegin: RangeRoverColors.greyBackgroundColorDark,
        colorEnd: RangeRoverColors.greyBackgroundColorLight,
        iconBackgroundColor: RangeRoverColors.greyIconBackgroundColor,
        opacity: .5,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 18),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'LAST RIDE',
                    style: TextStyle(
                      color: Colors.white.withOpacity(.5),
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    'More detail',
                    style: TextStyle(
                      color: Colors.white.withOpacity(.5),
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              for (int _ = 0; _ < 6; _++)
                SizedBox(
                  height: 50,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      LastRideProgressStatsWidget(
                        text1: 'Range',
                        text2: '${Random.secure().nextInt(70) + 30} km',
                      ),
                      LastRideProgressStatsWidget(
                        text1: 'Profit',
                        text2:
                            '${Random.secure().nextInt(30) + 20}.${Random.secure().nextInt(90) + 9}\$',
                      ),
                      LastRideProgressStatsWidget(
                        text1: 'Time',
                        text2: '${Random.secure().nextInt(9) + 1} HR',
                      ),
                      RouteWidget(
                        height: 30,
                        width: 65,
                        startIconLeft: 5,
                        startIconTop: 9,
                        endIconRight: 6,
                        endIconTop: 1,
                        iconSize: 10,
                      ),
                    ],
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

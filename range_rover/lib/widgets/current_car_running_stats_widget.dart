import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:range_rover/utilities/colors.dart';
import 'package:range_rover/widgets/frosted_widget.dart';
import 'package:range_rover/widgets/live_progress_stats_widget.dart';

class CurrentCarRunningStatsWidget extends StatelessWidget {
  const CurrentCarRunningStatsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      margin: const EdgeInsets.symmetric(horizontal: 30),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.white.withOpacity(.4),
          width: 2,
        ),
        gradient: LinearGradient(
          colors: [
            RangeRoverColors.greyBackgroundColorDark.withOpacity(.8),
            RangeRoverColors.greyBackgroundColorLight,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 40,
            child: Row(
              children: [
                SizedBox(
                  height: 26,
                  width: 26,
                  child: RoundedIconContainer(
                    iconData: CupertinoIcons.car,
                    iconColor: Colors.white,
                    iconBackgroundColor: Colors.grey,
                    borderRadius: 8,
                  ),
                ),
                const SizedBox(width: 15),
                Text(
                  'PROGRESS TODAY',
                  style: TextStyle(
                    color: Colors.grey.withOpacity(.9),
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              LiveProgressStatsWidget(
                iconData: CupertinoIcons.location_fill,
                text1: 'KM RANGE',
                text2: '45 km',
              ),
              LiveProgressStatsWidget(
                iconData: CupertinoIcons.clock_fill,
                text1: 'Time',
                text2: '1:11:22',
              ),
              LiveProgressStatsWidget(
                iconData: CupertinoIcons.money_dollar_circle_fill,
                text1: 'PROFIT',
                text2: '11.01\$',
              ),
            ],
          )
        ],
      ),
    );
  }
}

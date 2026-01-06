import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:range_rover/utilities/colors.dart';
import 'package:range_rover/widgets/current_car_running_stats_widget.dart';
import 'package:range_rover/widgets/frosted_widget.dart';
import 'package:range_rover/widgets/overall_range_left_stats_widget.dart';
import 'package:range_rover/widgets/past_ride_stats_widget.dart';
import 'package:range_rover/widgets/profile_header_widget.dart';
import 'package:range_rover/widgets/range_rover_car_widget.dart';
import 'package:range_rover/widgets/vehicle_name_widget.dart';

class BlackRangeRover extends StatelessWidget {
  const BlackRangeRover({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: RangeRoverColors.greyBackgroundColorDark,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Positioned(
              left: -150,
              child: Container(
                height: 450,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  gradient: RadialGradient(
                    colors: [
                      RangeRoverColors.greyBackgroundColorLight,
                      RangeRoverColors.greyBackgroundColorDark,
                    ],
                    center: Alignment.center,
                    radius: 0.5,
                  ),
                ),
              ),
            ),
            Positioned.fill(
              child: Container(
                height: 450,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      RangeRoverColors.greyBackgroundColorDark,
                      RangeRoverColors.greyBackgroundColorLight,
                      RangeRoverColors.greyBackgroundColorDark,
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
              ),
            ),
            Positioned.fill(
              child: ListView(
                padding: const EdgeInsets.only(bottom: 130),
                children: [
                  const SizedBox(height: 50),
                  ProfileHeaderWidget(),
                  const SizedBox(height: 5),
                  VehicleNameWidget(),
                  const SizedBox(height: 10),
                  BlackRangeRoverCarWidget(
                    assetPath: 'assets/range_rover2.png',
                    iconBackgroundColor:
                        RangeRoverColors.greyIconBackgroundColor,
                  ),
                  CurrentCarRunningStatsWidget(),
                  const SizedBox(height: 12),
                  OverallRangeLeftStatsWidget(),
                  const SizedBox(height: 12),
                  PastRideStatsWidget(),
                ],
              ),
            ),
            Positioned(
              bottom: 10,
              left: 0,
              right: 0,
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 30),
                height: 70,
                child: FrostedWidget(
                    iconData: Icons.wallet_rounded,
                    iconColor: Colors.white,
                    colorBegin: RangeRoverColors.greyBackgroundColorLight,
                    colorEnd: RangeRoverColors.greyBackgroundColorLight,
                    opacity: .3,
                    showIcon: false,
                    iconBackgroundColor: Colors.black,
                    child: SizedBox(
                      height: 70,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'START DRIVING',
                            style: TextStyle(
                              color: Colors.white.withOpacity(.7),
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                '11.1\$',
                                style: TextStyle(
                                  color: Colors.white.withOpacity(.7),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Icon(
                                CupertinoIcons.forward,
                                color: Colors.white.withOpacity(.5),
                              ),
                            ],
                          )
                        ],
                      ),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

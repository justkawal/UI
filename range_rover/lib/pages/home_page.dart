import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:range_rover/pages/black_range_rover_page.dart';
import 'package:range_rover/utilities/colors.dart';
import 'package:range_rover/widgets/frosted_widget.dart';
import 'package:range_rover/widgets/profile_header_widget.dart';
import 'package:range_rover/widgets/range_rover_car_widget.dart';
import 'package:range_rover/widgets/small_chip_km_range_widget.dart';
import 'package:range_rover/widgets/vehicle_name_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: RangeRoverColors.darkGreenColor,
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
                      Color(0xFF33535a),
                      RangeRoverColors.darkGreenColor,
                    ],
                    center: Alignment.center,
                    radius: 0.5,
                  ),
                ),
              ),
            ),
            Positioned.fill(
              child: ListView(
                padding: const EdgeInsets.all(0),
                children: [
                  const SizedBox(height: 50),
                  ProfileHeaderWidget(),
                  const SizedBox(height: 10),
                  VehicleNameWidget(),
                  const SizedBox(height: 20),
                  GreenRangeRoverCarWidget(
                    assetPath: 'assets/range_rover1.png',
                    iconBackgroundColor: RangeRoverColors.darkGreenColor,
                  ),
                  const SizedBox(height: 5),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    height: 99,
                    child: Row(
                      children: [
                        Expanded(
                          child: FrostedWidget(
                            iconData: Icons.speed,
                            iconColor: Colors.white,
                            colorBegin: RangeRoverColors.darkGreyColor2,
                            colorEnd: RangeRoverColors.darkGreenColor,
                            iconBackgroundColor: RangeRoverColors.darkBlueColor,
                            child: SmallChipKMRangeWidget(
                              progressColor: Colors.white,
                              text1: 'KM RANGE',
                              text2: '120 km',
                              progressValue: .65,
                            ),
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: FrostedWidget(
                            iconData: CupertinoIcons.bolt_fill,
                            iconColor: RangeRoverColors.lightGreenColor,
                            iconBackgroundColor: RangeRoverColors.darkBlueColor,
                            colorBegin: RangeRoverColors.darkGreyColor2,
                            colorEnd: RangeRoverColors.darkGreenColor,
                            child: SmallChipKMRangeWidget(
                              progressColor: RangeRoverColors.yellowColor,
                              text1: 'KM RANGE',
                              text2: '${Random.secure().nextInt(99)}%',
                              progressValue: .45,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    height: 240,
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Stack(
                      children: [
                        Positioned(
                          height: 300,
                          left: 0,
                          right: 0,
                          child: FrostedWidget(
                            showIcon: false,
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colorBegin: RangeRoverColors.darkGreyColor2,
                            colorEnd: RangeRoverColors.darkGreenColor,
                            iconBackgroundColor: RangeRoverColors.darkBlueColor,
                            opacity: .5,
                            child: SizedBox(
                              height: 120,
                              // color: Colors.red,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'LAST RIDE',
                                        style: TextStyle(
                                          color: Colors.white.withOpacity(.5),
                                          fontSize: 10,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      Text(
                                        'Fuji - Tokyo',
                                        style: TextStyle(
                                          color: Colors.white.withOpacity(.5),
                                          fontSize: 11,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      Text(
                                        '129 km',
                                        style: TextStyle(
                                          color: Colors.white.withOpacity(.9),
                                          fontSize: 25,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 80,
                                    child: Stack(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 10, right: 10, top: 11),
                                          child: Align(
                                            alignment: Alignment.center,
                                            child: SvgPicture.asset(
                                              'assets/route.svg',
                                              height: 50,
                                              width: 50,
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          top: 28,
                                          left: 2,
                                          child: Icon(
                                            Icons.location_on,
                                            color: Colors.white,
                                            size: 17,
                                          ),
                                        ),
                                        Positioned(
                                          top: 3,
                                          right: 5,
                                          child: Icon(
                                            Icons.location_on,
                                            color: RangeRoverColors
                                                .lightGreenColor,
                                            size: 17,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: 24,
                                    width: 24,
                                    decoration: BoxDecoration(
                                      color: RangeRoverColors.darkBlueColor,
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                    child: Icon(
                                      CupertinoIcons.chevron_forward,
                                      color: Colors.white.withOpacity(.85),
                                      size: 15.5,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 28,
                          left: MediaQuery.of(context).size.width * .05,
                          child: SizedBox(
                            width: 50,
                            height: 62,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 45,
                                  width: 45,
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(36, 63, 64, 1),
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  padding: const EdgeInsets.all(6.5),
                                  child: Icon(
                                    CupertinoIcons.bell_fill,
                                    color: Colors.white.withOpacity(.9),
                                    size: 20,
                                  ),
                                ),
                                Text(
                                  'Find Car',
                                  style: TextStyle(
                                    color: Colors.white.withOpacity(.5),
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 28,
                          right: MediaQuery.of(context).size.width * .05,
                          child: SizedBox(
                            width: 50,
                            height: 62,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 45,
                                  width: 45,
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(36, 63, 64, 1),
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  padding: const EdgeInsets.all(6.5),
                                  child: Icon(
                                    CupertinoIcons.lock_fill,
                                    color: Colors.white.withOpacity(.9),
                                    size: 20,
                                  ),
                                ),
                                Text(
                                  'Unlock',
                                  style: TextStyle(
                                    color: Colors.white.withOpacity(.5),
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 10,
                          left: MediaQuery.of(context).size.width / 2 - 90,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                CupertinoPageRoute(
                                  builder: (context) => const BlackRangeRover(),
                                ),
                              );
                            },
                            child: SizedBox(
                              width: 120,
                              height: 120,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(36, 63, 64, 1),
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                  padding: const EdgeInsets.all(6.5),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [
                                          Color.fromRGBO(102, 112, 112, 1),
                                          Color.fromRGBO(34, 55, 56, 1),
                                        ],
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                      ),
                                      borderRadius: BorderRadius.circular(100),
                                      border: Border.all(
                                        color: RangeRoverColors.lightGreenColor
                                            .withOpacity(.8),
                                        width: 1.6,
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'ENGINE',
                                          style: TextStyle(
                                            color: Colors.white.withOpacity(.5),
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        Text(
                                          'START',
                                          style: TextStyle(
                                            color: Colors.white.withOpacity(.9),
                                            fontSize: 20,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'dart:math';

import 'package:banking_store/home_page/tabs/home/savings_model.dart';
import 'package:banking_store/home_page/tabs/profile/profile_picture_name.dart';
import 'package:banking_store/notification_page/notification_page.dart';
import 'package:banking_store/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart' as cupertino;
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Stack(
        children: [
          Positioned.fill(
            bottom: MediaQuery.of(context).size.height / 2.4,
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
              ),
              child: Container(
                color: StoreColors.darkBrown,
                child: Stack(
                  children: [
                    Positioned(
                      bottom: 180,
                      left: -180,
                      height: 450,
                      child: Transform.flip(
                        flipY: true,
                        child: Transform.rotate(
                          angle: pi / 2.1,
                          child: Image(
                            image: Svg('assets/svgs/svg-path.svg'),
                            color: StoreColors.darkGreen,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: -350,
                      right: -300,
                      height: 600,
                      child: Transform.flip(
                        flipY: false,
                        child: Transform.rotate(
                          angle: pi,
                          child: Image(
                            image: Svg('assets/svgs/svg-path.svg'),
                            color: StoreColors.darkTeal,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: -60,
                      right: -150,
                      height: 330,
                      child: Transform.flip(
                        flipY: false,
                        flipX: true,
                        child: Transform.rotate(
                          angle: pi,
                          child: Image(
                            image: Svg('assets/svgs/svg-path.svg'),
                            color: StoreColors.ligthPink,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned.fill(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: Column(
                children: [
                  const SizedBox(height: 70),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push<void>(
                            context,
                            MaterialPageRoute<void>(
                              builder: (BuildContext context) =>
                                  const NotificationPage(),
                            ),
                          );
                        },
                        child: Icon(
                          cupertino.CupertinoIcons.slider_horizontal_3,
                          color: StoreColors.ligthPink.withOpacity(.9),
                          size: 28,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 70),
                  ProfilePictureWidget(),
                  const SizedBox(height: 55),
                  Container(
                    height: 100,
                    padding: const EdgeInsets.symmetric(horizontal: 35),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 20,
                          offset: Offset(0, 10),
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Instant',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 23,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Cash available',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          '\$2,162',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 35),
                  Container(
                    height: 170,
                    width: double.infinity,
                    padding:
                        const EdgeInsets.only(left: 35, right: 35, top: 25),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 20,
                          offset: Offset(0, 10),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Savings',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'Smart saving is on',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              '\$5,102',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            for (final model in CircularIconModel.savings)
                              getCircularIcons(model),
                            getCircularIcons(
                                CircularIconModel(
                                    icon: Icons.add, progressValue: 0),
                                false,
                                true),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 35),
                  Container(
                    height: 170,
                    width: double.infinity,
                    padding:
                        const EdgeInsets.only(left: 35, right: 35, top: 25),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 30,
                          offset: Offset(0, 20),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Investment',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'Auto-investing is on',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              '\$2,234',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            for (final model in CircularIconModel.investments)
                              getCircularIcons(
                                model,
                                false,
                                true,
                                StoreColors.darkGreen,
                                Colors.white,
                              ),
                            getCircularIcons(
                              CircularIconModel(
                                  icon: Icons.add, progressValue: 0),
                              false,
                              true,
                              Colors.white,
                              StoreColors.darkGreen,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container getCircularIcons(CircularIconModel model,
      [bool showProgress = true,
      bool showShadow = false,
      Color? containerColor,
      Color? iconColor]) {
    return Container(
      height: 42,
      width: 42,
      margin: const EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
        color: containerColor ?? Colors.white,
        borderRadius: BorderRadius.circular(25),
        boxShadow: showShadow
            ? const [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 20,
                  offset: Offset(0, 10),
                ),
              ]
            : null,
      ),
      child: Stack(
        children: [
          if (showProgress)
            Positioned.fill(
              child: CircularProgressIndicator(
                value: model.progressValue,
                strokeWidth: 2,
                color: StoreColors.darkGreen,
                strokeCap: StrokeCap.round,
                backgroundColor: StoreColors.darkBrown.withOpacity(0.1),
              ),
            ),
          Positioned.fill(
            child: Center(
              child: Icon(
                model.icon,
                color: iconColor ?? StoreColors.darkBrown,
                size: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

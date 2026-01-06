import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:tesla/pages/review_car_details_page.dart';
import 'package:tesla/pages/station_page.dart';
import 'package:tesla/utils/tesla_colors.dart';
import 'package:tesla/widgets/extra_info_widget.dart';
import 'package:tesla/widgets/tesla_model_charging_card.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TeslaColors.lightGreyColor,
      body: Stack(
        children: [
          Positioned.fill(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ListView(
                padding: const EdgeInsets.only(bottom: 150),
                children: [
                  const SizedBox(height: 75),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'My Profile',
                        style: TextStyle(
                          color: TeslaColors.darkGreenColor,
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 35),
                  SizedBox(
                    height: 110,
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Container(
                            height: 110,
                            width: 110,
                            color: TeslaColors.darkGreenColor,
                            child: Image.asset(
                              'assets/profile.png',
                              fit: BoxFit.cover,
                              filterQuality: FilterQuality.high,
                            ),
                          ),
                        ),
                        const SizedBox(width: 20),
                        Container(
                          height: 110,
                          padding: const EdgeInsets.symmetric(vertical: 7),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Ella Marques',
                                style: TextStyle(
                                  color: TeslaColors.darkGreenColor,
                                  fontSize: 21,
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: .3,
                                ),
                              ),
                              Text(
                                '+1 (123) 456-7890',
                                style: TextStyle(
                                  color: TeslaColors.darkGreyColor,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: .4,
                                ),
                              ),
                              Text(
                                'like_it@gmail.com',
                                style: TextStyle(
                                  color: TeslaColors.darkGreyColor,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: .4,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Spacer(),
                        SizedBox(
                          width: 60,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                height: 110,
                                width: 1,
                                margin:
                                    const EdgeInsets.symmetric(vertical: 10),
                                decoration: BoxDecoration(
                                  color: TeslaColors.darkGreyColor
                                      .withOpacity(.25),
                                  borderRadius: BorderRadius.circular(1),
                                ),
                              ),
                              const SizedBox(width: 10),
                              Icon(
                                Icons.edit_rounded,
                                color: TeslaColors.darkGreenColor,
                                size: 23,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Divider(
                    color: TeslaColors.darkGreyColor.withOpacity(.20),
                    thickness: 1,
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    height: 50,
                    child: Row(
                      children: [
                        Text(
                          'My EVs (3)',
                          style: TextStyle(
                              color: TeslaColors.darkGreenColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              letterSpacing: -.5,
                              wordSpacing: 1),
                        ),
                        const Spacer(),
                        SizedBox(
                          width: 60,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                height: 50,
                                width: 1,
                                margin:
                                    const EdgeInsets.symmetric(vertical: 10),
                                decoration: BoxDecoration(
                                  color: TeslaColors.darkGreyColor
                                      .withOpacity(.25),
                                  borderRadius: BorderRadius.circular(1),
                                ),
                              ),
                              const SizedBox(width: 10),
                              GestureDetector(
                                onTap: () {
                                  showMaterialModalBottomSheet<
                                      ReviewCarDetailsPage>(
                                    context: context,
                                    useRootNavigator: true,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(20),
                                      ),
                                    ),
                                    builder: (context) =>
                                        ReviewCarDetailsPage(),
                                  );
                                },
                                child: Icon(
                                  Icons.edit_rounded,
                                  color: TeslaColors.darkGreenColor,
                                  size: 23,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    height: 90,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.all(0),
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return Container(
                          height: 80,
                          width: 285,
                          margin: const EdgeInsets.only(right: 20),
                          child: TeslaModelChargingCard(
                            showChargedOption: false,
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 30),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const StationPage(),
                        ),
                      );
                    },
                    child: ExtraInfoWidget(
                      iconData: CupertinoIcons.bolt_fill,
                      color: TeslaColors.darkGreyColor,
                      text: 'My Sessions',
                      fontSize: 17.5,
                      iconSize: 24,
                    ),
                  ),
                  const SizedBox(height: 14),
                  Divider(
                    color: TeslaColors.darkGreyColor.withOpacity(.15),
                    thickness: 1.5,
                    indent: 5,
                    endIndent: 5,
                  ),
                  const SizedBox(height: 14),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const StationPage(),
                        ),
                      );
                    },
                    child: ExtraInfoWidget(
                      iconData: CupertinoIcons.money_dollar_circle_fill,
                      color: TeslaColors.darkGreyColor,
                      text: 'My Payments',
                      fontSize: 17.5,
                      iconSize: 24,
                    ),
                  ),
                  const SizedBox(height: 14),
                  Divider(
                    color: TeslaColors.darkGreyColor.withOpacity(.15),
                    thickness: 1.5,
                    indent: 5,
                    endIndent: 5,
                  ),
                  const SizedBox(height: 14),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const StationPage(),
                        ),
                      );
                    },
                    child: ExtraInfoWidget(
                      iconData: CupertinoIcons.heart_fill,
                      color: TeslaColors.darkGreyColor,
                      text: 'Favourite stations',
                      fontSize: 17.5,
                      iconSize: 24,
                    ),
                  ),
                  const SizedBox(height: 14),
                  Divider(
                    color: TeslaColors.darkGreyColor.withOpacity(.15),
                    thickness: 1.5,
                    indent: 5,
                    endIndent: 5,
                  ),
                  const SizedBox(height: 14),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const StationPage(),
                        ),
                      );
                    },
                    child: ExtraInfoWidget(
                      iconData: CupertinoIcons.radiowaves_right,
                      color: TeslaColors.darkGreyColor,
                      text: 'My RFID',
                      fontSize: 17.5,
                      iconSize: 24,
                    ),
                  ),
                  const SizedBox(height: 14),
                  Divider(
                    color: TeslaColors.darkGreyColor.withOpacity(.15),
                    thickness: 1.5,
                    indent: 5,
                    endIndent: 5,
                  ),
                  const SizedBox(height: 14),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const StationPage(),
                        ),
                      );
                    },
                    child: ExtraInfoWidget(
                      iconData: CupertinoIcons.person_2_fill,
                      color: TeslaColors.darkGreyColor,
                      text: 'Refer friends',
                      fontSize: 17.5,
                      iconSize: 24,
                    ),
                  ),
                  const SizedBox(height: 14),
                  Divider(
                    color: TeslaColors.darkGreyColor.withOpacity(.15),
                    thickness: 1.5,
                    indent: 5,
                    endIndent: 5,
                  ),
                  const SizedBox(height: 14),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const StationPage(),
                        ),
                      );
                    },
                    child: ExtraInfoWidget(
                      iconData: Icons.logout_rounded,
                      color: TeslaColors.redColor,
                      text: 'Logout',
                      fontSize: 17.5,
                      iconSize: 24,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 115,
              decoration: BoxDecoration(color: Colors.white),
              padding: const EdgeInsets.only(
                  left: 16, right: 16, top: 20, bottom: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  BottomHomeNavigationWidgets(
                    iconData: CupertinoIcons.house_fill,
                    text: 'Home',
                  ),
                  BottomHomeNavigationWidgets(
                    iconData: CupertinoIcons.creditcard_fill,
                    text: 'Payments',
                  ),
                  BottomHomeNavigationWidgets(
                    iconData: CupertinoIcons.calendar,
                    text: 'Plan',
                  ),
                  BottomHomeNavigationWidgets(
                    iconData: CupertinoIcons.profile_circled,
                    text: 'Profile',
                    isSelected: true,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BottomHomeNavigationWidgets extends StatelessWidget {
  final IconData iconData;
  final String text;
  final bool isSelected;
  const BottomHomeNavigationWidgets({
    required this.iconData,
    required this.text,
    this.isSelected = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconData,
          color: isSelected
              ? TeslaColors.darkGreenColor.withOpacity(.8)
              : TeslaColors.darkGreyColor,
          size: 28,
        ),
        const SizedBox(height: 5),
        Text(
          text,
          style: TextStyle(
            color: isSelected
                ? TeslaColors.darkGreenColor.withOpacity(.8)
                : TeslaColors.darkGreyColor,
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}

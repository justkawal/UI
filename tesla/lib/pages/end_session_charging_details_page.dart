import 'package:action_slider/action_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tesla/utils/tesla_colors.dart';
import 'package:tesla/widgets/session_details_widget.dart';
import 'package:tesla/widgets/swipe_widget.dart';

class EndSessionChargingDetailsPage extends StatelessWidget {
  const EndSessionChargingDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
      child: Container(
        height: MediaQuery.of(context).size.height * .87,
        decoration: BoxDecoration(color: TeslaColors.lightGreyColor),
        child: SizedBox(
          child: Stack(
            children: [
              Positioned.fill(
                child: ListView(
                  padding:
                      const EdgeInsets.only(left: 22, right: 22, bottom: 20),
                  children: [
                    const SizedBox(height: 35),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(width: 26),
                        Text(
                          'My Tesla Model 3',
                          style: TextStyle(
                            color: TeslaColors.darkGreenColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            width: 26,
                            height: 26,
                            decoration: BoxDecoration(
                              color: TeslaColors.darkGreyColor,
                              borderRadius: BorderRadius.circular(26),
                            ),
                            padding: const EdgeInsets.all(5),
                            child: Icon(
                              CupertinoIcons.chevron_down,
                              color: Colors.white,
                              size: 17,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    SizedBox(
                      height: 232,
                      child: Stack(
                        children: [
                          Positioned(
                            bottom: 0,
                            left: 0,
                            right: 0,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(21),
                              child: SizedBox(
                                height: 212,
                                child: Image.asset(
                                  'assets/charging.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 0,
                            left: 0,
                            right: 0,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 125,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    color: TeslaColors.lightestGreenColor,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  padding: const EdgeInsets.only(right: 2),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        CupertinoIcons.bolt_fill,
                                        color: Colors.green[600],
                                        size: 20,
                                      ),
                                      const SizedBox(width: 3),
                                      Text(
                                        'Charging',
                                        style: TextStyle(
                                          color: Colors.green[600],
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 30),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 43,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.battery_5_bar_rounded,
                                  size: 22,
                                  color: TeslaColors.orangeColor,
                                ),
                                const SizedBox(width: 2),
                                Text(
                                  '84% charged',
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    color: TeslaColors.darkGreenColor,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 39,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  CupertinoIcons.bolt_fill,
                                  size: 22,
                                  color: TeslaColors.greenColor,
                                ),
                                const SizedBox(width: 1),
                                Text(
                                  '16.12KWh',
                                  style: TextStyle(
                                    color: TeslaColors.darkGreenColor,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 30,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  CupertinoIcons.money_dollar_circle_fill,
                                  size: 24,
                                ),
                                const SizedBox(width: 1),
                                Text(
                                  '\$82.53',
                                  style: TextStyle(
                                    color: TeslaColors.darkGreenColor,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 12),
                    Divider(
                      color: TeslaColors.darkGreyColor.withOpacity(.6),
                      thickness: 1,
                    ),
                    const SizedBox(height: 10),
                    SessionDetails(
                      detailType: 'Charge Time',
                      detailValue: '02:11:43',
                    ),
                    Divider(
                      color: TeslaColors.greyColor.withOpacity(.4),
                      thickness: 1,
                    ),
                    SessionDetails(
                      detailType: 'Time to full',
                      detailValue: '00:22:45',
                    ),
                    Divider(
                      color: TeslaColors.greyColor.withOpacity(.4),
                      thickness: 1,
                    ),
                    SessionDetails(
                      detailType: 'Range at current charge',
                      detailValue: '334 mi',
                    ),
                  ],
                ),
              ),
              SwipeWidget(
                controller: ActionSliderController(),
                text: 'Swipe to End Session',
                boxDecoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  gradient: LinearGradient(
                    colors: [
                      TeslaColors.redColor,
                      TeslaColors.darkRedColor,
                    ],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(.5),
                      blurRadius: 5,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

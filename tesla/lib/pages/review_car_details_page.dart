import 'package:flutter/material.dart';
import 'package:tesla/utils/tesla_colors.dart';
import 'package:tesla/widgets/bottom_sheet_action_buttons_widget.dart';
import 'package:tesla/widgets/session_details_widget.dart';

class ReviewCarDetailsPage extends StatelessWidget {
  const ReviewCarDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
      child: Container(
        height: MediaQuery.of(context).size.height * .87,
        decoration: BoxDecoration(color: Colors.white),
        child: SizedBox(
          child: Stack(
            children: [
              Positioned.fill(
                child: ListView(
                  padding:
                      const EdgeInsets.only(left: 22, right: 22, bottom: 200),
                  children: [
                    const SizedBox(height: 35),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Review car details',
                          style: TextStyle(
                            color: TeslaColors.darkGreenColor,
                            fontSize: 17,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        GestureDetector(
                          onTap: () => Navigator.pop(context),
                          child: Container(
                            width: 26,
                            height: 26,
                            decoration: BoxDecoration(
                              color: TeslaColors.darkGreyColor,
                              borderRadius: BorderRadius.circular(26),
                            ),
                            padding: const EdgeInsets.all(5),
                            child: Icon(
                              Icons.clear_rounded,
                              color: Colors.white,
                              size: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    Container(
                      color: Colors.red,
                      height: 200,
                      child: Image.asset(
                        'assets/tesla.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      height: 55,
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 55,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color:
                                      TeslaColors.darkGreyColor.withOpacity(.6),
                                  width: 1.3,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  'assets/number_plate.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 14),
                          Expanded(
                            child: Container(
                              height: 55,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color:
                                      TeslaColors.darkGreyColor.withOpacity(.6),
                                  width: 1.3,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.ev_station_rounded,
                                      color: TeslaColors.darkGreenColor,
                                      size: 25),
                                  const SizedBox(width: 5),
                                  Text(
                                    '225mi',
                                    style: TextStyle(
                                      color: TeslaColors.darkGreenColor,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(width: 14),
                          Expanded(
                            child: Container(
                              height: 55,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color:
                                      TeslaColors.darkGreyColor.withOpacity(.6),
                                  width: 1.3,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.battery_4_bar_rounded,
                                      color: TeslaColors.darkGreenColor,
                                      size: 25),
                                  const SizedBox(width: 5),
                                  Text(
                                    '53%',
                                    style: TextStyle(
                                      color: TeslaColors.darkGreenColor,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 30),
                    SessionDetails(
                      detailType: 'Make',
                      detailValue: 'Tesla',
                      fontSize: 15,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 6, vertical: 10),
                    ),
                    Divider(
                      color: TeslaColors.greyColor.withOpacity(.4),
                      thickness: 1,
                    ),
                    SessionDetails(
                      detailType: 'Model',
                      detailValue: 'Model3',
                      fontSize: 15,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 6, vertical: 10),
                    ),
                    Divider(
                      color: TeslaColors.greyColor.withOpacity(.4),
                      thickness: 1,
                    ),
                    SessionDetails(
                      detailType: 'Variant',
                      detailValue: 'Long Range',
                      fontSize: 15,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 6, vertical: 10),
                    ),
                    Divider(
                      color: TeslaColors.greyColor.withOpacity(.4),
                      thickness: 1,
                    ),
                    SessionDetails(
                      detailType: 'VIN',
                      detailValue: 'HFSK12345678',
                      fontSize: 15,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 6, vertical: 10),
                    ),
                  ],
                ),
              ),
              BottomSheetActionButtons(
                confirmText: 'Add Car',
                cancelText: 'This is not my car',
                confirmAction: () {
                  Navigator.pop(context);
                },
                cancelAction: () {
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

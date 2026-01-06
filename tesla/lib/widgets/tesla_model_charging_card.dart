import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tesla/utils/tesla_colors.dart';

class TeslaModelChargingCard extends StatelessWidget {
  final bool showChargedOption;
  const TeslaModelChargingCard({
    this.showChargedOption = true,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(left: 18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (showChargedOption)
                    Text(
                      'Car Charged',
                      style: TextStyle(
                        color: TeslaColors.darkGreenColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  const SizedBox(height: 4),
                  Text(
                    'My Model 3',
                    style: TextStyle(
                      color: TeslaColors.darkGreenColor,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(right: 8),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    height: 50,
                    child: Image.asset(
                      'assets/tesla.png',
                    ),
                  ),
                  const SizedBox(width: 7),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Transform.rotate(
                        angle: 4.7,
                        child: Icon(
                          CupertinoIcons.battery_full,
                          color: Colors.green[700],
                          size: 30,
                        ),
                      ),
                      Text(
                        '99%',
                        style: TextStyle(
                          color: TeslaColors.darkGreenColor,
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
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

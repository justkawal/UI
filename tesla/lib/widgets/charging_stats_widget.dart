import 'package:flutter/material.dart';
import 'package:tesla/utils/tesla_colors.dart';

class ChargingStatsWidget extends StatelessWidget {
  final String statsType;
  final String statsValue;
  const ChargingStatsWidget({
    required this.statsType,
    required this.statsValue,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.only(left: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              statsType,
              style: TextStyle(
                color: TeslaColors.darkGreyColor,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              statsValue,
              style: TextStyle(
                color: TeslaColors.darkGreenColor,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

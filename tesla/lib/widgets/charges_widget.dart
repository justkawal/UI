import 'package:flutter/material.dart';
import 'package:tesla/utils/tesla_colors.dart';

class ChargesWidget extends StatelessWidget {
  final String chargeType;
  final String price;

  const ChargesWidget({
    super.key,
    required this.chargeType,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            chargeType,
            style: TextStyle(
              color: TeslaColors.darkGreyColor,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            '\$$price',
            style: TextStyle(
              color: TeslaColors.darkGreyColor,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

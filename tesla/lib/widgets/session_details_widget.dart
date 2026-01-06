import 'package:flutter/material.dart';
import 'package:tesla/utils/tesla_colors.dart';

class SessionDetails extends StatelessWidget {
  final String detailType;
  final String detailValue;
  final EdgeInsets? padding;
  final double? fontSize;
  const SessionDetails({
    required this.detailType,
    required this.detailValue,
    this.fontSize = 17,
    this.padding,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          padding ?? const EdgeInsets.symmetric(horizontal: 6, vertical: 14),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            detailType,
            style: TextStyle(
              color: TeslaColors.darkGreyColor,
              fontSize: fontSize,
              fontWeight: FontWeight.w400,
            ),
          ),
          Text(
            detailValue,
            style: TextStyle(
              color: TeslaColors.darkGreenColor,
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

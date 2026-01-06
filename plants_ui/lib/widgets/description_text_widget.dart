import 'package:flutter/material.dart';
import 'package:plants_ui/utils/plants_colors.dart';

class DescriptionTextWidget extends StatelessWidget {
  const DescriptionTextWidget({
    super.key,
    required this.richText1,
    required this.richText2,
    required this.richText3,
  });

  final String richText1;
  final String richText2;
  final String richText3;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: richText1,
        style: TextStyle(
          color: PlantColors.mediumGreen,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
        children: [
          TextSpan(
            text: richText2,
            style: TextStyle(
              color: PlantColors.darkGreen,
            ),
          ),
          TextSpan(
            text: richText3,
            style: TextStyle(
              color: PlantColors.mediumGreen,
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}

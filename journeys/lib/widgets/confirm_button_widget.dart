import 'package:flutter/material.dart';
import 'package:journeys/utilities/colors.dart';

class ConfirmButton extends StatelessWidget {
  final String actionName;
  const ConfirmButton({
    required this.actionName,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      width: double.infinity,
      decoration: BoxDecoration(
        color: JourneyColors.green,
        borderRadius: BorderRadius.circular(65),
      ),
      alignment: Alignment.center,
      child: Text(
        actionName,
        style: TextStyle(
          fontSize: 21,
          fontWeight: FontWeight.w500,
          color: Colors.white,
        ),
      ),
    );
  }
}

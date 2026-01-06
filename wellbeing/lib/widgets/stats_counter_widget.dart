import 'package:flutter/material.dart';
import 'package:wellbeing/utils/colors.dart';

class StatsCountersWidget extends StatelessWidget {
  final String title;
  final String count;
  const StatsCountersWidget({
    required this.title,
    required this.count,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: const EdgeInsets.only(left: 17, right: 20, top: 2),
      width: (MediaQuery.of(context).size.width - 55) / 2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey[400]!.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 20,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Text(
              title,
              style: TextStyle(
                  color: WellBeingColors.darkBlueGrey,
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                  height: 1.3),
            ),
          ),
          const SizedBox(width: 5),
          Text(
            count,
            style: TextStyle(
              color: WellBeingColors.veryDarkMaroon,
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

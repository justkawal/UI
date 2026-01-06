import 'package:flutter/material.dart';

class LastRideProgressStatsWidget extends StatelessWidget {
  final String text1;
  final String text2;
  const LastRideProgressStatsWidget({
    required this.text1,
    required this.text2,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text1,
            style: TextStyle(
              color: Colors.white.withOpacity(.5),
              fontSize: 8,
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            text2,
            style: TextStyle(
              color: Colors.white.withOpacity(.9),
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}

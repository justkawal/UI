import 'package:flutter/material.dart';

class LiveProgressStatsWidget extends StatelessWidget {
  final String text1;
  final String text2;
  final IconData iconData;
  const LiveProgressStatsWidget({
    required this.text1,
    required this.text2,
    required this.iconData,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(
              iconData,
              color: Colors.grey.withOpacity(.9),
              size: 15,
            ),
            const SizedBox(width: 5),
            Text(
              text1,
              style: TextStyle(
                color: Colors.grey.withOpacity(.9),
                fontSize: 10.5,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        Text(
          text2,
          style: TextStyle(
            color: Colors.white.withOpacity(.9),
            fontSize: 22,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}

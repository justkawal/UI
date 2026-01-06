import 'package:flutter/material.dart';

class ExtraInfoWidget extends StatelessWidget {
  final IconData iconData;
  final Color color;
  final double iconSize;
  final double fontSize;
  final String text;
  const ExtraInfoWidget({
    super.key,
    required this.iconData,
    required this.color,
    required this.text,
    this.iconSize = 20,
    this.fontSize = 14,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 5),
      child: Row(
        children: [
          Icon(
            iconData,
            size: iconSize,
            color: color,
          ),
          const SizedBox(width: 10),
          Text(
            text,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: color,
              fontSize: fontSize,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}

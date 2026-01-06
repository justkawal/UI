import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  final String title;
  final Function()? onTap;
  final double fontSize;
  const HeaderWidget({
    super.key,
    required this.title,
    this.onTap,
    this.fontSize = 20,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: onTap,
            child: SizedBox(
              height: 40,
              width: 40,
              child: Icon(
                CupertinoIcons.chevron_back,
                size: 25,
                color: Colors.white,
              ),
            ),
          ),
          Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: fontSize,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(width: 40),
        ],
      ),
    );
  }
}

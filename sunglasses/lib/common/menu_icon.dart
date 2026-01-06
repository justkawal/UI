import 'package:flutter/material.dart';

class MenuIcon extends StatelessWidget {
  final double width;
  final double height;
  const MenuIcon({required this.width, required this.height, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: height * 0.16,
            margin: EdgeInsets.only(right: width * .7),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(width * height),
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 5),
          Container(
            height: height * 0.16,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(width),
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 5),
          Container(
            height: height * 0.16,
            margin: EdgeInsets.only(left: width * .4),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(width * height),
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

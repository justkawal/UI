import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:range_rover/utilities/colors.dart';

class RouteWidget extends StatelessWidget {
  final double height;
  final double width;
  final double startIconTop;
  final double startIconLeft;
  final double endIconTop;
  final double endIconRight;
  final double iconSize;
  const RouteWidget({
    this.height = 80,
    this.width = 170,
    this.startIconTop = 28,
    this.startIconLeft = 2,
    this.endIconTop = 3,
    this.endIconRight = 5,
    this.iconSize = 17,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 11),
            child: Align(
              alignment: Alignment.center,
              child: SvgPicture.asset(
                'assets/route.svg',
                height: 50,
                width: 50,
              ),
            ),
          ),
          Positioned(
            top: startIconTop,
            left: startIconLeft,
            child: Icon(
              Icons.location_on,
              color: Colors.white,
              size: iconSize,
            ),
          ),
          Positioned(
            top: endIconTop,
            right: endIconRight,
            child: Icon(
              Icons.location_on,
              color: RangeRoverColors.lightGreenColor,
              size: iconSize,
            ),
          ),
        ],
      ),
    );
  }
}

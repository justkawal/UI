import 'package:action_slider/action_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tesla/utils/tesla_colors.dart';

class SwipeWidget extends StatelessWidget {
  final ActionSliderController controller;
  final BoxDecoration? boxDecoration;
  final String text;
  final Function onTap;

  const SwipeWidget({
    required this.controller,
    this.boxDecoration,
    required this.text,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        height: 115,
        color: Colors.white,
        padding:
            const EdgeInsets.only(left: 30, right: 30, bottom: 30, top: 20),
        child: ActionSlider.custom(
          sliderBehavior: SliderBehavior.move,
          width: 300,
          controller: controller,
          height: 60,
          toggleWidth: 77,
          toggleMargin: const EdgeInsets.only(top: 5, left: 5),
          backgroundColor: Colors.green,
          foregroundChild: Container(
            decoration: boxDecoration ??
                BoxDecoration(
                  color: TeslaColors.darkGreenColor,
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(.5),
                      blurRadius: 5,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  CupertinoIcons.chevron_forward,
                  color: Colors.white,
                  size: 24,
                ),
                Icon(
                  CupertinoIcons.chevron_forward,
                  color: Colors.white,
                  size: 24,
                ),
              ],
            ),
          ),
          foregroundBuilder: (context, state, child) => child!,
          outerBackgroundBuilder: (context, state, child) => Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  TeslaColors.lightGreyColor,
                  TeslaColors.greyColor,
                ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
              borderRadius: BorderRadius.circular(50),
            ),
            alignment: Alignment.center,
            padding: const EdgeInsets.only(left: 60),
            child: Text(
              text,
              style: TextStyle(
                color: TeslaColors.darkGreenColor,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          action: (controller) {
            onTap();
          },
        ),
      ),
    );
  }
}

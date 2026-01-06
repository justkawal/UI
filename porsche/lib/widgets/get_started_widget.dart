import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:porsche/utilities/colors.dart';
import 'package:porsche/widgets/extended_border_widget.dart';

class GetStartedWidget extends StatelessWidget {
  const GetStartedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: PorscheColors.darkGreen,
      padding: const EdgeInsets.only(left: 25, right: 25, bottom: 20),
      child: Row(
        children: [
          SizedBox(
            width: 44,
            child: ExtendedBorderWidget(
              padding: const EdgeInsets.symmetric(
                vertical: 8,
              ),
              borderRadius: BorderRadius.circular(10),
              isSelected: true,
              borderColor: Colors.white,
              borderWidth: .5,
              selectedColor: PorscheColors.darkGreen,
              shadowColor: Colors.white,
              offset: const Offset(3, 4),
              child: Icon(
                CupertinoIcons.heart,
                color: Colors.white,
                size: 25,
              ),
            ),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: ExtendedBorderWidget(
              padding: const EdgeInsets.symmetric(
                vertical: 8,
              ),
              borderRadius: BorderRadius.circular(27.5),
              innerColor: PorscheColors.veryLightGreen,
              isSelected: true,
              selectedColor: PorscheColors.veryLightGreen,
              shadowColor: PorscheColors.veryLightGreen,
              offset: const Offset(3, 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Get Started',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

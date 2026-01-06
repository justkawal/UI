import 'package:flutter/material.dart';
import 'package:porsche/utilities/colors.dart';

class CarDetailedPageHeaderWidget extends StatelessWidget {
  const CarDetailedPageHeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 380,
      color: PorscheColors.veryLightGreen,
      padding: const EdgeInsets.only(left: 25, right: 25, top: 70),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                behavior: HitTestBehavior.translucent,
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                  size: 25,
                ),
              ),
              Text(
                'Porsche Prestige',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 23,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Icon(
                Icons.share_rounded,
                color: Colors.black,
                size: 25,
              ),
            ],
          ),
          const SizedBox(height: 30),
          SizedBox(
            height: 200,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/porsche2.png',
                  height: 170,
                  fit: BoxFit.cover,
                )
              ],
            ),
          ),
          const SizedBox(height: 40),
        ],
      ),
    );
  }
}

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:journeys/utilities/colors.dart';

class RoomsImagesWidget extends StatelessWidget {
  const RoomsImagesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Row(
        children: [
          SizedBox(
            width: 170,
            child: Stack(
              children: [
                for (int index = 0; index < 4; index++)
                  Positioned(
                    left: index * 28,
                    top: 0,
                    child: Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white,
                          width: 4,
                        ),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(40),
                        child: Image.asset(
                          'assets/scenary/scenary${Random.secure().nextInt(16)}.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                Positioned(
                  left: 112,
                  top: 0,
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      color: JourneyColors.lightGreen2,
                      border: Border.all(
                        color: Colors.white,
                        width: 3,
                      ),
                      borderRadius: BorderRadius.circular(40),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      'View\nRooms',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: JourneyColors.darkGreen,
                          letterSpacing: .1,
                          height: 1),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 10),
          Text(
            '\$280',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w600,
              color: Colors.black,
              letterSpacing: .1,
            ),
          ),
          const SizedBox(width: 5),
          Padding(
            padding: const EdgeInsets.only(top: 7),
            child: Text(
              'Per Night',
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w500,
                color: Colors.grey.shade800,
                letterSpacing: .1,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

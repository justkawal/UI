import 'package:flutter/material.dart';
import 'package:journeys/utilities/colors.dart';

class AmenitiesWidget extends StatelessWidget {
  const AmenitiesWidget({super.key});

  static const amenitiesList = [
    'Wi-fi',
    'Indoor Theatre',
    'Washing Machine',
    'Dishwasher',
    'Indoor Fireplace',
    'Heater',
    'Gym'
  ];
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        for (final amenity in amenitiesList)
          Container(
            height: 36,
            decoration: BoxDecoration(
              color: JourneyColors.lightGreen,
              border: Border.all(
                color: Colors.white,
                width: 3,
              ),
              borderRadius: BorderRadius.circular(40),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  amenity,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: JourneyColors.darkGreen,
                    letterSpacing: .1,
                    height: 1,
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }
}

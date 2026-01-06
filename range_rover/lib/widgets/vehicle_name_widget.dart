import 'package:flutter/material.dart';

class VehicleNameWidget extends StatelessWidget {
  const VehicleNameWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'RANGE ROVER',
            style: TextStyle(
              color: Colors.white,
              fontSize: 23,
              fontWeight: FontWeight.bold,
              letterSpacing: 4,
            ),
          ),
          const SizedBox(height: 1),
          Text(
            'LAND ROVER AND RANGE ROVER',
            style: TextStyle(
                color: Colors.white.withOpacity(.4),
                fontSize: 10,
                fontWeight: FontWeight.w500,
                wordSpacing: 2),
          ),
        ],
      ),
    );
  }
}

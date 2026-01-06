import 'package:flutter/material.dart';
import 'package:porsche/models/car_engine_details_models.dart';

class ConfigRowDetailWidget extends StatelessWidget {
  final CarEngineDetailsModels model;
  const ConfigRowDetailWidget({
    required this.model,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        children: [
          Icon(
            model.iconData,
            size: 25,
            color: Colors.white,
          ),
          const SizedBox(width: 10),
          Text(
            model.configType,
            style: TextStyle(
              color: Colors.white,
              fontSize: 17,
              fontWeight: FontWeight.w400,
            ),
          ),
          const Spacer(),
          Text(
            model.configValue,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}

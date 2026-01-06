import 'package:flutter/material.dart';

class CarConfigModels {
  final String configName;
  final IconData iconData;

  const CarConfigModels({
    required this.configName,
    required this.iconData,
  });

  static List<CarConfigModels> dummyData = <CarConfigModels>[
    CarConfigModels(
        configName: '30 Day Return', iconData: Icons.calendar_today),
    CarConfigModels(configName: '30 Day Warranty', iconData: Icons.assignment),
    CarConfigModels(configName: 'Exterior', iconData: Icons.brush),
    CarConfigModels(configName: 'Interior', iconData: Icons.weekend),
    CarConfigModels(configName: 'Performance', iconData: Icons.speed),
    CarConfigModels(configName: 'Safety', iconData: Icons.security),
  ];
}

import 'package:flutter/material.dart';

class CarEngineDetailsModels {
  final String configType;
  final IconData iconData;
  final String configValue;

  const CarEngineDetailsModels({
    required this.configType,
    required this.iconData,
    required this.configValue,
  });

  static List<CarEngineDetailsModels> carEngineDetails = [
    CarEngineDetailsModels(
      configType: 'Engine',
      iconData: Icons.engineering,
      configValue: '4.0L V8',
    ),
    CarEngineDetailsModels(
      configType: 'Horsepower',
      iconData: Icons.speed,
      configValue: '450 hp',
    ),
    CarEngineDetailsModels(
      configType: 'Torque',
      iconData: Icons.bolt,
      configValue: '530 Nm',
    ),
    CarEngineDetailsModels(
      configType: '0-100 km/h',
      iconData: Icons.speed,
      configValue: '4.2 sec',
    ),
    CarEngineDetailsModels(
      configType: 'Top Speed',
      iconData: Icons.speed,
      configValue: '293 km/h',
    ),
  ];
}

import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plants_shop/utils/colors.dart';

class FlowerFeatureModel {
  final String title;
  final String value;
  final Color iconColor;
  final Color iconBackgroundColor;
  final Color backgroundColor;
  final IconData icon;

  const FlowerFeatureModel({
    required this.title,
    required this.value,
    required this.iconColor,
    required this.iconBackgroundColor,
    this.backgroundColor = Colors.white,
    required this.icon,
  });

  static List<FlowerFeatureModel> features = [
    FlowerFeatureModel(
      title: 'Room Light',
      icon: CupertinoIcons.lightbulb,
      value: '${Random.secure().nextInt(40) + 40}%',
      iconColor: PlantsColor.greenColor,
      iconBackgroundColor: Colors.white,
      backgroundColor: Colors.grey.shade200,
    ),
    FlowerFeatureModel(
      title: 'Room temp',
      icon: Icons.thermostat,
      value: '${Random.secure().nextInt(30) + 15}°C',
      iconColor: Colors.black,
      iconBackgroundColor: PlantsColor.yellowColor,
    ),
    FlowerFeatureModel(
      title: 'Height',
      icon: Icons.height,
      value: '${Random.secure().nextInt(30) + 15} cm',
      iconColor: Colors.black,
      iconBackgroundColor: PlantsColor.greenColor,
    ),
    FlowerFeatureModel(
      title: 'Width',
      icon: Icons.height,
      value: '${Random.secure().nextInt(30) + 15} cm',
      iconColor: Colors.black,
      iconBackgroundColor: PlantsColor.lightYellowColor,
    ),
    FlowerFeatureModel(
      title: 'Humidity',
      icon: Icons.water_damage,
      value: '${Random.secure().nextInt(30) + 15}%',
      iconColor: Colors.black,
      iconBackgroundColor: PlantsColor.blueColor,
    ),
  ];
}

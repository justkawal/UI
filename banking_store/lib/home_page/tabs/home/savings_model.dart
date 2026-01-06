import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart' as cupertino;

class CircularIconModel {
  final IconData icon;
  final double progressValue;

  const CircularIconModel({required this.icon, required this.progressValue});

  static List<CircularIconModel> savings = [
    CircularIconModel(icon: cupertino.CupertinoIcons.gift, progressValue: 0.6),
    CircularIconModel(icon: Icons.wallet, progressValue: 0.7),
    CircularIconModel(
        icon: cupertino.CupertinoIcons.airplane, progressValue: 0.55),
    CircularIconModel(
        icon: cupertino.CupertinoIcons.ticket, progressValue: 0.4),
  ];

  static List<CircularIconModel> investments = [
    CircularIconModel(
        icon: cupertino.CupertinoIcons.chart_bar, progressValue: 0),
    CircularIconModel(icon: Icons.maps_home_work_outlined, progressValue: 0),
    CircularIconModel(
        icon: cupertino.CupertinoIcons.money_dollar, progressValue: 0),
  ];
}

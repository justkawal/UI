import 'package:banking_store/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart' as cupertino;

class ConfigurationModel {
  final Color iconContainerColor;
  final IconData icon;
  final Color iconColor;
  final String configurationName;
  final String? hint;
  final Widget trailingWidget;

  ConfigurationModel({
    required this.iconContainerColor,
    required this.icon,
    this.iconColor = Colors.white,
    required this.configurationName,
    this.hint,
    this.trailingWidget = const Icon(
      Icons.arrow_forward_ios_rounded,
      color: Colors.grey,
      size: 20,
    ),
  });

  static List<ConfigurationModel> dummy() {
    return [
      ConfigurationModel(
        iconContainerColor: StoreColors.darkGreen,
        icon: Icons.event_available_rounded,
        configurationName: 'Availablity',
        hint: 'On',
      ),
      ConfigurationModel(
        iconContainerColor: StoreColors.darkBrown,
        icon: cupertino.CupertinoIcons.profile_circled,
        configurationName: 'Username',
        hint: '@mrbeast',
      ),
      ConfigurationModel(
        iconContainerColor: StoreColors.ligthPink,
        icon: Icons.phone,
        configurationName: 'Phone',
        hint: '+1 234 567 890',
      ),
      ConfigurationModel(
        iconContainerColor: Colors.grey[300]!,
        icon: cupertino.CupertinoIcons.command,
        iconColor: StoreColors.darkGreen,
        configurationName: 'Your Social Networks',
      ),
    ];
  }

  static List<ConfigurationModel> dummy1() {
    return [
      ConfigurationModel(
        iconContainerColor: StoreColors.darkGreen,
        icon: Icons.notifications_active_rounded,
        configurationName: 'Notifications',
        hint: 'On',
      ),
      ConfigurationModel(
        iconContainerColor: StoreColors.darkBrown,
        icon: Icons.privacy_tip_rounded,
        configurationName: 'Privacy',
      ),
    ];
  }

  static List<ConfigurationModel> dummy2() {
    return [
      ConfigurationModel(
        iconContainerColor: StoreColors.darkGreen,
        icon: Icons.language_rounded,
        configurationName: 'Language',
        hint: 'English',
      ),
      ConfigurationModel(
        iconContainerColor: StoreColors.darkTeal,
        icon: Icons.dark_mode_rounded,
        configurationName: 'Dark Mode',
        hint: 'Off',
        trailingWidget: Switch(
          value: true,
          onChanged: (value) {},
          activeColor: StoreColors.darkBrown.withOpacity(.5),
          thumbColor: MaterialStateProperty.resolveWith<Color?>(
              (states) => Colors.white),
          activeTrackColor: StoreColors.darkBrown.withOpacity(.5),
          inactiveThumbColor: Colors.white,
          inactiveTrackColor: StoreColors.darkBrown.withOpacity(.5),
          trackOutlineWidth:
              MaterialStateProperty.resolveWith<double?>((_) => 0),
        ),
      ),
      ConfigurationModel(
        iconContainerColor: StoreColors.ligthPink,
        icon: Icons.help_center_rounded,
        configurationName: 'Help',
      ),
    ];
  }
}

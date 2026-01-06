import 'package:flutter/cupertino.dart';

class MenuItemModel {
  final String title;
  final IconData iconData;
  final int? messageCount;
  final bool? showArrowDownIcon;

  MenuItemModel({
    required this.title,
    required this.iconData,
    this.messageCount = 0,
    this.showArrowDownIcon = false,
  });

  static final dummyList = <MenuItemModel>[
    MenuItemModel(
      title: 'Overview',
      iconData: CupertinoIcons.square_grid_2x2_fill,
    ),
    MenuItemModel(
      title: 'Statistics',
      iconData: CupertinoIcons.chart_bar_square_fill,
    ),
    MenuItemModel(
      title: 'Customers',
      iconData: CupertinoIcons.person_2_square_stack_fill,
    ),
    MenuItemModel(
      title: 'Product',
      iconData: CupertinoIcons.cube_box_fill,
      showArrowDownIcon: true,
    ),
    MenuItemModel(
      title: 'Messages',
      iconData: CupertinoIcons.chat_bubble_2_fill,
      messageCount: 16,
    ),
    MenuItemModel(
      title: 'Transactions',
      iconData: CupertinoIcons.money_dollar_circle,
    ),
  ];
}

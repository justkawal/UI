import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sales_dashboard/models/menu_item_model.dart';
import 'package:sales_dashboard/utils/colors.dart';
import 'package:sales_dashboard/widgets/menu_item_widget.dart';

class LeftMenuComponent extends StatefulWidget {
  const LeftMenuComponent({Key? key}) : super(key: key);

  @override
  _LeftMenuComponentState createState() => _LeftMenuComponentState();
}

class _LeftMenuComponentState extends State<LeftMenuComponent> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: 210,
      color: SalesDashboardColors.darkGreen,
      child: Column(
        children: [
          Container(
            height: 80,
            width: double.infinity,
            padding: const EdgeInsets.only(left: 20, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '*',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 62,
                    fontWeight: FontWeight.w300,
                    color: SalesDashboardColors.lightAccentGreen,
                  ),
                ),
                const SizedBox(width: 5),
                Text(
                  'Siohioma',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                    letterSpacing: -.5,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 330,
            width: double.infinity,
            padding: const EdgeInsets.only(right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 30, top: 5),
                  child: Text(
                    'MENU',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                      letterSpacing: 1,
                      color: Colors.white.withOpacity(.9),
                    ),
                  ),
                ),
                const SizedBox(height: 6),
                for (int i = 0; i < MenuItemModel.dummyList.length; i++)
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectedIndex = i;
                      });
                    },
                    child: MenuItemWidget(
                      title: MenuItemModel.dummyList[i].title,
                      iconData: MenuItemModel.dummyList[i].iconData,
                      notificationCount:
                          MenuItemModel.dummyList[i].messageCount,
                      showArrowDownIcon:
                          MenuItemModel.dummyList[i].showArrowDownIcon,
                      isSelected: i == _selectedIndex,
                    ),
                  ),
              ],
            ),
          ),
          const SizedBox(height: 5),
          Container(
            height: 1,
            width: double.infinity,
            margin: const EdgeInsets.only(left: 30, right: 30, top: 22),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(.12),
              borderRadius: BorderRadius.circular(2),
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: 130,
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 30, top: 5),
                  child: Text(
                    'GENERAL',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                      letterSpacing: 1,
                      color: Colors.white.withOpacity(.9),
                    ),
                  ),
                ),
                const SizedBox(height: 6),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedIndex = 6;
                    });
                  },
                  child: MenuItemWidget(
                    title: 'Settings',
                    iconData: CupertinoIcons.gear_alt_fill,
                    isSelected: 6 == _selectedIndex,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedIndex = 7;
                    });
                  },
                  child: MenuItemWidget(
                    title: 'Security',
                    iconData: CupertinoIcons.lock_fill,
                    isSelected: 7 == _selectedIndex,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Container(
            height: 90,
            margin: const EdgeInsets.only(left: 30),
            child: Column(
              children: [
                Container(
                  height: 1.5,
                  width: double.infinity,
                  margin: const EdgeInsets.only(top: 22, right: 30),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(.32),
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
                const SizedBox(height: 15),
                Row(
                  children: [
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: SalesDashboardColors.lightAccentGreen,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          'assets/profile.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Siohioma',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w300,
                              letterSpacing: 1,
                              color: Colors.white.withOpacity(.9),
                            ),
                          ),
                          const SizedBox(height: 2),
                          Text(
                            'google@gmail.com',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w300,
                              color: Colors.white.withOpacity(.5),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

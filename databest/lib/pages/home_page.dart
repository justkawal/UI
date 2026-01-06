import 'package:databest/pages/tabs/home_tab.dart';
import 'package:databest/pages/tabs/analytics_tab.dart';
import 'package:databest/utilities/bottom_navigation_widget.dart';
import 'package:databest/utilities/colors.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedTabIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DatabestColors.homePageBackgroundColor,
      body: Stack(
        children: [
          Positioned.fill(
              child: IndexedStack(
            index: _selectedTabIndex,
            children: [
              HomeTab(),
              _selectedTabIndex != 0 ? AnalyticsTab() : Container(),
              SizedBox(
                child: Center(
                  child: Text(
                    'Stepping Stones...',
                    style: TextStyle(
                      color: DatabestColors.darkBlue,
                      fontSize: 24,
                      fontWeight: FontWeight.w300,
                      letterSpacing: -.1,
                    ),
                  ),
                ),
              ),
            ],
          )),
          BottomNavigationWidget(
            onTap: (int index) {
              setState(() {
                _selectedTabIndex = index;
              });
            },
          ),
        ],
      ),
    );
  }
}

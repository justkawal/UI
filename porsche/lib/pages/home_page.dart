import 'package:flutter/material.dart';
import 'package:porsche/pages/tabs/home_tab.dart';
import 'package:porsche/pages/tabs/listing_tab.dart';
import 'package:porsche/utilities/colors.dart';
import 'package:porsche/widgets/bottom_navigation_bar_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedTabIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PorscheColors.skinColor,
      body: Stack(
        children: [
          Positioned.fill(
              child: IndexedStack(
            index: selectedTabIndex,
            children: [
              HomeTab(),
              ListingTab(),
              Container(
                color: PorscheColors.skinColor,
                child: Center(
                  child: Text(
                    'Something Awesome under construction...',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Container(
                color: PorscheColors.skinColor,
                child: Center(
                  child: Text(
                    'Something Awesome under construction...',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              )
            ],
          )),
          BottomNavigationBarWidget(
            selectedTabIndex: selectedTabIndex,
            onTap: (index) {
              setState(() {
                selectedTabIndex = index;
              });
            },
          ),
        ],
      ),
    );
  }
}

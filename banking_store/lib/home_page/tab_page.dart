import 'package:banking_store/home_page/tabs/home/home_tab.dart';
import 'package:banking_store/home_page/tabs/insights/insights_tab.dart';
import 'package:banking_store/home_page/tabs/profile/profile_tab.dart';
import 'package:banking_store/home_page/tabs/wallet/wallet_tab.dart';
import 'package:banking_store/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart' as cupertino;

class TabPage extends StatefulWidget {
  const TabPage({Key? key}) : super(key: key);

  @override
  State<TabPage> createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> with TickerProviderStateMixin {
  late TabController tabController;
  int selectedTabIndex = 0;
  @override
  void initState() {
    super.initState();
    tabController = TabController(
      initialIndex: selectedTabIndex,
      length: 4,
      vsync: this,
    );

    tabController.addListener(() {
      setState(() {
        selectedTabIndex = tabController.index;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: selectedTabIndex,
      child: Scaffold(
        body: Stack(
          children: [
            Positioned.fill(
              child: TabBarView(
                controller: tabController,
                children: [
                  HomeTab(),
                  WalletTab(),
                  InsightsTab(controller: tabController),
                  ProfileTab(),
                ],
              ),
            ),
            AnimatedPositioned(
              duration: const Duration(milliseconds: 300),
              bottom: selectedTabIndex == 2 ? -100 : 0,
              left: 0,
              right: 0,
              height: 80,
              child: Container(
                height: 80,
                padding: const EdgeInsets.only(left: 40, right: 40, bottom: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () => _animateTab(0),
                      child: Icon(
                        cupertino.CupertinoIcons.home,
                        color: selectedTabIndex == 0
                            ? StoreColors.darkBrown
                            : Colors.grey.withOpacity(0.7),
                        size: 30,
                      ),
                    ),
                    GestureDetector(
                      onTap: () => _animateTab(1),
                      child: Icon(
                        Icons.wallet,
                        color: selectedTabIndex == 1
                            ? StoreColors.darkBrown
                            : Colors.grey.withOpacity(0.7),
                        size: 30,
                      ),
                    ),
                    GestureDetector(
                      onTap: () => _animateTab(2),
                      child: Icon(
                        Icons.calculate_rounded,
                        color: selectedTabIndex == 2
                            ? StoreColors.darkBrown
                            : Colors.grey.withOpacity(0.7),
                        size: 30,
                      ),
                    ),
                    GestureDetector(
                      onTap: () => _animateTab(3),
                      child: Icon(
                        Icons.person,
                        color: selectedTabIndex == 3
                            ? StoreColors.darkBrown
                            : Colors.grey.withOpacity(0.7),
                        size: 30,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _animateTab(int index) {
    tabController.animateTo(index);
  }
}

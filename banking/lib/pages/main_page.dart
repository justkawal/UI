import 'package:banking/pages/analysis_page.dart';
import 'package:banking/pages/cards_page.dart';
import 'package:banking/pages/home_page.dart';
import 'package:banking/widgets/navigation_bar_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int navigationSelectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Positioned.fill(
              child: IndexedStack(
                index: navigationSelectedIndex,
                children: [
                  HomePage(),
                  AnalysisPage(),
                  CardsPage(),
                  Container(color: Colors.white),
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                height: 100,
                color: Colors.white,
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.only(bottom: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    NavigationBarButton(
                      iconData: CupertinoIcons.home,
                      isSelected: navigationSelectedIndex == 0,
                      onTap: () {
                        setState(() {
                          navigationSelectedIndex = 0;
                        });
                      },
                    ),
                    NavigationBarButton(
                      iconData: CupertinoIcons.chart_bar,
                      isSelected: navigationSelectedIndex == 1,
                      onTap: () {
                        setState(() {
                          navigationSelectedIndex = 1;
                        });
                      },
                    ),
                    NavigationBarButton(
                      iconData: CupertinoIcons.creditcard,
                      isSelected: navigationSelectedIndex == 2,
                      onTap: () {
                        setState(() {
                          navigationSelectedIndex = 2;
                        });
                      },
                    ),
                    NavigationBarButton(
                      iconData: CupertinoIcons.person,
                      isSelected: navigationSelectedIndex == 3,
                      onTap: () {
                        setState(() {
                          navigationSelectedIndex = 3;
                        });
                      },
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
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:porsche/models/car_listing_model.dart';
import 'package:porsche/pages/car_detailed_page.dart';
import 'package:porsche/utilities/colors.dart';
import 'package:porsche/widgets/extended_border_widget.dart';

class ListingTab extends StatefulWidget {
  const ListingTab({Key? key}) : super(key: key);

  @override
  State<ListingTab> createState() => _ListingTabState();
}

class _ListingTabState extends State<ListingTab> {
  int selectedIndex = 0;
  int tabSelectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                backgroundColor: PorscheColors.verydarkGreen,
                expandedHeight: 100.0,
                title: Container(
                  color: PorscheColors.verydarkGreen,
                  child: Row(
                    children: [
                      Text(
                        'Porsche is Love',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                pinned: true,
                floating: true,
                bottom: TabBar(
                  isScrollable: true,
                  labelColor: PorscheColors.veryLightGreen,
                  dividerColor: PorscheColors.veryLightGreen,
                  indicatorColor: PorscheColors.veryLightGreen,
                  unselectedLabelColor: Colors.white.withOpacity(.6),
                  tabAlignment: TabAlignment.start,
                  tabs: [
                    Tab(child: Text('New')),
                    Tab(child: Text('Latest')),
                    Tab(child: Text('Popular')),
                    Tab(child: Text('Trending')),
                    Tab(child: Text('SUV')),
                    Tab(child: Text('Launches')),
                  ],
                ),
              ),
            ];
          },
          body: TabBarView(
            children: <Widget>[
              tab1(),
              tab1(),
              tab1(),
              tab1(),
              tab1(),
              tab1(),
            ],
          ),
        ),
      ),
    );
  }

  Widget tab1() {
    return Container(
      color: PorscheColors.skinColor,
      child: ListView(
        padding: EdgeInsets.only(bottom: 10),
        children: [
          Container(
            height: 90,
            color: PorscheColors.veryLightGreen,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Spring Sale',
                  style: TextStyle(
                      color: PorscheColors.verydarkGreen,
                      fontSize: 23,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 4),
                Text(
                  'Save up to \$5k on your dream car',
                  style: TextStyle(
                      color: PorscheColors.verydarkGreen,
                      fontSize: 15,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
          for (int i = 0; i < 20; i++)
            GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = i;
                });
              },
              child: Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                height: 210,
                width: 110,
                child: ExtendedBorderWidget(
                  padding: const EdgeInsets.all(0),
                  borderRadius: BorderRadius.circular(14),
                  offset: const Offset(4, 4),
                  isSelected: selectedIndex == i,
                  innerColor: Colors.white,
                  child: Stack(
                    children: [
                      Positioned(
                        bottom: 20,
                        right: -3,
                        child: SizedBox(
                          width: i % 2 != 0 ? 225 : 200,
                          child: Image.asset(
                            CarListingModel.list[i % 2].assetPath,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      Positioned.fill(
                        top: 20,
                        left: 20,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  CarListingModel.list[i % 2].name,
                                  style: TextStyle(
                                    color: PorscheColors.verydarkGreen
                                        .withOpacity(.9),
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'Free 7 day return',
                                  style: TextStyle(
                                    color: Colors.black.withOpacity(.6),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            GestureDetector(
                              onTap: () {
                                if (selectedIndex == i) {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => CarDetailedPage(),
                                    ),
                                  );
                                }
                              },
                              child: Container(
                                margin: const EdgeInsets.only(bottom: 25),
                                height: 40,
                                width: 100,
                                child: ExtendedBorderWidget(
                                  padding: const EdgeInsets.all(5),
                                  borderRadius: BorderRadius.circular(50),
                                  isSelected: true,
                                  offset: const Offset(2, 2),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        'Inside',
                                        style: TextStyle(
                                          color: PorscheColors.verydarkGreen,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      Icon(
                                        CupertinoIcons.arrow_right,
                                        color: PorscheColors.verydarkGreen,
                                        size: 16,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

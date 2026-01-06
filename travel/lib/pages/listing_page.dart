import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel/pages/travel_destination_details_page.dart';
import 'package:travel/utils/colors.dart';
import 'package:travel/widgets/activity_tile_list_view_widget.dart';
import 'package:travel/widgets/bottom_navigation_bar.dart';
import 'package:travel/widgets/frosted_widget.dart';
import 'package:travel/widgets/listing_header_widget.dart';
import 'package:travel/widgets/s_custom_painter.dart';

class ListingPage extends StatelessWidget {
  const ListingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TravelColors.offWhite,
      body: Stack(
        children: [
          Positioned.fill(
            child: ListView(
              padding: const EdgeInsets.only(top: 70, bottom: 110),
              children: [
                ListingHeaderWidget(),
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    'Hi, Ella 👋',
                    style: TextStyle(
                      fontSize: 38,
                      fontWeight: FontWeight.bold,
                      letterSpacing: -1.5,
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                ActivityTileListView(),
                const SizedBox(height: 25),
                for (int index = 0; index < 15; index++)
                  GestureDetector(
                    behavior: HitTestBehavior.translucent,
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => TravelDestinationDetailsPage(
                            destinationName: 'destination_$index.jpeg',
                          ),
                        ),
                      );
                    },
                    child: Container(
                      height: 380,
                      margin: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: Stack(
                        children: [
                          Positioned.fill(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(40),
                                child: Stack(
                                  children: [
                                    Positioned.fill(
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: .5),
                                        child: Hero(
                                          tag: 'destination_$index.jpeg',
                                          child: Image.asset(
                                            'assets/destination/destination_${(index % 11)}.jpeg',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      bottom: .5,
                                      left: 0,
                                      right: 0,
                                      child: Container(
                                        height: 200,
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                            begin: Alignment.topCenter,
                                            end: Alignment.bottomCenter,
                                            colors: [
                                              Colors.black.withOpacity(0),
                                              Colors.black.withOpacity(0.3),
                                              Colors.black.withOpacity(0.5),
                                              Colors.black.withOpacity(0.85),
                                              Colors.black,
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      top: 18,
                                      right: 18,
                                      child: Container(
                                        height: 35,
                                        width: 70,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.star,
                                              color: TravelColors.yellow,
                                              size: 20,
                                            ),
                                            const SizedBox(width: 4),
                                            Text(
                                              '4.${Random.secure().nextInt(8) + 1}',
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 30,
                                      bottom: 30,
                                      child: SizedBox(
                                        height: 210,
                                        width: 180,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Eira do Serrado',
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                fontSize: 40,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                                height: 1.1,
                                              ),
                                            ),
                                            const SizedBox(height: 9),
                                            dayAndPrice(),
                                            const SizedBox(height: 5),
                                            SizedBox(
                                              height: 40,
                                              width: 170,
                                              child: Stack(
                                                children: [
                                                  for (int index = 0;
                                                      index < 3;
                                                      index++)
                                                    Positioned(
                                                      left: index * 28,
                                                      child: Container(
                                                        height: 40,
                                                        width: 40,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Colors.black,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(20),
                                                        ),
                                                        padding:
                                                            const EdgeInsets
                                                                .all(2.5),
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(20),
                                                          child: Image.asset(
                                                            'assets/profile/profile_${(index % 6) + 1}.jpeg',
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  Positioned(
                                                    left: 3 * 28,
                                                    child: SizedBox(
                                                      width: 40,
                                                      height: 40,
                                                      child: FrostedWidget(
                                                        color: Colors.grey,
                                                        child: Text(
                                                          '+4',
                                                          style: TextStyle(
                                                            fontSize: 13,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color: Colors.white,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            right: 99.5,
                            child: CustomPaint(
                              size: Size(40, 40),
                              painter: SCustomPainter(),
                            ),
                          ),
                          Positioned(
                            bottom: 98,
                            right: 0,
                            child: CustomPaint(
                              size: Size(40, 40),
                              painter: SCustomPainter(),
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                color: TravelColors.offWhite,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(70)),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: Container(
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                color: TravelColors.orange,
                                borderRadius: BorderRadius.circular(40),
                              ),
                              child: Icon(
                                CupertinoIcons.arrow_up_right,
                                size: 30,
                                color: Colors.white,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          ),
          Positioned(
            bottom: 10,
            left: 30,
            right: 30,
            child: BottomNavigationBarWidget(),
          ),
        ],
      ),
    );
  }

  Widget dayAndPrice() {
    final days = Random.secure().nextInt(4) + 1;
    return Text(
      '$days Day • ${days * (Random.secure().nextInt(10) + 14)}\u20AC',
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    );
  }
}

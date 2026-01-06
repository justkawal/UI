import 'dart:async';

import 'package:flutter/material.dart';
import 'package:travel/pages/listing_page.dart';
import 'package:travel/utils/colors.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 3), (timer) {
      setState(() {
        _selectedIndex = (_selectedIndex + 1) % 3;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/destination/destination_1.jpeg',
              fit: BoxFit.cover,
            ),
          ),
          Positioned.fill(
            child: AnimatedOpacity(
              duration: Duration(milliseconds: 300),
              opacity: _selectedIndex == 1 ? 1 : 0,
              child: Image.asset(
                'assets/destination/destination_9.jpeg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned.fill(
            child: AnimatedOpacity(
              duration: Duration(milliseconds: 300),
              opacity: _selectedIndex == 2 ? 1 : 0,
              child: Image.asset(
                'assets/destination/destination_11.jpeg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 320,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.black,
                    Colors.black,
                    Colors.black.withOpacity(0.9),
                    Colors.black.withOpacity(0.55),
                    Colors.black.withOpacity(0.0),
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
            ),
          ),
          Positioned.fill(
            child: Padding(
              padding: const EdgeInsets.only(left: 20, bottom: 40, right: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 20),
                    child: Text(
                      'Discover Portugal: The Land of Sunny Shores and Rich History',
                      maxLines: 5,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          height: 1.4),
                    ),
                  ),
                  const SizedBox(height: 40),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 115,
                          height: 3,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AnimatedContainer(
                                duration: Duration(milliseconds: 100),
                                width: _selectedIndex == 0 ? 42 : 27,
                                decoration: BoxDecoration(
                                  color: _selectedIndex == 0
                                      ? Colors.white
                                      : Colors.grey,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                              const SizedBox(width: 6),
                              AnimatedContainer(
                                duration: Duration(milliseconds: 100),
                                width: _selectedIndex == 1 ? 42 : 27,
                                decoration: BoxDecoration(
                                  color: _selectedIndex == 1
                                      ? Colors.white
                                      : Colors.grey,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                              const SizedBox(width: 6),
                              AnimatedContainer(
                                duration: Duration(milliseconds: 100),
                                width: _selectedIndex == 3 ? 42 : 27,
                                decoration: BoxDecoration(
                                  color: _selectedIndex == 2
                                      ? Colors.white
                                      : Colors.grey,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                            ],
                          ),
                        ),
                        GestureDetector(
                          behavior: HitTestBehavior.translucent,
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => ListingPage(),
                              ),
                            );
                          },
                          child: SizedBox(
                            height: 90,
                            width: 155,
                            child: Stack(
                              children: [
                                Positioned(
                                  top: 6,
                                  left: 2,
                                  right: 2,
                                  child: Transform.rotate(
                                    angle: 0.17,
                                    child: Container(
                                      height: 78,
                                      decoration: BoxDecoration(
                                        color: TravelColors.orange
                                            .withOpacity(0.3),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 6,
                                  left: 0,
                                  right: 0,
                                  child: Container(
                                    height: 78,
                                    decoration: BoxDecoration(
                                      color: TravelColors.orange,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    alignment: Alignment.center,
                                    child: Text(
                                      'Let\'s try!',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: -.6,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
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
    );
  }
}

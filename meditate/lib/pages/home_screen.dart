import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meditate/pages/breath_in_screen.dart';
import 'package:meditate/utils/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          height: 900,
          child: Stack(
            children: [
              Positioned(
                top: -5,
                right: -5,
                child: Image.asset(
                  'assets/lines.png',
                  width: 170,
                ),
              ),
              Positioned(
                top: 80,
                left: 0,
                right: 0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.asset(
                              'assets/profile.jpeg',
                              width: 55,
                              height: 55,
                              fit: BoxFit.cover,
                            ),
                          ),
                          // Search Icon
                          Icon(
                            CupertinoIcons.search,
                            color: Colors.black,
                            size: 30,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        'Ready to start\nyour goals?',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    PictureCard(
                      sessionType: 'Breathing',
                      passed: 'Breath In',
                      color: MeditateColors.lightPurple,
                      assetPath: 'assets/woman.png',
                      sessionCount: 7,
                    ),
                    const SizedBox(height: 30),
                    PictureCard(
                      sessionType: 'Calm',
                      margin: 30.5,
                      passed: 'Calm Down',
                      color: MeditateColors.lightPink,
                      assetPath: 'assets/hand.png',
                      sessionCount: 7,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PictureCard extends StatelessWidget {
  final String assetPath;
  final int sessionCount;
  final String sessionType;
  final Color color;
  final double? margin;
  final String passed;
  const PictureCard(
      {required this.assetPath,
      this.margin,
      required this.sessionCount,
      required this.passed,
      required this.sessionType,
      required this.color,
      super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => BreathInScreen(
              title: passed,
            ),
          ),
        );
      },
      child: SizedBox(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                    margin: EdgeInsets.only(top: margin ?? 26.5),
                    width: MediaQuery.of(context).size.width + 100,
                    height: 170,
                    color: color),
                Image.asset(
                  assetPath,
                  width: 350,
                ),
              ],
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                sessionType,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(height: 7),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '$sessionCount sessions',
                    style: TextStyle(
                      color: Colors.grey[700]!,
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    '8-10 Minutes',
                    style: TextStyle(
                      color: Colors.grey[700]!,
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

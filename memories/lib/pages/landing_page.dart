import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:memories/pages/listing_page.dart';
import 'package:memories/utils/colors.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MemoriesColors.lightGreyColor,
      body: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: -40,
            child: Image.asset(
              'assets/landing_page_image.png',
              height: 550,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 130,
            left: 0,
            right: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Memories',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.dancingScript().copyWith(
                    fontSize: 90,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    height: 1.1,
                  ),
                ),
                Text(
                  'Makes bond stronger',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: MemoriesColors.darkBrownColor,
                  ),
                ),
                const SizedBox(height: 25),
                GestureDetector(
                  behavior: HitTestBehavior.translucent,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ListingPage(),
                      ),
                    );
                  },
                  child: Container(
                    height: 45,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 10),
                    decoration: BoxDecoration(
                      color: MemoriesColors.darkPinkColor,
                      borderRadius: BorderRadius.circular(13),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Make Memories',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

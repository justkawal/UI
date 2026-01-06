import 'package:flutter/material.dart';
import 'package:ford/pages/home_page.dart';
import 'package:ford/utilities/colors.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: FordColors.grey,
      body: Stack(
        children: [
          Positioned(
            bottom: -10,
            height: 460,
            left: -44,
            child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
              child: Image.asset(
                'assets/cars/home_page_1.png',
                filterQuality: FilterQuality.high,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 60,
            left: 20,
            right: 20,
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(
                            color: Colors.white.withOpacity(.6),
                            width: 1.4,
                          ),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              top: 0,
                              right: 0,
                              child: Container(
                                height: 12,
                                width: 12,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 1.4,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 20),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Image.asset(
                            'assets/profile.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                Text(
                  'ROCKET GARAGE',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2,
                    color: FordColors.blue,
                  ),
                ),
                Text(
                  'AC Cobra',
                  style: TextStyle(
                    fontSize: 49,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    letterSpacing: -.2,
                  ),
                ),
                Text(
                  'Ford Classic',
                  style: TextStyle(
                      fontSize: 49,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      letterSpacing: -.2,
                      height: 1),
                ),
                const SizedBox(height: 5),
                Text(
                  'The ac cobra is a hybrid sportscar\nconsisting of a british roadster',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey.shade600,
                    letterSpacing: -.3,
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for (int index = 0; index < 5; index++)
                      Container(
                        height: 18,
                        width: 18,
                        margin: const EdgeInsets.symmetric(horizontal: 3.4),
                        decoration: BoxDecoration(
                          color: index == 0
                              ? FordColors.blue
                              : Colors.white.withOpacity(.8),
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

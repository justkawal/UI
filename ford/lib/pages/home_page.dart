import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ford/pages/car_details_page.dart';
import 'package:ford/utilities/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          padding: const EdgeInsets.only(bottom: 50),
          children: [
            const SizedBox(height: 80),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 28,
                  width: 27,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 2,
                        width: 27,
                        margin: const EdgeInsets.symmetric(horizontal: 1),
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      Container(
                        height: 2,
                        width: 16,
                        margin: const EdgeInsets.symmetric(horizontal: 1),
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      Container(
                        height: 2,
                        width: 10,
                        margin: const EdgeInsets.symmetric(horizontal: 1),
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ],
                  ),
                ),
                Icon(CupertinoIcons.search),
              ],
            ),
            const SizedBox(height: 40),
            Text(
              'Engine, fuel and passion since 2007',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 35),
            Container(
              height: 1.7,
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 1),
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.6),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            const SizedBox(height: 35),
            Text(
              'OUR LATEST ARTICLES',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'SecondaSoft',
                  color: Colors.grey.shade500),
            ),
            const SizedBox(height: 11),
            Text(
              'Engines, petrol & passions.',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
                fontFamily: 'SecondaSoft',
                color: FordColors.blue,
              ),
            ),
            Text(
              'Here\'s what rocket garage magazine offers.',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
                fontFamily: 'SecondaSoft',
              ),
            ),
            const SizedBox(height: 15),
            SizedBox(
              height: 260,
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const CarDetailPage()));
                      },
                      child: SizedBox(
                        width: 200,
                        child: Column(
                          children: [
                            Expanded(
                                child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Stack(
                                children: [
                                  Positioned(
                                    height: 210,
                                    left: -14,
                                    child: Image.asset(
                                      'assets/cars/ford1/car1.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ],
                              ),
                            )),
                            const SizedBox(height: 10),
                            SizedBox(
                              height: 45,
                              child: Text(
                                'AC Cobra Ford Classic in white',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Roboto',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 15),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const CarDetailPage()));
                      },
                      child: SizedBox(
                        width: 200,
                        child: Column(
                          children: [
                            Expanded(
                                child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Stack(
                                children: [
                                  Positioned.fill(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: [
                                            FordColors.grey,
                                            FordColors.lightGrey
                                                .withOpacity(0.2),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    height: 260,
                                    left: 14,
                                    child: Image.asset(
                                      'assets/cars/ford2/car1.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ],
                              ),
                            )),
                            const SizedBox(height: 10),
                            SizedBox(
                              height: 45,
                              child: Text(
                                'AC Cobra Ford Classic in navi blue',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Roboto',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            Text(
              'OUR COLLECTIONS',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w300,
                fontFamily: 'SecondaSoft',
              ),
            ),
            const SizedBox(height: 15),
            CollectionsWidget(
              assetPath: 'assets/cars/ford2/car3.png',
            ),
            const SizedBox(height: 10),
            CollectionsWidget(
              assetPath: 'assets/cars/ford1/car4.png',
            ),
          ],
        ),
      ),
    );
  }
}

class CollectionsWidget extends StatelessWidget {
  final String assetPath;
  const CollectionsWidget({
    required this.assetPath,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 1),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const CarDetailPage()));
          },
          child: Image.asset(
            assetPath,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

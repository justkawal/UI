import 'package:flutter/material.dart';
import 'package:journeys/pages/destination_details_page.dart';

class DestinationListWidget extends StatelessWidget {
  final int shiftIndex;
  const DestinationListWidget({required this.shiftIndex, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 265,
      child: ListView.builder(
        itemCount: 16,
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.only(left: 20),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DestinationDetailsPage(
                    tag: 'scenary$index$shiftIndex',
                    imageName: 'scenary${(index + shiftIndex) % 16}',
                  ),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 15),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: AnimatedContainer(
                  width: 215,
                  duration: const Duration(milliseconds: 250),
                  child: Stack(
                    children: [
                      Positioned.fill(
                        child: Hero(
                          tag: 'scenary$index$shiftIndex',
                          child: AnimatedContainer(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                            ),
                            duration: const Duration(milliseconds: 200),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(40),
                              child: Image.asset(
                                'assets/scenary/scenary${(index + shiftIndex) % 16}.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned.fill(
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Colors.black.withOpacity(.75),
                                Colors.black.withOpacity(.25),
                                Colors.black.withOpacity(.01),
                              ],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 15,
                        left: 0,
                        right: 0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Tailwind Mountains',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

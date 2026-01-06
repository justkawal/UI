import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healthify/utils/healthify_colors.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            color: HealthifyColors.lightpink,
            height: 250,
            child: Stack(
              children: [
                Positioned(
                  width: 120,
                  height: 70,
                  top: 30,
                  right: -40,
                  child: Transform.rotate(
                    angle: 181.24,
                    child: DottedBorder(
                      color: Colors.white,
                      dashPattern: [6, 6],
                      strokeWidth: 2,
                      borderType: BorderType.Oval,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(150),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  width: 120,
                  height: 70,
                  top: 80,
                  left: -40,
                  child: Transform.rotate(
                    angle: 181.64,
                    child: DottedBorder(
                      color: Colors.white,
                      dashPattern: [6, 6],
                      strokeWidth: 2,
                      borderType: BorderType.Oval,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(150),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned.fill(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        const SizedBox(height: 70),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () => Navigator.pop(context),
                              child: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: Icon(
                                  Icons.arrow_back_rounded,
                                  size: 24,
                                ),
                              ),
                            ),
                            Text(
                              'BioSphere',
                              style: GoogleFonts.charmonman(
                                fontSize: 30,
                                color: Colors.black,
                              ),
                            ),
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Icon(
                                CupertinoIcons.person,
                                size: 24,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        SizedBox(
                          height: 110,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                height: 110,
                                width: 110,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(100),
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 15,
                                  ),
                                ),
                                child: Image.asset(
                                  'assets/profile.png',
                                  fit: BoxFit.contain,
                                ),
                              ),
                              Container(
                                height: 110,
                                width: 110,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(100),
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 15,
                                  ),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.add_rounded,
                                      size: 28,
                                    ),
                                    Text(
                                      'New',
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Stack(
              children: [
                Positioned(
                  width: 200,
                  right: -3,
                  bottom: -3,
                  child: Image.asset('assets/robot.png'),
                ),
                Positioned(
                  height: 230,
                  top: 15,
                  width: MediaQuery.of(context).size.width,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Trace',
                            style: TextStyle(
                              fontSize: 48,
                              height: 1.1,
                              color: Colors.black,
                              fontWeight: FontWeight.w200,
                              letterSpacing: -4.5,
                              wordSpacing: 5,
                            ),
                          ),
                        ),
                        Text(
                          'origins of your',
                          style: TextStyle(
                            fontSize: 48,
                            height: 1.1,
                            color: Colors.black,
                            fontWeight: FontWeight.w200,
                            letterSpacing: -4.5,
                            wordSpacing: 5,
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerRight,
                          padding: const EdgeInsets.only(right: 10),
                          child: Text(
                            'ancestors',
                            style: TextStyle(
                              fontSize: 48,
                              height: 1.1,
                              color: Colors.black,
                              fontWeight: FontWeight.w200,
                              letterSpacing: -4.5,
                              wordSpacing: 5,
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Explore and understand the\nunique characteristics\nencoded in your DNA.',
                            style: TextStyle(
                              fontSize: 17,
                              height: 1.1,
                              color: Colors.black,
                              fontWeight: FontWeight.w300,
                              letterSpacing: -0.5,
                              wordSpacing: 1,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 30,
                  left: 20,
                  height: 255,
                  width: 190,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Trace\nyour roots',
                        style: TextStyle(
                          fontSize: 45,
                          height: 1.1,
                          color: Colors.black,
                          fontWeight: FontWeight.w200,
                          letterSpacing: -4.5,
                          wordSpacing: 5,
                        ),
                      ),
                      Container(
                        height: 45,
                        width: 140,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          'LEARN MORE',
                          style: TextStyle(
                            fontSize: 16.5,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
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

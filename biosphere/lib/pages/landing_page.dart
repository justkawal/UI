import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healthify/pages/home_page.dart';
import 'package:healthify/utils/healthify_colors.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HealthifyColors.lightBlue,
      body: Stack(
        children: [
          Positioned(
            width: 120,
            height: 70,
            top: 60,
            right: -60,
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
          Positioned(
            width: 700,
            height: 400,
            bottom: 140,
            right: -480,
            child: DottedBorder(
              color: Colors.white,
              dashPattern: [6, 3],
              strokeWidth: 2,
              borderType: BorderType.Oval,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(150),
                ),
              ),
            ),
          ),
          Positioned(
            width: 300,
            height: 300,
            bottom: 190,
            left: (MediaQuery.of(context).size.width / 2) - 150,
            child: Image(
              image: AssetImage('assets/cube.png'),
            ),
          ),
          Positioned.fill(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  const SizedBox(height: 70),
                  // Header
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
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
                          Icons.info_outline_rounded,
                          size: 24,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 20),
                  // Subheader
                  Text(
                    'REVOLUTIONARY JOURNEY',
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.w300),
                  ),
                  const SizedBox(height: 5),
                  // Rich Text
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text: 'Unreveling',
                      style: TextStyle(
                        fontSize: 53,
                        color: Colors.white,
                        fontWeight: FontWeight.w200,
                        letterSpacing: -4.5,
                        wordSpacing: 5,
                      ),
                      children: [
                        TextSpan(
                          text: '\nthe code',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        TextSpan(
                          text: '\nof life today',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            width: MediaQuery.of(context).size.width,
            bottom: 50,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    textAlign: TextAlign.left,
                    text: TextSpan(
                      text: 'Dance of',
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.black.withOpacity(0.9),
                        fontWeight: FontWeight.w300,
                        letterSpacing: -0.5,
                        wordSpacing: 2,
                      ),
                      children: [
                        TextSpan(
                          text: ' genes',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        TextSpan(
                          text: '\nand',
                        ),
                        TextSpan(
                          text: ' technology',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 25),
                  GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => HomePage()),
                    ),
                    child: SizedBox(
                      height: 55,
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Center(
                                child: Text(
                                  'START',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    letterSpacing: -0.8,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 20),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                  color: Colors.white,
                                  width: 2,
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  'SIGN UP',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    letterSpacing: -0.8,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

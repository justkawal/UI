import 'dart:math';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healthify/pages/details_page.dart';
import 'package:healthify/utils/healthify_colors.dart';
import 'package:video_player/video_player.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final VideoPlayerController _controller =
      VideoPlayerController.asset('assets/dna.mp4');

  @override
  void initState() {
    super.initState();
    _controller.initialize().then((_) {
      setState(() {
        _controller.setLooping(true);
        _controller.play();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HealthifyColors.lightGreen,
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
            width: 120,
            height: 70,
            top: 90,
            left: -40,
            child: Transform.rotate(
              angle: (5 * pi) / 7,
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
            width: MediaQuery.of(context).size.width,
            height: 700,
            bottom: -40,
            child: VideoPlayer(_controller),
          ),
          Positioned.fill(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 70),
                  // Header
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
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
                      )
                    ],
                  ),
                  const SizedBox(height: 25),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Advanced',
                        style: TextStyle(
                          fontSize: 44.5,
                          height: 1.1,
                          color: Colors.black,
                          fontWeight: FontWeight.w200,
                          letterSpacing: -4.5,
                          wordSpacing: 5,
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerRight,
                        child: Text(
                          'genetic mapping,',
                          style: TextStyle(
                            fontSize: 44.5,
                            height: 1.1,
                            color: Colors.white,
                            fontWeight: FontWeight.w200,
                            letterSpacing: -4.5,
                            wordSpacing: 5,
                          ),
                        ),
                      ),
                      Text(
                        'up-to-date',
                        style: TextStyle(
                          fontSize: 44.5,
                          height: 1.1,
                          color: Colors.black,
                          fontWeight: FontWeight.w200,
                          letterSpacing: -4.5,
                          wordSpacing: 5,
                        ),
                      ),
                      Text(
                        'tools',
                        style: TextStyle(
                          fontSize: 44.5,
                          height: 1.1,
                          color: Colors.white,
                          fontWeight: FontWeight.w200,
                          letterSpacing: -4.5,
                          wordSpacing: 5,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                'Only legal, ethical\npractises',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 16,
                  color: Color.fromARGB(255, 11, 47, 14),
                  fontWeight: FontWeight.w300,
                  letterSpacing: -0.7,
                  wordSpacing: 2,
                ),
              ),
            ),
          ),
          Positioned(
            width: MediaQuery.of(context).size.width,
            bottom: 35,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'GENETIC RESEARCH',
                    textAlign: TextAlign.end,
                    style: TextStyle(
                      fontSize: 14,
                      color: Color.fromARGB(255, 11, 47, 14),
                      fontWeight: FontWeight.w300,
                      letterSpacing: -0.7,
                      wordSpacing: 2,
                    ),
                  ),
                  const SizedBox(height: 55),
                  GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => DetailsPage()),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'find out',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Center(
                            child: Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: Colors.white,
                              size: 18,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

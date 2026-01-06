import 'package:flutter/cupertino.dart';
import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:wellbeing/pages/home_page.dart';
import 'package:wellbeing/utils/colors.dart';

class LaunchPage extends StatelessWidget {
  const LaunchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF536593),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 100,
              height: MediaQuery.of(context).size.height - 100,
              left: 0,
              right: 0,
              child: SizedBox(
                width: double.infinity,
                child: Image.asset(
                  'assets/meditation.jpeg',
                  fit: BoxFit.fitHeight,
                  filterQuality: FilterQuality.high,
                ),
              ),
            ),
            Positioned(
              top: 65,
              left: 35,
              right: 35,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'CALM YOUR',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    'MIND',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 100,
                        fontWeight: FontWeight.bold,
                        height: 1.1),
                  ),
                  Text(
                    'YOUR DAILY DOSE OF ZEN',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.w300,
                        letterSpacing: -1),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomePage(),
                        ),
                      );
                    },
                    child: Container(
                      height: 150,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: WellBeingColors.darkMaroon,
                      ),
                      padding: const EdgeInsets.all(20),
                      child: Transform.rotate(
                        angle: math.pi * 1.75,
                        child: Icon(
                          CupertinoIcons.arrow_right,
                          color: Colors.white,
                          size: 35,
                        ),
                      ),
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

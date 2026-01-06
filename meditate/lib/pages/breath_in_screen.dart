import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meditate/utils/colors.dart';

class BreathInScreen extends StatelessWidget {
  final String title;
  const BreathInScreen({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 248, 236, 225),
      body: SingleChildScrollView(
        child: SizedBox(
          child: Column(
            children: [
              const SizedBox(height: 70),
              GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Icon(
                      CupertinoIcons.clear,
                      color: Colors.black,
                      size: 25,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  'Daily Goals',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 35,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  '1/5 selected',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey[700]!,
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Image.asset('assets/woman_yoga.png'),
              const SizedBox(height: 4),
              Divider(
                color: Colors.grey[700]!,
                thickness: .5,
                indent: 48,
                endIndent: 48,
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 32,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 33),
                child: Text(
                  'A 5-minute intro to breathing energy\nto heal and bring positivity',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey[700]!,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(height: 35),
              Container(
                width: 300,
                height: 75,
                decoration: BoxDecoration(
                  color: MeditateColors.brown,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text(
                    'Start',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 13),
              Divider(
                color: Colors.grey[700]!,
                thickness: .5,
                indent: 55,
                endIndent: 55,
              ),
              const SizedBox(height: 18),
              Center(
                child: Text(
                  'Skip',
                  style: TextStyle(
                    color: Colors.grey[700]!,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

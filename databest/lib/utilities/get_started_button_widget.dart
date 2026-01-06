import 'package:databest/pages/home_page.dart';
import 'package:databest/utilities/colors.dart';
import 'package:flutter/material.dart';

class GetStartedButtonWidget extends StatelessWidget {
  const GetStartedButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const HomePage(),
          ),
        );
      },
      child: Center(
        child: SizedBox(
          height: 65,
          width: 250,
          child: Stack(
            children: [
              Positioned(
                top: 32.5,
                left: 0,
                right: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    for (int i = 0; i < 36; i++)
                      Container(
                        height: 1.1,
                        width: 4,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                  ],
                ),
              ),
              Positioned(
                top: 10,
                left: 55,
                right: 55,
                child: Container(
                  height: 45,
                  width: 100,
                  decoration: BoxDecoration(
                    color: DatabestColors.darkBlue,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'GET STARTED',
                        style: TextStyle(
                          color: Colors.white.withOpacity(.8),
                          fontSize: 13,
                          fontWeight: FontWeight.w800,
                          letterSpacing: -.6,
                        ),
                      ),
                      const SizedBox(width: 5),
                      Icon(
                        Icons.arrow_upward_rounded,
                        size: 16,
                        color: Colors.white,
                      ),
                    ],
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

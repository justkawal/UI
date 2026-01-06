import 'package:flutter/material.dart';
import 'package:journeys/pages/home_page.dart';
import 'package:journeys/utilities/colors.dart';
import 'package:journeys/widgets/confirm_button_widget.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: JourneyColors.white,
      body: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Column(
          children: [
            Expanded(
              flex: 62,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(45),
                  bottomRight: Radius.circular(45),
                ),
                child: SizedBox(
                  width: double.infinity,
                  child: Image.asset(
                    'assets/scenary/scenary1.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 38,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text(
                      'Your Path to Peaceful Journeys',
                      style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const Text(
                      'Find your peace amidst nature\'s embrace with Your Path to Peaceful Journeys.',
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                    GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HomePage(),
                            ),
                          );
                        },
                        child:
                            ConfirmButton(actionName: 'Let\'s Start Journey')),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

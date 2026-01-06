import 'package:databest/utilities/best_new_solutions_widget.dart';
import 'package:databest/utilities/business_joined_count_widget.dart';
import 'package:databest/utilities/colors.dart';
import 'package:databest/utilities/get_started_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DatabestColors.backgroundColor,
      body: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 30,
            right: 30,
            child: Image.asset(
              'assets/abstract_shape.png',
            ),
          ),
          Positioned.fill(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 70),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 35),
                  child: Row(
                    children: [
                      Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.white,
                          ),
                          child: Center(
                            child: SvgPicture.asset(
                              'assets/logo.svg',
                              height: 20,
                              color: DatabestColors.darkBlue,
                            ),
                          )),
                      const SizedBox(width: 20),
                      Text(
                        'DATABEST',
                        style: TextStyle(
                          color: DatabestColors.darkBlue,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          letterSpacing: -.6,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.only(left: 35),
                  child: Text(
                    'YOUR  BEST MARKETTING  & DATA  ANALYSER',
                    style: TextStyle(
                      color: DatabestColors.darkBlue,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      letterSpacing: -2.9,
                      height: 1.3,
                    ),
                  ),
                ),
                const SizedBox(height: 25),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 35),
                  child: RichText(
                    text: TextSpan(
                      text: 'Get a  ',
                      style: TextStyle(
                        color: DatabestColors.darkBlue,
                        fontSize: 17,
                        letterSpacing: -1.2,
                        height: 1.2,
                      ),
                      children: [
                        TextSpan(
                          text: 'clear vision',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        TextSpan(text: '  of business.'),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 25),
                SizedBox(
                  height: 280,
                  width: double.infinity,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    padding:
                        const EdgeInsets.only(left: 35, top: 25, bottom: 30),
                    children: [
                      BestNewSolutionsWidget(),
                      BusinessJoinedCountWidget(),
                    ],
                  ),
                ),
                const SizedBox(height: 50),
                GetStartedButtonWidget(),
              ],
            ),
          )
        ],
      ),
    );
  }
}

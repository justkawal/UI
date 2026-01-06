import 'package:flutter/material.dart';
import 'package:journeys/utilities/colors.dart';
import 'package:journeys/widgets/destination_list_widget.dart';
import 'package:journeys/widgets/header_widget.dart';
import 'package:journeys/widgets/navigation_bar_widget.dart';
import 'package:journeys/widgets/scrolling_tool_tips_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: JourneyColors.white,
      body: Stack(
        children: [
          Positioned.fill(
            child: ListView(
              padding: const EdgeInsets.only(bottom: 100),
              children: [
                const SizedBox(height: 70),
                HeaderWidget(),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: RichText(
                    text: TextSpan(
                      text: 'Welcome back, ',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(
                          text: 'Ella',
                          style: TextStyle(
                            fontSize: 27,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: const Text(
                    'Where Does Your Mind Wander',
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                ScrollingToolTipsWidget(),
                const SizedBox(height: 20),
                DestinationListWidget(shiftIndex: 0),
                const SizedBox(height: 15),
                DestinationListWidget(shiftIndex: 5),
                const SizedBox(height: 15),
                DestinationListWidget(shiftIndex: 9),
              ],
            ),
          ),
          NavigationBarWidget(),
        ],
      ),
    );
  }
}

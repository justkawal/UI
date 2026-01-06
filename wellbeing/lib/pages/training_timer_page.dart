import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wellbeing/utils/colors.dart';
import 'package:wellbeing/widgets/stats_counter_widget.dart';

class TrainingTimerPage extends StatelessWidget {
  const TrainingTimerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const SizedBox(height: 70),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    CupertinoIcons.arrow_left,
                    color: WellBeingColors.darkBlueGrey,
                    size: 30,
                  ),
                ),
                Text(
                  'Meditation',
                  style: TextStyle(
                    color: WellBeingColors.darkBlueGrey,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(
                  Icons.more_horiz_rounded,
                  color: WellBeingColors.darkBlueGrey,
                  size: 30,
                ),
              ],
            ),
            const SizedBox(height: 35),
            Text(
              'Spiritual Growth',
              style: TextStyle(
                color: WellBeingColors.darkBlueGrey,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              'Start meditation of mind',
              style: TextStyle(
                color: WellBeingColors.darkBlueGrey,
                fontSize: 17,
                fontWeight: FontWeight.w300,
              ),
            ),
            const Spacer(),
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 249, 244, 247),
                borderRadius: BorderRadius.circular(120),
              ),
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Color(0xFFe5dae1),
                  borderRadius: BorderRadius.circular(80),
                ),
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Color(0xFFbb9fb0),
                    borderRadius: BorderRadius.circular(80),
                  ),
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Color(0xFF7d4666),
                      borderRadius: BorderRadius.circular(80),
                    ),
                    child: Icon(
                      CupertinoIcons.play_fill,
                      size: 50,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Time: 06: 13',
              style: TextStyle(
                color: WellBeingColors.darkBlueGrey,
                fontSize: 17,
                fontWeight: FontWeight.w400,
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Stats',
                  style: TextStyle(
                    color: WellBeingColors.darkBlueGrey,
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Icon(
                  CupertinoIcons.forward,
                  color: WellBeingColors.darkBlueGrey,
                  size: 17,
                ),
              ],
            ),
            const SizedBox(height: 15),
            Wrap(
              spacing: 20,
              runSpacing: 15,
              children: [
                StatsCountersWidget(
                  title: 'Count of this Set',
                  count: '10',
                ),
                StatsCountersWidget(
                  title: 'Set Number',
                  count: '02',
                ),
                StatsCountersWidget(
                  title: 'Total No. of Set',
                  count: '03',
                ),
                StatsCountersWidget(
                  title: 'Average Points',
                  count: '78',
                ),
              ],
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

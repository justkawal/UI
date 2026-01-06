import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wellbeing/pages/training_timer_page.dart';
import 'package:wellbeing/utils/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            Positioned.fill(
              child: SingleChildScrollView(
                child: SizedBox(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height + 290,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 70),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // profile photo
                            Container(
                              width: 46,
                              height: 46,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: const DecorationImage(
                                  image: AssetImage('assets/profile.jpeg'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),

                            Row(
                              children: [
                                Icon(
                                  Icons.search_rounded,
                                  size: 28,
                                  color: WellBeingColors.darkBlueGrey,
                                ),
                                const SizedBox(width: 15),
                                Icon(
                                  CupertinoIcons.bell_fill,
                                  size: 26,
                                  color: WellBeingColors.darkBlueGrey,
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 15),
                        Text(
                          'How are you feeling today?',
                          style: TextStyle(
                            color: WellBeingColors.darkBlueGrey,
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 15),
                        Container(
                          height: 105,
                          width: double.infinity,
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey[400]!,
                              width: .4,
                            ),
                            borderRadius: BorderRadius.circular(18),
                          ),
                          child: Column(
                            children: [
                              const SizedBox(height: 13),
                              Row(
                                children: [
                                  Text(
                                    'Your Report',
                                    style: TextStyle(
                                      color: WellBeingColors.mediumGrey,
                                      fontSize: 14,
                                    ),
                                  ),
                                  const Spacer(),
                                  Icon(
                                    CupertinoIcons.chevron_right,
                                    size: 18,
                                    color: WellBeingColors.mediumGrey,
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    reportStats('32 Mins', 'Today'),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: WellBeingColors.mediumGrey
                                            .withOpacity(0.3),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      height: 40,
                                      width: 1.2,
                                    ),
                                    reportStats('5 Hours', 'This Week'),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: WellBeingColors.mediumGrey
                                            .withOpacity(0.3),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      height: 40,
                                      width: 1.2,
                                    ),
                                    reportStats('20 Hours', 'This Month'),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 18),
                        Row(
                          children: [
                            Text(
                              'Todays Sessions',
                              style: TextStyle(
                                color: WellBeingColors.mediumGrey,
                                fontSize: 18,
                              ),
                            ),
                            const Spacer(),
                            Icon(
                              CupertinoIcons.chevron_right,
                              size: 18,
                              color:
                                  WellBeingColors.mediumGrey.withOpacity(0.7),
                            ),
                          ],
                        ),
                        const SizedBox(height: 5),
                        // Progress bar
                        Container(
                          height: 16,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: WellBeingColors.lightGrey,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Stack(
                            children: [
                              Container(
                                height: 16,
                                width:
                                    (MediaQuery.of(context).size.width / 100) *
                                        49,
                                decoration: BoxDecoration(
                                  color: WellBeingColors.veryDarkMaroon,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),

                        Wrap(
                          spacing: 12,
                          runSpacing: 12,
                          children: [
                            trainingCard(
                              context: context,
                              progress: 45,
                              trainingName: 'Spiritual Growth',
                              setCount: 2,
                              totalSets: 5,
                              setType: 'set',
                            ),
                            trainingCard(
                              context: context,
                              progress: 100,
                              trainingName: 'Mind Training',
                              setCount: 5,
                              totalSets: 5,
                              setType: 'set',
                            ),
                            trainingCard(
                              context: context,
                              progress: 100,
                              trainingName: 'Me. Wellbeing',
                              setCount: 3,
                              totalSets: 3,
                              setType: 'set',
                            ),
                            trainingCard(
                              context: context,
                              progress: 100,
                              trainingName: 'Intro',
                              setCount: 5,
                              totalSets: 5,
                              setType: 'minute',
                            ),
                            trainingCard(
                              context: context,
                              progress: 100,
                              trainingName: 'Me. Wellbeing',
                              setCount: 3,
                              totalSets: 3,
                              setType: 'set',
                            ),
                            trainingCard(
                              context: context,
                              progress: 100,
                              trainingName: 'Intro',
                              setCount: 5,
                              totalSets: 5,
                              setType: 'minute',
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              height: 120,
              left: 0,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 19, vertical: 23),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey[300]!,
                        blurRadius: 15,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      getNavigationBottomButton(
                        title: 'Home',
                        index: 0,
                        icon: CupertinoIcons.home,
                      ),
                      getNavigationBottomButton(
                        title: 'Stats',
                        index: 1,
                        icon: CupertinoIcons.chart_pie,
                      ),
                      getNavigationBottomButton(
                        title: 'Timers',
                        index: 2,
                        icon: CupertinoIcons.clock,
                      ),
                      getNavigationBottomButton(
                        title: 'Profile',
                        index: 3,
                        icon: CupertinoIcons.person_fill,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget trainingCard({
    required double progress,
    required String trainingName,
    required String setType,
    required int setCount,
    required int totalSets,
    required BuildContext context,
  }) {
    final isDone = progress == 100;
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => TrainingTimerPage(),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        height: MediaQuery.of(context).size.width / 2,
        width: ((MediaQuery.of(context).size.width - 40) / 2) - 9,
        decoration: BoxDecoration(
          color: progress < 100 ? WellBeingColors.veryDarkMaroon : Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 15,
              offset: const Offset(0, 3),
            ),
          ],
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 23),
            if (isDone)
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: WellBeingColors.yellowColor,
                  shape: BoxShape.circle,
                ),
                padding: const EdgeInsets.all(8),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.check_rounded,
                    color: WellBeingColors.yellowColor,
                    size: 25,
                  ),
                ),
              ),
            if (!isDone)
              Stack(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      shape: BoxShape.circle,
                    ),
                  ),
                  Positioned(
                    top: 0,
                    left: 0,
                    child: SizedBox(
                      height: 50,
                      width: 50,
                      child: CircularProgressIndicator(
                        value: progress / 100,
                        strokeWidth: 8,
                        backgroundColor: Colors.white,
                        strokeCap: StrokeCap.round,
                        valueColor: AlwaysStoppedAnimation<Color>(
                          WellBeingColors.lightMaroon,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    left: 0,
                    child: Container(
                      height: 50,
                      width: 50,
                      alignment: Alignment.center,
                      child: Text(
                        '${progress.round()}%',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.7),
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            const SizedBox(height: 34),
            Text(
              trainingName,
              style: TextStyle(
                color: isDone ? Colors.black : Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 3),
            Text(
              isDone
                  ? '$totalSets ${setType}s - Done'
                  : 'Ongoing - $setCount $setType',
              style: TextStyle(
                color: isDone ? Colors.grey[800]! : Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w200,
              ),
            ),
            const SizedBox(height: 3),
            Text(
              isDone
                  ? 'Completed 100%'
                  : '${(100 - progress).round()}% remaining',
              style: TextStyle(
                color: isDone ? Colors.grey[800]! : Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w200,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget reportStats(String title, String value) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyle(
            color: WellBeingColors.darkBlueGrey,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          value,
          style: TextStyle(
            color: WellBeingColors.mediumGrey,
            fontSize: 13,
          ),
        ),
      ],
    );
  }

  Widget getNavigationBottomButton({
    required int index,
    required IconData icon,
    required String title,
  }) {
    final isSelected = selectedIndex == index;
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Container(
        key: ValueKey(index),
        height: 60,
        width: isSelected ? 110 : 60,
        decoration: BoxDecoration(
          color: isSelected ? WellBeingColors.veryLightMaroon : null,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: isSelected ? WellBeingColors.darkMaroon : null,
              size: 24,
            ),
            if (isSelected) ...[
              Container(width: 8),
              Text(
                title,
                style: TextStyle(
                  color: WellBeingColors.darkMaroon,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ]
          ],
        ),
      ),
    );
  }
}

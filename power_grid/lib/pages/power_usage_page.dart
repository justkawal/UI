import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:power_grid/utils/colors.dart';
import 'package:power_grid/widgets/bottom_navigation_widget.dart';
import 'package:power_grid/widgets/dotted_border.dart';
import 'package:power_grid/widgets/frosted_widget.dart';
import 'package:power_grid/widgets/power_produced_widget.dart';

class PowerUsagePage extends StatelessWidget {
  const PowerUsagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PowerGridColors.veryDarkBlack,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Stack(
            children: [
              Positioned.fill(
                child: Column(
                  children: [
                    Expanded(
                      child: ListView(
                        padding: const EdgeInsets.only(bottom: 120),
                        children: [
                          const SizedBox(height: 70),
                          titleMethod(),
                          const SizedBox(height: 15),
                          dottedProgressDial(),
                          powerProducedExportedMethod(),
                          const SizedBox(height: 4),
                          powerUsageBattery(context),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              BottomNavigationButtons(selectedIndex: 0),
            ],
          ),
        ),
      ),
    );
  }

  Widget powerUsageBattery(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 200,
      child: FrostedWidget(
        padding: EdgeInsets.only(left: 18, right: 5, top: 5, bottom: 20),
        borderRadius: BorderRadius.circular(40),
        color: Color(0xFF232527),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 12),
                      child: RichText(
                        text: TextSpan(
                          text: '28',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 38,
                            fontWeight: FontWeight.w400,
                          ),
                          children: [
                            TextSpan(
                              text: ' DAYS',
                              style: TextStyle(
                                color: Colors.white.withOpacity(.8),
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      'Energy Independence',
                      style: TextStyle(
                        color: Colors.white.withOpacity(.5),
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 5),
                SizedBox(
                  width: 140,
                  height: 80,
                  child: FrostedWidget(
                    padding: const EdgeInsets.all(0),
                    borderRadius: BorderRadius.circular(45),
                    color: Colors.black.withOpacity(.4),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 80,
                          height: 80,
                          child: FrostedWidget(
                            padding: const EdgeInsets.all(10),
                            borderRadius: BorderRadius.circular(40),
                            color: PowerGridColors.lightGreen,
                            child: Icon(CupertinoIcons.check_mark),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            'On',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white.withOpacity(.7),
                              fontSize: 17,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        const SizedBox(width: 7),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Text(
              'Used 567 Wh of 1000 Wh',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white.withOpacity(0.5),
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget powerProducedExportedMethod() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        PowerProducedCard(
          value: 100,
          type: 'Produced',
          iconData: CupertinoIcons.sun_max,
        ),
        PowerProducedCard(
          value: 80,
          type: 'Exported',
          iconData: CupertinoIcons.bolt,
        ),
      ],
    );
  }

  Container dottedProgressDial() {
    return Container(
      height: 300,
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 25),
      child: Stack(
        alignment: Alignment.center,
        children: [
          SizedBox(
            width: 300,
            height: 300,
            child: CustomPaint(
              painter: DottedBorder(numberOfStories: 22, spaceLength: 8.6),
            ),
          ),
          SizedBox(
            width: 245,
            height: 245,
            child: FrostedWidget(
              padding: EdgeInsets.all(2),
              borderRadius: BorderRadius.circular(200),
              showBorder: true,
              color: Color(0xFF232527),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Stack(
                  children: [
                    Center(
                      child: SizedBox(
                        width: 222,
                        height: 222,
                        child: CircularProgressIndicator(
                          value: 0.687,
                          strokeWidth: 2,
                          strokeCap: StrokeCap.round,
                          valueColor:
                              AlwaysStoppedAnimation<Color>(Colors.white),
                          backgroundColor: PowerGridColors.glassBlack,
                        ),
                      ),
                    ),
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '567',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 36,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            'Wh',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            left: 10,
            bottom: 107,
            child: Text(
              '0',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white.withOpacity(.4),
                fontSize: 23,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Positioned(
            right: 0,
            bottom: 107,
            child: Text(
              '100',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white.withOpacity(.4),
                fontSize: 23,
                fontWeight: FontWeight.w400,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget titleMethod() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 72,
            height: 72,
            child: Stack(
              children: [
                SizedBox(
                  width: 72,
                  height: 72,
                  child: FrostedWidget(
                    padding: EdgeInsets.all(10),
                    borderRadius: BorderRadius.circular(40),
                    showBorder: true,
                    child: Icon(
                      CupertinoIcons.bell,
                      color: Colors.white.withOpacity(0.8),
                      size: 18,
                    ),
                  ),
                ),
                Positioned(
                  right: 10,
                  top: 3.5,
                  child: Container(
                    width: 8,
                    height: 8,
                    decoration: BoxDecoration(
                      color: PowerGridColors.lightGreen,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 72,
            height: 72,
            child: FrostedWidget(
              padding: EdgeInsets.all(0),
              borderRadius: BorderRadius.circular(40),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Image.asset(
                  'assets/profile.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

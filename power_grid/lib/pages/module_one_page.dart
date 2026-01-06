import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:power_grid/models/power_chart_model.dart';
import 'package:power_grid/utils/colors.dart';
import 'package:power_grid/widgets/bottom_navigation_widget.dart';
import 'package:power_grid/widgets/frosted_widget.dart';
import 'package:power_grid/widgets/power_produced_widget.dart';

class ModuleOnePage extends StatefulWidget {
  const ModuleOnePage({Key? key}) : super(key: key);

  @override
  State<ModuleOnePage> createState() => _ModuleOnePageState();
}

class _ModuleOnePageState extends State<ModuleOnePage> {
  int selectedIndex = 0;
  static const types = ['Produced', 'Exported', 'Used', 'Battery', 'Grid'];
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
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'ModuleOne',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 38,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        const SizedBox(height: 5),
                                        Text(
                                          'TM',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 19,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Text(
                                  'Energy insights',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 20),
                          SizedBox(
                            height: 80,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              padding: const EdgeInsets.all(0),
                              itemCount: types.length,
                              itemBuilder: (context, index) {
                                final isSelected = selectedIndex == index;
                                return GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      selectedIndex = index;
                                    });
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 4),
                                    child: SizedBox(
                                      width: 180,
                                      height: 80,
                                      child: FrostedWidget(
                                        padding: EdgeInsets.all(4),
                                        borderRadius: BorderRadius.circular(40),
                                        showBorder: true,
                                        color: isSelected ? Colors.white : null,
                                        child: Align(
                                          alignment: Alignment.center,
                                          child: Text(
                                            types[index],
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: isSelected
                                                  ? PowerGridColors
                                                      .veryDarkBlack
                                                  : Colors.white,
                                              fontSize: 18,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                          const SizedBox(height: 5),
                          SizedBox(
                            width: 180,
                            height: 330,
                            child: FrostedWidget(
                              padding: EdgeInsets.all(4),
                              borderRadius: BorderRadius.circular(40),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 25),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'For 2023 year',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.white.withOpacity(.7),
                                            fontSize: 17,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            SizedBox(
                                              width: 72,
                                              height: 72,
                                              child: FrostedWidget(
                                                padding: EdgeInsets.all(10),
                                                borderRadius:
                                                    BorderRadius.circular(40),
                                                color: Colors.transparent,
                                                showBorder: true,
                                                child: Icon(
                                                  CupertinoIcons.calendar,
                                                  color: Colors.white
                                                      .withOpacity(0.8),
                                                  size: 22,
                                                ),
                                              ),
                                            ),
                                            const SizedBox(width: 5),
                                            SizedBox(
                                              width: 72,
                                              height: 72,
                                              child: FrostedWidget(
                                                padding: EdgeInsets.all(10),
                                                borderRadius:
                                                    BorderRadius.circular(40),
                                                showBorder: true,
                                                child: Icon(
                                                  CupertinoIcons.ellipsis,
                                                  color: Colors.white
                                                      .withOpacity(0.8),
                                                  size: 22,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: 120,
                                    width: double.infinity,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        for (int i = 0; i < 18; i++)
                                          chartLine(PowerChartModel
                                              .dummyRandomPower.dataPoints[i])
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: double.infinity,
                                    height: 85,
                                    child: FrostedWidget(
                                        padding: EdgeInsets.all(4),
                                        borderRadius: BorderRadius.circular(40),
                                        showBorder: true,
                                        color: Colors.transparent,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            SizedBox(
                                              width: 77,
                                              height: 77,
                                              child: FrostedWidget(
                                                padding: EdgeInsets.all(10),
                                                borderRadius:
                                                    BorderRadius.circular(40),
                                                color: Colors.white,
                                                showBorder: true,
                                                child: Icon(
                                                  CupertinoIcons.arrow_left,
                                                  color: Colors.black
                                                      .withOpacity(0.8),
                                                  size: 22,
                                                ),
                                              ),
                                            ),
                                            Text(
                                              'November',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Colors.white
                                                    .withOpacity(.9),
                                                fontSize: 17,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 77,
                                              height: 77,
                                              child: FrostedWidget(
                                                padding: EdgeInsets.all(10),
                                                borderRadius:
                                                    BorderRadius.circular(40),
                                                color: Colors.transparent,
                                                showBorder: true,
                                                child: Icon(
                                                  CupertinoIcons.arrow_right,
                                                  color: Colors.white
                                                      .withOpacity(0.8),
                                                  size: 22,
                                                ),
                                              ),
                                            ),
                                          ],
                                        )),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 5),
                          powerProducedExportedMethod(),
                          const SizedBox(height: 4),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              BottomNavigationButtons(selectedIndex: 2),
            ],
          ),
        ),
      ),
    );
  }

  Widget chartLine(DataPoint dataPoint) {
    double increase = 17;
    double decrease = 17;
    if (dataPoint.increase > 25) {
      increase = dataPoint.increase;
    }
    if (dataPoint.decrease > 25) {
      decrease = dataPoint.decrease;
    }
    return Column(
      children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  width: 5,
                  height: (increase / 100) * 52,
                  decoration: BoxDecoration(
                    color: increase > 25
                        ? PowerGridColors.lightGreen
                        : Colors.grey,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 4),
        Container(
          width: 6,
          height: 6,
          margin: const EdgeInsets.all(1),
          decoration: BoxDecoration(
            color: increase > 25 || decrease > 25 ? Colors.white : Colors.grey,
            borderRadius: BorderRadius.circular(5),
            border: increase > 25 || decrease > 25
                ? Border.all(
                    color: PowerGridColors.glassBlack.withOpacity(.5),
                    width: 1.4,
                  )
                : null,
          ),
        ),
        const SizedBox(height: 4),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  width: 5,
                  height: (decrease / 100) * 52,
                  decoration: BoxDecoration(
                    color: decrease > 25
                        ? PowerGridColors.lightYellow
                        : Colors.grey,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
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

  Widget titleMethod() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: SizedBox(
              width: 72,
              height: 72,
              child: FrostedWidget(
                padding: EdgeInsets.all(10),
                borderRadius: BorderRadius.circular(40),
                showBorder: true,
                child: Icon(
                  CupertinoIcons.arrow_left,
                  color: Colors.white.withOpacity(0.8),
                  size: 18,
                ),
              ),
            ),
          ),
          SizedBox(
            width: 72,
            height: 72,
            child: FrostedWidget(
              padding: EdgeInsets.all(10),
              borderRadius: BorderRadius.circular(40),
              showBorder: true,
              child: Icon(
                Icons.share_rounded,
                color: Colors.white.withOpacity(0.8),
                size: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plants_shop/models/plant_model.dart';
import 'package:plants_shop/pages/flower_details_page.dart';
import 'package:plants_shop/utils/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  bool isMessages = true;
  int tabSelectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned.fill(
            child: ListView(
              padding: const EdgeInsets.only(
                  top: 135, left: 3, right: 3, bottom: 110),
              children: [
                Text(
                  'Manage Your',
                  style: TextStyle(
                      fontSize: 37, fontWeight: FontWeight.bold, height: 1),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 5),
                Text(
                  'Home Plants',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 25),
                ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Container(
                    height: 260,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: PlantsColor.greenColor,
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Stack(
                            children: [
                              Positioned(
                                bottom: -80,
                                left: -95,
                                child: Image.asset(
                                  'assets/plant_4.png',
                                  height: 290,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 160,
                          margin: const EdgeInsets.only(
                              top: 7, right: 7, bottom: 7),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: double.infinity,
                                height: 160,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(23),
                                ),
                                padding: const EdgeInsets.all(5),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const SizedBox(height: 10),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 10),
                                          child: Text(
                                            'Succulent',
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: PlantsColor.greenColor,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 10),
                                          child: Text(
                                            '12 days ago planted',
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.grey.shade400,
                                              fontWeight: FontWeight.w700,
                                              letterSpacing: -1,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Container(
                                      width: double.infinity,
                                      height: 70,
                                      decoration: BoxDecoration(
                                        color: PlantsColor.whiteColor,
                                        borderRadius: BorderRadius.circular(23),
                                      ),
                                      padding: const EdgeInsets.only(left: 12),
                                      child: Row(
                                        children: [
                                          Container(
                                            padding: const EdgeInsets.all(10),
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              shape: BoxShape.circle,
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.black
                                                      .withOpacity(0.1),
                                                  blurRadius: 5,
                                                  spreadRadius: 1,
                                                ),
                                              ],
                                            ),
                                            child: Icon(
                                              CupertinoIcons.thermometer_sun,
                                              color: PlantsColor.greenColor,
                                              size: 18,
                                            ),
                                          ),
                                          const SizedBox(width: 12),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                'Room temp',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.grey.shade400,
                                                  fontWeight: FontWeight.w700,
                                                  letterSpacing: -1,
                                                ),
                                              ),
                                              Text(
                                                '24°C',
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w700,
                                                  letterSpacing: -1,
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 5),
                              Expanded(
                                child: Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(0.12),
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  padding: const EdgeInsets.only(left: 22),
                                  child: Row(
                                    children: [
                                      Icon(
                                        CupertinoIcons.lightbulb,
                                        color: Colors.white,
                                        size: 26,
                                      ),
                                      const SizedBox(width: 12),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Room Light',
                                            style: TextStyle(
                                              fontSize: 12,
                                              color:
                                                  Colors.white.withOpacity(0.7),
                                              fontWeight: FontWeight.w700,
                                              letterSpacing: -1,
                                            ),
                                          ),
                                          Text(
                                            '64%',
                                            style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w700,
                                              letterSpacing: -1,
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      behavior: HitTestBehavior.translucent,
                      onTap: () {
                        setState(() {
                          selectedIndex = 0;
                        });
                      },
                      child: Column(
                        children: [
                          Text(
                            'New Plant',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: selectedIndex == 0
                                  ? PlantsColor.greenColor
                                  : Colors.grey.shade400,
                            ),
                          ),
                          AnimatedContainer(
                            duration: const Duration(milliseconds: 300),
                            margin: const EdgeInsets.only(top: 5),
                            height: 8,
                            width: 8,
                            decoration: BoxDecoration(
                              color: selectedIndex == 0
                                  ? PlantsColor.greenColor
                                  : Colors.transparent,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 20),
                    GestureDetector(
                      behavior: HitTestBehavior.translucent,
                      onTap: () {
                        setState(() {
                          selectedIndex = 1;
                        });
                      },
                      child: Column(
                        children: [
                          Text(
                            'Harvested',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: selectedIndex == 1
                                  ? PlantsColor.greenColor
                                  : Colors.grey.shade400,
                            ),
                          ),
                          AnimatedContainer(
                            duration: const Duration(milliseconds: 300),
                            margin: const EdgeInsets.only(top: 5),
                            height: 8,
                            width: 8,
                            decoration: BoxDecoration(
                              color: selectedIndex == 1
                                  ? PlantsColor.greenColor
                                  : Colors.transparent,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Wrap(
                  spacing: 2,
                  runSpacing: 4,
                  children: [
                    for (int i = 0; i < 20; i++)
                      FlowerWidget(
                          index: i,
                          flower: FlowerModel
                              .flowers[i % FlowerModel.flowers.length]),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            top: 50,
            left: 15,
            right: 15,
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(55),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 60,
                    width: 60,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.asset(
                        'assets/profile.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    height: 60,
                    width: 120,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey.shade300,
                        width: 1.5,
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    padding: const EdgeInsets.all(2),
                    child: Stack(
                      children: [
                        AnimatedPositioned(
                          duration: const Duration(milliseconds: 200),
                          left: isMessages ? 58 : 0,
                          curve: Curves.easeInOut,
                          top: 0,
                          bottom: 0,
                          child: Container(
                            width: 54,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(55),
                            ),
                          ),
                        ),
                        Positioned.fill(
                          child: Row(
                            children: [
                              Expanded(
                                child: GestureDetector(
                                  behavior: HitTestBehavior.translucent,
                                  onTap: () {
                                    setState(() {
                                      isMessages = !isMessages;
                                    });
                                  },
                                  child: Icon(
                                    CupertinoIcons.text_bubble,
                                    color: Colors.black,
                                    size: 20,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 6),
                              Expanded(
                                child: GestureDetector(
                                  behavior: HitTestBehavior.translucent,
                                  onTap: () {
                                    setState(() {
                                      isMessages = !isMessages;
                                    });
                                  },
                                  child: Icon(
                                    CupertinoIcons.cloud,
                                    color: Colors.black,
                                    size: 20,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: SizedBox(
              height: 140,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 62.5 * 4,
                    height: 70,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(55),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 20,
                          spreadRadius: 10,
                        ),
                      ],
                    ),
                    margin: const EdgeInsets.only(bottom: 15),
                    padding: const EdgeInsets.all(5),
                    child: Stack(
                      children: [
                        AnimatedPositioned(
                          duration: const Duration(milliseconds: 150),
                          left: tabSelectedIndex * 60,
                          top: 0,
                          bottom: 0,
                          child: Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                              color: PlantsColor.greenColor.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(55),
                            ),
                          ),
                        ),
                        Positioned.fill(
                          child: Row(
                            children: [
                              GestureDetector(
                                behavior: HitTestBehavior.translucent,
                                onTap: () {
                                  setState(() {
                                    tabSelectedIndex = 0;
                                  });
                                },
                                child: SizedBox(
                                  width: 60,
                                  height: 60,
                                  child: Icon(
                                    CupertinoIcons.house_fill,
                                    color: tabSelectedIndex == 0
                                        ? PlantsColor.greenColor
                                        : Colors.grey,
                                    size: 23,
                                  ),
                                ),
                              ),
                              GestureDetector(
                                behavior: HitTestBehavior.translucent,
                                onTap: () {
                                  setState(() {
                                    tabSelectedIndex = 1;
                                  });
                                },
                                child: SizedBox(
                                  width: 60,
                                  height: 60,
                                  child: Icon(
                                    CupertinoIcons.calendar,
                                    color: tabSelectedIndex == 1
                                        ? PlantsColor.greenColor
                                        : Colors.grey,
                                    size: 23,
                                  ),
                                ),
                              ),
                              GestureDetector(
                                behavior: HitTestBehavior.translucent,
                                onTap: () {
                                  setState(() {
                                    tabSelectedIndex = 2;
                                  });
                                },
                                child: SizedBox(
                                  width: 60,
                                  height: 60,
                                  child: Icon(
                                    CupertinoIcons.bag,
                                    color: tabSelectedIndex == 2
                                        ? PlantsColor.greenColor
                                        : Colors.grey,
                                    size: 23,
                                  ),
                                ),
                              ),
                              GestureDetector(
                                behavior: HitTestBehavior.translucent,
                                onTap: () {
                                  setState(() {
                                    tabSelectedIndex = 3;
                                  });
                                },
                                child: SizedBox(
                                  width: 60,
                                  height: 60,
                                  child: Icon(
                                    CupertinoIcons.book,
                                    color: tabSelectedIndex == 3
                                        ? PlantsColor.greenColor
                                        : Colors.grey,
                                    size: 23,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class FlowerWidget extends StatelessWidget {
  final int index;
  final FlowerModel flower;
  const FlowerWidget({
    required this.index,
    required this.flower,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => FlowerDetailsPage(
                assetPath: flower.assetPath,
                tag: flower.assetPath + index.toString()),
          ),
        );
      },
      child: Container(
        width: MediaQuery.of(context).size.width / 2 - 14,
        height: 242,
        margin: const EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.of(context).size.width / 2 - 26,
              decoration: BoxDecoration(
                color: PlantsColor.whiteColor,
                borderRadius: BorderRadius.circular(25),
              ),
              padding: const EdgeInsets.all(10),
              child: Center(
                child: Hero(
                  tag: flower.assetPath + index.toString(),
                  child: Image.asset(
                    flower.assetPath,
                    height: 120,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.only(left: 17),
              child: Text(
                flower.name,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(height: 1),
            Padding(
              padding: const EdgeInsets.only(left: 17),
              child: Text(
                '${flower.daysUntilHarvest} days until harvest',
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey.shade500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

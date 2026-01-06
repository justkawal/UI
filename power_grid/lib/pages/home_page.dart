import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:power_grid/pages/power_usage_page.dart';
import 'package:power_grid/utils/colors.dart';
import 'package:power_grid/widgets/frosted_widget.dart';
import 'package:power_grid/widgets/heading_2.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 1, milliseconds: 300), (timer) {
      setState(() {
        selectedIndex = (selectedIndex + 1) % 4;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              PowerGridColors.darkBlack,
              PowerGridColors.mediumBlack,
            ],
          ),
        ),
        child: Stack(
          children: [
            Positioned.fill(
              child: Column(
                children: [
                  const SizedBox(height: 70),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            CupertinoIcons.bolt_fill,
                            color: Colors.white,
                            size: 35,
                          ),
                          const SizedBox(width: 5),
                          Text(
                            'MYGRID.',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 74,
                        height: 17,
                        child: ListView.builder(
                          itemCount: 4,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, position) => Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              AnimatedContainer(
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 5),
                                width: position == selectedIndex ? 17 : 7,
                                height: position == selectedIndex ? 17 : 7,
                                duration: Duration(milliseconds: 300),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                    color: position == selectedIndex
                                        ? Colors.white
                                        : Colors.transparent,
                                    width: 1,
                                  ),
                                ),
                                padding: EdgeInsets.all(
                                    position == selectedIndex ? 5.5 : 0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: position == selectedIndex
                                        ? Colors.white
                                        : Colors.grey,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 25),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 90),
                        child: Column(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width,
                              height: 220,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Heading2(title: 'Smart'),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 120,
                                        height: 80,
                                        child: Stack(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 10,
                                                  top: 10,
                                                  bottom: 10),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                                child: SizedBox(
                                                  height: 60,
                                                  width: 105,
                                                  child: Image.asset(
                                                    'assets/home_power.png',
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              right: 5,
                                              child: Container(
                                                width: 35,
                                                height: 35,
                                                decoration: BoxDecoration(
                                                  color: Colors.green,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          17.5),
                                                ),
                                                child: Icon(
                                                  CupertinoIcons.bolt_fill,
                                                  size: 20,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(width: 5),
                                      Heading2(title: 'Home'),
                                    ],
                                  ),
                                  Heading2(title: 'Battery'),
                                ],
                              ),
                            ),
                            const SizedBox(height: 10),
                            SizedBox(
                              width: MediaQuery.of(context).size.width - 60,
                              height: 800,
                              child: Image.asset(
                                'assets/battery.png',
                                fit: BoxFit.cover,
                                color:
                                    PowerGridColors.lightBlack.withOpacity(.85),
                                colorBlendMode: BlendMode.modulate,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 20,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 72,
                    height: 72,
                    child: FrostedWidget(
                      padding: EdgeInsets.all(10),
                      borderRadius: BorderRadius.circular(40),
                      child: Icon(
                        CupertinoIcons.chevron_back,
                        color: Colors.white.withOpacity(0.8),
                        size: 18,
                      ),
                    ),
                  ),
                  const SizedBox(width: 4),
                  Expanded(
                    child: SizedBox(
                      width: 75,
                      height: 75,
                      child: FrostedWidget(
                        padding: EdgeInsets.all(4),
                        borderRadius: BorderRadius.circular(40),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 67,
                              height: 67,
                              child: FrostedWidget(
                                padding: EdgeInsets.all(10),
                                borderRadius: BorderRadius.circular(40),
                                color: Colors.white,
                                child: Icon(
                                  CupertinoIcons.bolt,
                                  color: Colors.black.withOpacity(0.8),
                                  size: 22,
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  CupertinoIcons.chevron_forward,
                                  color: Colors.white.withOpacity(0.5),
                                  size: 16,
                                ),
                                Icon(
                                  CupertinoIcons.chevron_forward,
                                  color: Colors.white.withOpacity(0.8),
                                  size: 16,
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 67,
                              height: 67,
                              child: FrostedWidget(
                                padding: EdgeInsets.all(10),
                                borderRadius: BorderRadius.circular(40),
                                child: Icon(
                                  CupertinoIcons.bolt,
                                  color: Colors.white.withOpacity(0.8),
                                  size: 22,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 4),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        CupertinoPageRoute(
                          builder: (_) => PowerUsagePage(),
                        ),
                      );
                    },
                    child: SizedBox(
                      width: 72,
                      height: 72,
                      child: FrostedWidget(
                        padding: EdgeInsets.all(10),
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.white,
                        child: Icon(
                          CupertinoIcons.chevron_forward,
                          color: Colors.black.withOpacity(0.8),
                          size: 18,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:courses/widgets/bottom_navigation_bar.dart';
import 'package:courses/widgets/course_card.dart';
import 'package:courses/utilities/colors.dart';
import 'package:courses/widgets/hexagon_custom_clipper.dart';
import 'package:courses/widgets/triangle_custom_clipper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late PageController _pageViewController;
  late TabController _tabController;
  int farmsLength = 8;

  @override
  void initState() {
    super.initState();
    _pageViewController = PageController();
    _tabController = TabController(length: farmsLength, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _pageViewController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Positioned.fill(
          child: Column(
            children: [
              Expanded(
                flex: 6,
                child: Container(
                  color: CoursesColors.veryLightGreen,
                ),
              ),
              Expanded(
                flex: 11,
                child: Container(
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
        Positioned.fill(
          child: Column(
            children: [
              const SizedBox(height: 70),
              Container(
                height: 70,
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: CoursesColors.mediumGreen,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Icon(
                        CupertinoIcons.ellipsis_vertical,
                        size: 26,
                        color: CoursesColors.darkGreen,
                      ),
                    ),
                    Text(
                      'Hello, Aron',
                      style: TextStyle(
                        color: CoursesColors.darkGreen,
                        fontSize: 19,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: 50,
                      width: 50,
                      child: Icon(
                        CupertinoIcons.search,
                        size: 32,
                        color: CoursesColors.darkGreen,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 270,
                child: PageView.builder(
                  controller:
                      PageController(initialPage: 6, viewportFraction: .76),
                  onPageChanged: _handlePageViewChanged,
                  itemCount: farmsLength,
                  itemBuilder: (context, index) {
                    return AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      child: Stack(
                        children: [
                          Positioned.fill(
                            child: ClipPath(
                              clipper: HexagonCustomClipper(),
                              child: Image.asset(
                                'assets/farms/farm${index + 1}.png',
                                fit: BoxFit.cover,
                                // add layer of dark orange in color blend mode
                                colorBlendMode: BlendMode.darken,
                                color: Colors.black.withOpacity(.24),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 40,
                            left: 0,
                            right: 0,
                            child: Column(
                              children: [
                                Text(
                                  'Digital Painting\nCourse',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 21,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  'Lynn Jason',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: SizedBox(
                  height: 90,
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: CoursesColors.veryLightGreen,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                              topRight: Radius.circular(10),
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Learners',
                                style: TextStyle(
                                  color:
                                      CoursesColors.darkGreen.withOpacity(.7),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              const SizedBox(height: 5),
                              Text(
                                '25,287,210',
                                style: TextStyle(
                                  color: CoursesColors.darkGreen,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                        child: Stack(
                          children: [
                            Positioned(
                              width: 38,
                              height: 70,
                              left: -24,
                              top: -16,
                              child: ClipPath(
                                clipper: TriangleCustomClipper(),
                                child: Container(
                                  width: 40,
                                  color: CoursesColors.veryLightGreen,
                                ),
                              ),
                            ),
                            Positioned(
                              width: 50,
                              height: 50,
                              bottom: 0,
                              child: Container(
                                width: 40,
                                color: CoursesColors.veryLightGreen,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                        child: Stack(
                          children: [
                            Positioned(
                              width: 38,
                              height: 70,
                              right: -28,
                              top: -16,
                              child: ClipPath(
                                clipper: TriangleCustomClipper(),
                                child: Container(
                                  width: 40,
                                  color: CoursesColors.veryLightGreen,
                                ),
                              ),
                            ),
                            Positioned(
                              width: 50,
                              height: 50,
                              bottom: 0,
                              child: Container(
                                width: 40,
                                color: CoursesColors.veryLightGreen,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: CoursesColors.veryLightGreen,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                              topLeft: Radius.circular(10),
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Courses',
                                style: TextStyle(
                                  color:
                                      CoursesColors.darkGreen.withOpacity(.7),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              const SizedBox(height: 5),
                              Text(
                                '12,200+',
                                style: TextStyle(
                                  color: CoursesColors.darkGreen,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  children: [
                    CourseCard(
                      title: 'Photography Basics',
                      iconData: Icons.camera,
                      color: CoursesColors.blue,
                    ),
                    const SizedBox(width: 10),
                    CourseCard(
                      title: 'Personal\nOf Financials',
                      iconData: Icons.bar_chart_rounded,
                      color: CoursesColors.pink,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 5,
          height: 100,
          left: 25,
          right: 25,
          child: BottomNavigationBarWidget(),
        ),
      ],
    ));
  }

  void _handlePageViewChanged(int currentPageIndex) {
    _tabController.index = currentPageIndex;
    setState(() {});
  }
}

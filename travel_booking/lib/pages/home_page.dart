import 'package:flag/flag.dart';
import 'package:flutter/material.dart';
import 'package:travel_booking/models/destination_model.dart';
import 'package:travel_booking/pages/destination_category_listing_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late PageController _pageViewController;
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _pageViewController = PageController();
    _tabController = TabController(
        length: DestinationModel.destinations.length, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _pageViewController.dispose();
  }

  void _handlePageViewChanged(int currentPageIndex) {
    _tabController.index = currentPageIndex;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/destinations/destination_2.png',
              fit: BoxFit.fitHeight,
            ),
          ),
          Positioned(
            top: 70,
            left: 31,
            right: 31,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 15,
                      width: 35,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 1.5,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(18),
                            ),
                          ),
                          Container(
                            height: 1.5,
                            margin: const EdgeInsets.only(right: 10),
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(18),
                            ),
                          ),
                        ],
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(18),
                      child: SizedBox(
                        height: 45,
                        width: 45,
                        child: Image.asset(
                          'assets/profile.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.only(right: 50),
                  child: Text(
                    'Where do you want\nto be?',
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.w500,
                      letterSpacing: -1.2,
                      height: 1.4,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            height: 250,
            bottom: 20,
            left: 0,
            right: 0,
            child: PageView.builder(
              padEnds: false,
              controller: PageController(
                  keepPage: false, initialPage: 0, viewportFraction: .5),
              onPageChanged: _handlePageViewChanged,
              itemCount: DestinationModel.destinations.length + 1,
              itemBuilder: (context, index) {
                if (index == DestinationModel.destinations.length) {
                  return const SizedBox(width: 20);
                }
                final model = DestinationModel.destinations[index];
                return GestureDetector(
                  behavior: HitTestBehavior.translucent,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DestinationCategoryListingPage(),
                      ),
                    );
                  },
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    margin: EdgeInsets.only(
                        left: 5,
                        right: 5,
                        top: _tabController.index == index ? 0 : 55),
                    height: 100,
                    decoration: BoxDecoration(
                      color: _tabController.index == index
                          ? Colors.white
                          : Colors.black.withOpacity(.8),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    padding: const EdgeInsets.only(
                        left: 20, right: 20, top: 30, bottom: 25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 0),
                          child: TweenAnimationBuilder(
                            tween: Tween<double>(
                                begin: _tabController.index == index ? 0 : 1,
                                end: _tabController.index == index ? 1 : 0),
                            duration: const Duration(milliseconds: 400),
                            builder: (context, double value, child) {
                              return Text(
                                model.destinationName,
                                style: TextStyle(
                                  fontSize: 21 + (8 * value),
                                  fontWeight: FontWeight.w500,
                                  color: ColorTween(
                                    begin: Colors.white,
                                    end: Colors.black,
                                  ).transform(value),
                                  height: 1.25,
                                ),
                              );
                            },
                          ),
                        ),
                        if (_tabController.index == index)
                          TweenAnimationBuilder(
                            tween: Tween<double>(begin: 0, end: 1),
                            duration: const Duration(milliseconds: 400),
                            builder: (context, double value, child) {
                              return Icon(
                                Icons.arrow_downward_rounded,
                                size: 10 + (30 * value),
                                color: Colors.black,
                              );
                            },
                          ),
                        TweenAnimationBuilder(
                          tween: Tween<double>(
                              begin: _tabController.index == index ? 0 : 1,
                              end: _tabController.index == index ? 1 : 0),
                          duration: const Duration(milliseconds: 400),
                          builder: (context, double value, child) {
                            final borderColor = ColorTween(
                              begin: Colors.black,
                              end: Colors.white,
                            ).transform(value)!;
                            return SizedBox(
                              height: 35,
                              child: Stack(
                                children: [
                                  for (int i = 0; i < 3; i++)
                                    Positioned(
                                      left: i * 27,
                                      top: 0,
                                      height: 35,
                                      child: Container(
                                        height: 35,
                                        width: 35,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          border: Border.all(
                                            color: borderColor,
                                            width: 1.9,
                                          ),
                                        ),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          child: Flag.fromCode(
                                            model.flags[i],
                                            height: 35,
                                            width: 35,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  Positioned(
                                    left: 3 * 27,
                                    top: 0,
                                    height: 35,
                                    child: Container(
                                      height: 35,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(
                                          color: borderColor,
                                          width: 1.9,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

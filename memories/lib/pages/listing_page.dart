import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:memories/models/memories_model.dart';
import 'package:memories/utils/colors.dart';

class ListingPage extends StatefulWidget {
  const ListingPage({Key? key}) : super(key: key);

  @override
  State<ListingPage> createState() => _ListingPageState();
}

class _ListingPageState extends State<ListingPage> {
  int _selectedIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned.fill(
            child: ListView(
              padding: const EdgeInsets.only(bottom: 100),
              children: [
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        MemoriesColors.darkPinkColor,
                        MemoriesColors.darkPinkColor,
                        Colors.white,
                      ],
                      stops: const [0.1, 0.2, 0.5],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 70),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 20,
                              width: 30,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        height: 5,
                                        width: 16,
                                        decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                      ),
                                      const Spacer(),
                                    ],
                                  ),
                                  Container(
                                    height: 5,
                                    width: 30,
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      const Spacer(),
                                      Container(
                                        height: 5,
                                        width: 16,
                                        decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 35,
                              width: 35,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: Image.asset(
                                  'assets/landing_page_image.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 170,
                        width: double.infinity,
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        child: Stack(
                          children: [
                            Positioned(
                              top: 40,
                              left: 10,
                              right: 10,
                              child: Container(
                                height: 130,
                                decoration: BoxDecoration(
                                  color: MemoriesColors.lightGreyColor
                                      .withOpacity(.6),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                padding:
                                    const EdgeInsets.only(left: 10, bottom: 10),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '25th Aug',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                        color: MemoriesColors.darkBrownColor,
                                      ),
                                    ),
                                    const SizedBox(height: 5),
                                    Container(
                                      height: 35,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 13),
                                      decoration: BoxDecoration(
                                        color: MemoriesColors.darkPinkColor,
                                        borderRadius: BorderRadius.circular(9),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Plan Memories',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.white,
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
                              right: 0,
                              bottom: -8,
                              child: Transform.scale(
                                scale: .91,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(15),
                                  ),
                                  child: Image.asset(
                                    'assets/cropped_anniversary.png',
                                    height: 200,
                                    fit: BoxFit.fitHeight,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 2,
                              top: 50,
                              child: Text(
                                'Anniversary',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.dancingScript().copyWith(
                                  fontSize: 36,
                                  fontWeight: FontWeight.w600,
                                  color: MemoriesColors.darkBrownColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      Container(
                        height: 47,
                        margin: const EdgeInsets.symmetric(horizontal: 30),
                        child: TextField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.search),
                            hintText: 'Search for Memories',
                            hintStyle: TextStyle(
                              color: MemoriesColors.lightBrownColor,
                              fontSize: 16,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                color: Colors.brown,
                                width: 3,
                              ),
                            ),
                            filled: true,
                            fillColor: Colors.transparent,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Text(
                          'Trending',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: MemoriesColors.darkBrownColor,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      MemoriesListViewWidget(),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Text(
                    'Memories and communities',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: MemoriesColors.darkBrownColor,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                MemoriesListViewWidget(shiftIndex: Random().nextInt(4) + 4),
              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              height: 70,
              color: MemoriesColors.lightWhiteColor,
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 10,
            child: SizedBox(
              height: 70,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                      child: GestureDetector(
                    behavior: HitTestBehavior.translucent,
                    onTap: () {
                      setState(() {
                        _selectedIndex = 0;
                      });
                    },
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 250),
                      decoration: BoxDecoration(
                        color: _selectedIndex == 0
                            ? MemoriesColors.darkPinkColor
                            : MemoriesColors.lightWhiteColor,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      padding: const EdgeInsets.symmetric(
                        vertical: 10,
                      ),
                      margin: EdgeInsets.only(
                          left: 7,
                          right: 7,
                          bottom: _selectedIndex == 0 ? 27 : 0),
                      child: Text(
                        'Communities',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color:
                              _selectedIndex == 0 ? Colors.black : Colors.brown,
                        ),
                      ),
                    ),
                  )),
                  Expanded(
                    child: GestureDetector(
                        behavior: HitTestBehavior.translucent,
                        onTap: () {
                          setState(() {
                            _selectedIndex = 1;
                          });
                        },
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 250),
                          decoration: BoxDecoration(
                            color: _selectedIndex == 1
                                ? MemoriesColors.darkPinkColor
                                : MemoriesColors.lightWhiteColor,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          padding: const EdgeInsets.symmetric(
                            vertical: 10,
                          ),
                          margin: EdgeInsets.only(
                              left: 7,
                              right: 7,
                              bottom: _selectedIndex == 1 ? 27 : 0),
                          child: Text(
                            'New Memory',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: _selectedIndex == 1
                                  ? Colors.black
                                  : Colors.brown,
                            ),
                          ),
                        )),
                  ),
                  Expanded(
                      child: GestureDetector(
                    behavior: HitTestBehavior.translucent,
                    onTap: () {
                      setState(() {
                        _selectedIndex = 2;
                      });
                    },
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 250),
                      decoration: BoxDecoration(
                        color: _selectedIndex == 2
                            ? MemoriesColors.darkPinkColor
                            : MemoriesColors.lightWhiteColor,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      padding: const EdgeInsets.symmetric(
                        vertical: 10,
                      ),
                      margin: EdgeInsets.only(
                          left: 7,
                          right: 7,
                          bottom: _selectedIndex == 2 ? 27 : 0),
                      child: Text(
                        'My cats',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color:
                              _selectedIndex == 2 ? Colors.black : Colors.brown,
                        ),
                      ),
                    ),
                  )),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MemoriesListViewWidget extends StatelessWidget {
  final int shiftIndex;
  const MemoriesListViewWidget({
    this.shiftIndex = 0,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final list = MemoriesModel.getMrmories();
    return SizedBox(
      height: 213,
      child: ListView.builder(
        padding: const EdgeInsets.only(left: 30),
        scrollDirection: Axis.horizontal,
        itemCount: list.length,
        itemBuilder: (context, index) {
          index = index + shiftIndex;
          final model = list[index % list.length];
          return Container(
            height: 204,
            width: 230,
            margin: const EdgeInsets.only(right: 22),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  child: SizedBox(
                    height: 150,
                    width: 230,
                    child: Image.asset(
                      model.assetPath,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      model.title,
                      style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.w600,
                        color: MemoriesColors.darkBrownColor,
                        letterSpacing: -1,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '${model.memoriesCount} memories made',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: MemoriesColors.darkBrownColor,
                            letterSpacing: -1.1,
                          ),
                        ),
                        Container(
                          height: 27,
                          decoration: BoxDecoration(
                            color: MemoriesColors.lightGreenColor,
                            borderRadius: BorderRadius.all(Radius.circular(7)),
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          alignment: Alignment.center,
                          child: Text(
                            '\$${model.price}',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: MemoriesColors.darkBrownColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

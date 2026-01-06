import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:organic_life/models/plants_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedTab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Stack(
          children: [
            Positioned.fill(
              child: ListView(
                padding: const EdgeInsets.only(bottom: 100),
                children: [
                  SizedBox(
                    height: 190,
                    child: Stack(
                      children: [
                        Positioned(
                          top: 60,
                          left: 0,
                          right: 0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 42, 87, 43),
                                  shape: BoxShape.circle,
                                ),
                                child: const Icon(
                                  Icons.eco,
                                  color: Colors.white,
                                ),
                              ),
                              RichText(
                                text: TextSpan(
                                  style: const TextStyle(
                                    fontSize: 22,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  children: [
                                    TextSpan(text: 'Plant'),
                                    TextSpan(
                                      text: ' world',
                                      style: TextStyle(
                                        color: const Color.fromARGB(
                                            255, 52, 110, 54),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Icon(
                                Icons.more_vert,
                                color: Colors.black,
                                size: 30,
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          left: 0,
                          child: Text(
                            'My Plants',
                            style: TextStyle(
                              fontSize: 45,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              height: 1,
                              letterSpacing: -1,
                            ),
                          ),
                        ),
                        Positioned(
                          top: -5,
                          right: 25,
                          child: Image.asset(
                            'assets/branch.png',
                            height: 190,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 40),
                  Wrap(
                    spacing: 35,
                    runSpacing: 20,
                    children: [
                      for (int index = 0; index < 20; index++)
                        PlantDetailTile(
                          model: PlantsModel.plants[index % 8],
                        ),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 20,
              left: 0,
              right: 0,
              child: Container(
                height: 70,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 42, 87, 43),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _selectedTab = 0;
                        });
                      },
                      behavior: HitTestBehavior.translucent,
                      child: Icon(
                        FontAwesomeIcons.house,
                        color: _selectedTab == 0
                            ? Colors.white
                            : Colors.white.withOpacity(.6),
                        size: 22,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _selectedTab = 1;
                        });
                      },
                      behavior: HitTestBehavior.translucent,
                      child: Icon(
                        FontAwesomeIcons.noteSticky,
                        color: _selectedTab == 1
                            ? Colors.white
                            : Colors.white.withOpacity(.6),
                        size: 22,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _selectedTab = 2;
                        });
                      },
                      behavior: HitTestBehavior.translucent,
                      child: Icon(
                        FontAwesomeIcons.cartShopping,
                        color: _selectedTab == 2
                            ? Colors.white
                            : Colors.white.withOpacity(.6),
                        size: 22,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _selectedTab = 3;
                        });
                      },
                      behavior: HitTestBehavior.translucent,
                      child: Icon(
                        CupertinoIcons.person_fill,
                        color: _selectedTab == 3
                            ? Colors.white
                            : Colors.white.withOpacity(.6),
                        size: 22,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PlantDetailTile extends StatelessWidget {
  final PlantsModel model;
  const PlantDetailTile({
    required this.model,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 280,
      width: MediaQuery.of(context).size.width / 2 - 40,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 210,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.green,
              ),
              borderRadius: BorderRadius.circular(30),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.asset(
                model.assetPath,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 12),
          Text(
            model.name,
            style: const TextStyle(
              fontSize: 18,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            '\$${model.price}',
            style: const TextStyle(
              fontSize: 15,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

import 'dart:math';
import 'package:firechat/pages/near_you_page.dart';
import 'package:firechat/pages/profile_page.dart';
import 'package:firechat/utils/utils.dart';
import 'package:firechat/widgets/heading.dart';
import 'package:firechat/widgets/shadow_box.dart';
import 'package:flutter/material.dart';

class DiscoverPage extends StatefulWidget {
  const DiscoverPage({Key? key}) : super(key: key);

  @override
  State<DiscoverPage> createState() => _DiscoverPageState();
}

class _DiscoverPageState extends State<DiscoverPage> {
  final List<String> _newMatches = FireChatImages.getShuffledImageList();

  final List<String> _yourDates = FireChatImages.getShuffledImageList();

  final List<String> _nearYou = FireChatImages.getShuffledImageList();

  Widget _buildMatchesTab(
      {required int index, required String profileImagePath}) {
    final name = FireChatNames.getRandomName(index);
    return GestureDetector(
      onTap: () {
        Navigator.push<void>(
          context,
          MaterialPageRoute<void>(
            builder: (BuildContext context) => ProfilePage(
              name: name,
              assetPath: profileImagePath,
            ),
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(right: 9),
        width: 80,
        height: 80,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ShadowBox(
              height: 65,
              width: 65,
              borderRadius: 40,
              offset: Offset(1, 2.2),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Image.asset(
                  profileImagePath,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Text(
              name,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  fontSize: 10,
                  color: Colors.grey[900],
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 60, left: 15, right: 15),
          child: Column(
            children: [
              Heading(
                heading: 'Discover',
                fontSize: 24,
                onLeftTap: null,
                onRightTap: null,
                rightIcon: Icons.search_rounded,
                leftColor: FireChatColors.lightGreen,
                leftIcon: Icons.menu_rounded,
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'New Matches',
                    style: TextStyle(
                        fontSize: 17,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'View more',
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.orange,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 90,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    for (int i = 0; i < 8; i++)
                      _buildMatchesTab(
                          index: i, profileImagePath: _newMatches[i % 6]),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Your Dates',
                    style: TextStyle(
                        fontSize: 17,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'View more',
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.orange,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 138,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    for (int i = 0; i < 8; i++) _buildYourDates(i),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Near You',
                    style: TextStyle(
                        fontSize: 17,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'View more',
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.orange,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Wrap(
                spacing: 15,
                runSpacing: 15,
                children: [
                  for (int i = 0; i < 8; i++)
                    _buildProfileCard(
                      randomColor: FireChatColors
                          .colorsList[i % FireChatColors.colorsList.length],
                      profileImagePath: _nearYou[i % 6],
                      nameAndAge:
                          '${FireChatNames.getRandomName(i)}, ${Random().nextInt(5) + 21}',
                      location: 'Toronto, Canada',
                      context: context,
                    ),
                ],
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildYourDates(int i) {
    final name = FireChatNames.getRandomName(i);
    return GestureDetector(
      onTap: () {
        Navigator.push<void>(
          context,
          MaterialPageRoute<void>(
            builder: (BuildContext context) => ProfilePage(
              name: name,
              assetPath: _yourDates[i % 6],
            ),
          ),
        );
      },
      child: Padding(
        padding: EdgeInsets.only(right: 15, bottom: 4),
        child: ShadowBox(
          width: 110,
          borderRadius: 10,
          color:
              FireChatColors.colorsList[i % FireChatColors.colorsList.length],
          offset: Offset(4, 3.2),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(height: 2),
              ShadowBox(
                width: 60,
                height: 60,
                borderRadius: 30,
                color: Colors.white,
                offset: Offset(1, 1.2),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Image.asset(
                    _yourDates[i % 6],
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Text(
                '$name, 22',
                style: TextStyle(
                    fontSize: 11,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.location_on_rounded, size: 11),
                  Text(
                    'Miami',
                    style: TextStyle(
                        fontSize: 9.5,
                        color: Colors.grey[600],
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(height: 2),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProfileCard(
      {required Color randomColor,
      required String profileImagePath,
      required String nameAndAge,
      required String location,
      required BuildContext context}) {
    return GestureDetector(
      onTap: () {
        Navigator.push<void>(
          context,
          MaterialPageRoute<void>(
            builder: (BuildContext context) => NearYouPage(
              name: nameAndAge.split(',')[0],
              profileImagePath: profileImagePath,
            ),
          ),
        );
      },
      child: ShadowBox(
        width: (MediaQuery.of(context).size.width / 2) - 25,
        height: 275,
        color: randomColor,
        offset: Offset(2, 3),
        borderColor: Colors.black,
        borderRadius: 22,
        child: Padding(
          padding: const EdgeInsets.all(3),
          child: Column(
            children: [
              SizedBox(
                height: 205,
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: ShadowBox(
                        width: (MediaQuery.of(context).size.width / 2),
                        height: 205,
                        color: Colors.transparent,
                        borderWidth: 2.4,
                        borderRadius: 20,
                        offset: Offset(0, 0),
                        borderColor: Colors.transparent,
                        shadowColor: Colors.transparent,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Padding(
                            padding: const EdgeInsets.all(1),
                            child: Image.asset(
                              profileImagePath,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        nameAndAge,
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 3),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.location_on_rounded, size: 11),
                          const SizedBox(width: 5),
                          Text(
                            location,
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ],
                  ),
                  ShadowBox(
                    width: 30,
                    height: 30,
                    borderRadius: 10,
                    borderWidth: 1.3,
                    color: FireChatColors.lightPink,
                    offset: Offset(1, 1),
                    child: const Icon(
                      Icons.favorite_rounded,
                      size: 13,
                      color: Colors.pink,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

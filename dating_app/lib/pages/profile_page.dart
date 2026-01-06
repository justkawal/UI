import 'dart:math';
import 'package:firechat/utils/utils.dart';
import 'package:firechat/widgets/heading.dart';
import 'package:firechat/widgets/shadow_box.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  final String name;
  final String assetPath;
  const ProfilePage({required this.name, required this.assetPath, Key? key})
      : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int selectedTab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: FireChatColors.lightYellow,
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildProfileImage(context),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  widget.name,
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                const SizedBox(width: 10),
                Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    color: Colors.orangeAccent,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.black, width: 2),
                  ),
                  child: Icon(
                    Icons.done_rounded,
                    size: 20,
                  ),
                ),
              ],
            ),
            Text(
              '@just_emilia',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
            ),
            const SizedBox(height: 10),
            Text(
              'Time traveller, who travelled to\npast to get the Flutter job.',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey[600],
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ShadowBox(
                  height: 60,
                  width: MediaQuery.of(context).size.width / 3 - 20,
                  borderRadius: 10,
                  offset: Offset(1, 3.2),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '1.5K',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Likes You',
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey[600],
                            fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                ),
                ShadowBox(
                  height: 60,
                  width: MediaQuery.of(context).size.width / 3 - 20,
                  borderRadius: 10,
                  offset: Offset(1, 3.2),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '499',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Matches',
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey[600],
                            fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                ),
                ShadowBox(
                  height: 60,
                  width: MediaQuery.of(context).size.width / 3 - 25,
                  borderRadius: 10,
                  offset: Offset(1, 3.2),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '8',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Dates',
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey[600],
                            fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 25),
            _buildTabbedRow(),
            const SizedBox(height: 25),
            Wrap(
              children: [
                for (int i = 0; i < 8; i++)
                  _buildProfileCard(
                    randomColor: FireChatColors
                        .colorsList[i % FireChatColors.colorsList.length],
                    profileImagePath: 'images/profile_${(i % 6) + 1}.jpeg',
                    nameAndAge: 'Natalie Sky, ${Random().nextInt(5) + 21}',
                    location: 'Toronto, Canada',
                    context: context,
                  ),
              ],
            ),
            const SizedBox(height: 50),
          ],
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
    return Padding(
      padding: const EdgeInsets.all(6),
      child: ShadowBox(
        width: (MediaQuery.of(context).size.width / 2) - 20,
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

  Widget _buildTabbedRow() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ShadowBox(
        height: 60,
        offset: Offset(1, 3.2),
        borderRadius: 15,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4.3),
          child: SizedBox(
            height: 60,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedTab = 0;
                      });
                    },
                    child: Container(
                      height: 48,
                      alignment: Alignment.center,
                      decoration: selectedTab != 0
                          ? null
                          : BoxDecoration(
                              color: FireChatColors.lightGreen,
                              border: Border.all(
                                color: Colors.black,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                      child: Text(
                        'Likes you',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedTab = 1;
                      });
                    },
                    child: Container(
                      height: 48,
                      alignment: Alignment.center,
                      decoration: selectedTab != 1
                          ? null
                          : BoxDecoration(
                              color: FireChatColors.lightGreen,
                              border: Border.all(
                                color: Colors.black,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                      child: Text(
                        'Matches',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedTab = 2;
                      });
                    },
                    child: Container(
                      height: 48,
                      alignment: Alignment.center,
                      decoration: selectedTab != 2
                          ? null
                          : BoxDecoration(
                              color: FireChatColors.lightGreen,
                              border: Border.all(
                                color: Colors.black,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                      child: Text(
                        'Dates',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Stack _buildProfileImage(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 300,
        ),
        ShadowBox(
          height: 250,
          width: MediaQuery.of(context).size.width,
          color: FireChatColors.lightBlue,
          borderWidth: 0,
          borderRadius: 0,
          offset: Offset(0, 2.5),
          child: Stack(
            children: getHearts(),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, top: 50),
          child: Heading(
            heading: 'My Profile',
            fontSize: 24,
            onLeftTap: () {
              Navigator.pop(context);
            },
            onRightTap: () {},
            rightIcon: Icons.menu_rounded,
            rightColor: FireChatColors.lightGreen,
            leftIcon: Icons.arrow_back,
          ),
        ),
        const SizedBox(height: 30),
        Positioned(
          bottom: 0,
          left: MediaQuery.of(context).size.width / 2 - 65,
          child: ShadowBox(
            height: 135,
            width: 130,
            color: FireChatColors.lightBlue,
            borderWidth: 2,
            borderRadius: 20,
            offset: Offset(3.5, .5),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(18),
              child: Image.asset(
                widget.assetPath,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ],
    );
  }

  // Hearts Positioned, Can be replaced with the similar image
  List<Widget> getHearts() {
    return [
      Positioned(
        top: 45,
        left: -10,
        child: Icon(
          Icons.favorite,
          color: FireChatColors.darkBlue,
          size: 40,
        ),
      ),
      Positioned(
        top: -10,
        left: 60,
        child: Icon(
          Icons.favorite,
          color: FireChatColors.darkBlue,
          size: 40,
        ),
      ),
      Positioned(
        top: 50,
        left: 80,
        child: Icon(
          Icons.favorite,
          color: FireChatColors.darkBlue,
          size: 65,
        ),
      ),
      Positioned(
        top: -10,
        left: 140,
        child: Icon(
          Icons.favorite,
          color: FireChatColors.darkBlue,
          size: 65,
        ),
      ),
      Positioned(
        top: 50,
        left: 210,
        child: Icon(
          Icons.favorite,
          color: FireChatColors.darkBlue,
          size: 105,
        ),
      ),
      Positioned(
        top: 120,
        left: 120,
        child: Icon(
          Icons.favorite,
          color: FireChatColors.darkBlue,
          size: 105,
        ),
      ),
      Positioned(
        top: 50,
        left: 360,
        child: Icon(
          Icons.favorite,
          color: FireChatColors.darkBlue,
          size: 95,
        ),
      ),
      Positioned(
        top: 160,
        left: 270,
        child: Icon(
          Icons.favorite,
          color: FireChatColors.darkBlue,
          size: 85,
        ),
      ),
      Positioned(
        top: 170,
        left: -10,
        child: Icon(
          Icons.favorite,
          color: FireChatColors.darkBlue,
          size: 105,
        ),
      ),
      Positioned(
        top: 170,
        left: 250,
        child: Icon(
          Icons.favorite,
          color: FireChatColors.darkBlue,
          size: 15,
        ),
      ),
      Positioned(
        top: 30,
        left: 290,
        child: Icon(
          Icons.favorite,
          color: FireChatColors.darkBlue,
          size: 15,
        ),
      ),
    ];
  }
}

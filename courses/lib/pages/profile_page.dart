import 'package:courses/utilities/colors.dart';
import 'package:courses/widgets/course_started_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            right: -30,
            top: -20,
            child: Container(
              height: 400,
              width: 300,
              decoration: BoxDecoration(
                  color: CoursesColors.veryLightGreen,
                  borderRadius: BorderRadius.circular(40)),
            ),
          ),
          Positioned.fill(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              child: ListView(
                padding: const EdgeInsets.only(top: 70, bottom: 50),
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                          onTap: () => Navigator.pop(context),
                          child: Icon(CupertinoIcons.back, size: 28)),
                      Text(
                        'Profile',
                        style: TextStyle(
                          color: CoursesColors.darkGreen,
                          fontSize: 19,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Icon(CupertinoIcons.search, size: 28),
                    ],
                  ),
                  const SizedBox(height: 25),
                  SizedBox(
                    height: 200,
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(23),
                          child: SizedBox(
                            height: 200,
                            width: 150,
                            child: Image.asset(
                              'assets/profile.jpeg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(width: 30),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Lynn Jāson\nSũllivǎn',
                              style: TextStyle(
                                color: CoursesColors.darkGreen,
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 15),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  '268',
                                  style: TextStyle(
                                    color: CoursesColors.darkGreen,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(width: 5),
                                Text(
                                  'Followers',
                                  style: TextStyle(
                                    color:
                                        CoursesColors.darkGreen.withOpacity(.6),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 15),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  color:
                                      CoursesColors.darkGreen.withOpacity(.2),
                                  width: 1,
                                ),
                              ),
                              padding: const EdgeInsets.all(10),
                              child: Text(
                                'Subscribed',
                                style: TextStyle(
                                  color: CoursesColors.darkGreen,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 100),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Watching Course',
                        style: TextStyle(
                          color: CoursesColors.darkGreen,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Icon(
                        CupertinoIcons.ellipsis,
                        color: Colors.grey.withOpacity(.6),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  CoursesStartedCard(
                    imagePath: 'assets/farms/farm5.png',
                    title: 'Concepts of C++',
                    date: '12 APR, 2024',
                    completed: '02:22:21',
                  ),
                  const SizedBox(height: 20),
                  CoursesStartedCard(
                    imagePath: 'assets/farms/farm2.png',
                    title: 'DSA and Algorithms',
                    date: '01 APR, 2024',
                    completed: '02:02:21',
                    isBookmarked: true,
                  ),
                  const SizedBox(height: 20),
                  CoursesStartedCard(
                    imagePath: 'assets/farms/farm3.png',
                    title: 'DSA and Algorithms',
                    date: '01 APR, 2024',
                    completed: '02:02:21',
                    isBookmarked: true,
                  ),
                  const SizedBox(height: 20),
                  CoursesStartedCard(
                    imagePath: 'assets/farms/farm4.png',
                    title: 'DSA and Algorithms',
                    date: '01 APR, 2024',
                    completed: '02:02:21',
                    isBookmarked: true,
                  ),
                  const SizedBox(height: 25),
                  Container(
                    height: 75,
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    decoration: BoxDecoration(
                      color: CoursesColors.yellow,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'All Courses',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Icon(
                          CupertinoIcons.arrow_right,
                          color: Colors.black,
                          size: 30,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:books_arena/pages/home_page.dart';
import 'package:books_arena/utils/colors.dart';
import 'package:flutter/material.dart';

class LaunchPage extends StatelessWidget {
  const LaunchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BooksArenaColors.skinColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            const SizedBox(height: 80),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'E-book',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: BooksArenaColors.darkGreenColor,
                  ),
                ),
                Text(
                  'Skip',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: BooksArenaColors.darkGreenColor,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            SizedBox(
              height: 320,
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Expanded(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets/trending/book_0.jpeg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(height: 15),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            height: 70,
                            width: double.infinity,
                            alignment: Alignment.center,
                            color: BooksArenaColors.orangeColor,
                            child: Text(
                              'Non-fiction',
                              style: TextStyle(
                                fontSize: 21,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            height: 70,
                            width: double.infinity,
                            alignment: Alignment.center,
                            color: BooksArenaColors.mediumYellowColor,
                            child: Text(
                              'Science',
                              style: TextStyle(
                                fontSize: 21,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 15),
                        Expanded(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets/trending/book_1.jpeg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // indicator
            const SizedBox(height: 20),
            Container(
              width: 90,
              padding: const EdgeInsets.symmetric(horizontal: 15),
              height: 10,
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      width: 35,
                      height: 10,
                      color: BooksArenaColors.mediumYellowColor,
                    ),
                  ),
                  const SizedBox(width: 5),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      width: 10,
                      height: 10,
                      color: BooksArenaColors.mediumYellowColor,
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            Text(
              'Let\'s read something new Today?',
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 43,
                fontWeight: FontWeight.w600,
                color: BooksArenaColors.darkGreenColor,
              ),
            ),
            const Spacer(),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement<void, void>(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => const HomePage(),
                  ),
                );
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  height: 54,
                  width: double.infinity,
                  alignment: Alignment.center,
                  color: BooksArenaColors.mediumYellowColor,
                  child: Text(
                    'Next',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 25),
          ],
        ),
      ),
    );
  }
}

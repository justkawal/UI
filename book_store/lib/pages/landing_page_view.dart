import 'package:book_store/utils/utils_colors.dart';
import 'package:book_store/widgets/all_books_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LandingPageView extends StatelessWidget {
  final Function(int) openTab;
  const LandingPageView({required this.openTab, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 28,
        right: 28,
        top: 75,
        bottom: 100,
      ),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25),
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: [
            Container(
              height: 675,
              padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/gradient.png'),
                  fit: BoxFit.fill,
                ),
                borderRadius: BorderRadius.circular(25),
              ),
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Container(
                      height: 90,
                      color: BookStoreColors.pillarBackgroundColor,
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 80,
                            child: Image.asset(
                              'images/pillar.png',
                              width: 80,
                              height: 80,
                              fit: BoxFit.contain,
                            ),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Top 50 Classic books',
                                  style: TextStyle(
                                    color: BookStoreColors.darkBrown,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'Discover the most influential books in classic literature.',
                                  style: TextStyle(
                                    color: BookStoreColors.darkBrown
                                        .withOpacity(.8),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 60),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Center(
                            child: const Text(
                              '2023 year 100 most famous Bestsellers',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Center(
                            child: const Text(
                              'List of the most famous books of the year based on customers and the number of sales.',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        GestureDetector(
                          onTap: () {
                            openTab(1);
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Container(
                              color: BookStoreColors.mediumRed,
                              padding: const EdgeInsets.symmetric(
                                horizontal: 45,
                                vertical: 10,
                              ),
                              child: const Text(
                                'View all',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  AllBooksWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:book_store/utils/utils_colors.dart';
import 'package:flutter/material.dart';

class AllBooksWidget extends StatelessWidget {
  const AllBooksWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 165,
      width: 180,
      child: Stack(
        children: [
          Positioned(
            top: 0,
            child: BookSideView(
              height: 30,
              gradientColors: [
                BookStoreColors.darkRed,
                BookStoreColors.mediumRed,
                BookStoreColors.mediumRed,
                BookStoreColors.darkRed,
              ],
            ),
          ),
          Positioned(
            top: 30,
            left: 10,
            child: BookBottomView(borderColor: BookStoreColors.darkBlueBook),
          ),
          Positioned(
            top: 70,
            left: 20,
            child: BookSideView(
              height: 45,
              gradientColors: [
                BookStoreColors.lightPurple,
                BookStoreColors.lightPurple.withOpacity(0.85),
                BookStoreColors.lightPurple.withOpacity(0.85),
                BookStoreColors.lightPurple,
              ],
              showMiddleBar: true,
            ),
          ),
          Positioned(
            top: 115,
            child: BookSideView(
              height: 30,
              gradientColors: [
                BookStoreColors.darkGreen,
                BookStoreColors.lightGreen.withOpacity(0.85),
                BookStoreColors.lightGreen.withOpacity(0.85),
                BookStoreColors.darkGreen,
              ],
            ),
          ),
          Positioned(
            top: 145,
            child: BookBottomView(borderColor: BookStoreColors.darkRed),
          ),
        ],
      ),
    );
  }
}

class BookBottomView extends StatelessWidget {
  final Color borderColor;
  const BookBottomView({required this.borderColor, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: SizedBox(
        width: 150,
        height: 40,
        child: Stack(
          children: [
            Positioned(
              right: -10,
              child: Container(
                width: 160,
                height: 40,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: borderColor,
                    width: 9,
                  ),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.grey[350]!,
                      BookStoreColors.pagesColor,
                    ],
                    stops: [
                      0.15,
                      1,
                    ],
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BookSideView extends StatelessWidget {
  final double height;
  final double middleBarHeight;
  final List<Color> gradientColors;
  final bool showMiddleBar;
  const BookSideView({
    required this.height,
    required this.gradientColors,
    this.showMiddleBar = false,
    this.middleBarHeight = 13,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Container(
        height: height,
        width: 160,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: gradientColors,
            stops: const [0.01, 0.1, 0.9, 0.98],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // first book strip
            Container(
              width: 10,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.black.withOpacity(.25),
                    Colors.black.withOpacity(.1),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
            if (showMiddleBar)
              Container(
                width: 70,
                height: middleBarHeight,
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(.22),
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            Container(
              width: 10,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.black.withOpacity(.25),
                    Colors.black.withOpacity(.1),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

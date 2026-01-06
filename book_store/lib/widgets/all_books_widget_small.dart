import 'package:book_store/utils/utils_colors.dart';
import 'package:flutter/material.dart';

class AllBooksWidgetSmall extends StatelessWidget {
  const AllBooksWidgetSmall({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 68,
      child: Stack(
        children: [
          Positioned(
            top: 0,
            child: BookSideView(
              height: 7,
              width: 40,
              gradientColors: [
                BookStoreColors.darkRed,
                BookStoreColors.mediumRed,
                BookStoreColors.mediumRed,
                BookStoreColors.darkRed,
              ],
            ),
          ),
          Positioned(
            top: 7,
            left: 2,
            child: BookBottomView(borderColor: BookStoreColors.darkBlueBook),
          ),
          Positioned(
            top: 17,
            left: 5,
            child: BookSideView(
              height: 11,
              width: 35,
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
            top: 28.2,
            child: BookSideView(
              height: 11,
              width: 35,
              gradientColors: [
                BookStoreColors.darkGreen,
                BookStoreColors.lightGreen.withOpacity(0.85),
                BookStoreColors.lightGreen.withOpacity(0.85),
                BookStoreColors.darkGreen,
              ],
            ),
          ),
          Positioned(
            top: 39,
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
        width: 40,
        height: 10,
        child: Stack(
          children: [
            Positioned(
              right: -3,
              child: Container(
                width: 40,
                height: 10,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: borderColor,
                    width: 3,
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
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
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
  final double width;
  final double middleBarHeight;
  final List<Color> gradientColors;
  final bool showMiddleBar;
  const BookSideView({
    required this.height,
    required this.width,
    required this.gradientColors,
    this.showMiddleBar = false,
    this.middleBarHeight = 2.5,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(3),
      child: Container(
        height: height,
        width: width,
        padding: const EdgeInsets.symmetric(horizontal: 6),
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
              width: 2,
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
                width: 10,
                height: middleBarHeight,
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(.22),
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            Container(
              width: 2,
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

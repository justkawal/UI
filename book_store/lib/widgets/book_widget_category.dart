import 'package:book_store/utils/utils_colors.dart';
import 'package:flutter/material.dart';

class BookWidgetCategory extends StatelessWidget {
  final double width;
  final Color bookLeftVerticalStrip;
  final Color bookBottomHorizontalStrip;
  final Color bookPagesColor;
  final bool showBookMark;
  final Widget bookCover;
  const BookWidgetCategory({
    required this.bookLeftVerticalStrip,
    required this.bookBottomHorizontalStrip,
    required this.bookPagesColor,
    required this.bookCover,
    required this.showBookMark,
    this.width = 50,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final height = ((65 / 42) * width);
    final radiusRight = (15 / 168) * width;
    final radiusLeft = (25 / 168) * width;
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(radiusRight),
        bottomRight: Radius.circular(radiusRight),
        topLeft: Radius.circular(radiusLeft),
        bottomLeft: Radius.circular(radiusLeft),
      ),
      child: SizedBox(
        width: width,
        height: height + (showBookMark ? 10 : 0),
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              width: (35 / 168) * width,
              height: (256 / 260) * height,
              child: Container(
                decoration: BoxDecoration(
                  color: bookLeftVerticalStrip,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(radiusLeft),
                    bottomLeft: Radius.circular(radiusLeft),
                  ),
                ),
              ),
            ),
            Positioned(
              top: (208 / 260) * height,
              left: 0,
              child: BookBottomStrip(
                width: width,
                bookBottomHorizontalStrip: bookBottomHorizontalStrip,
                bookPagesColor: bookPagesColor,
                showBookMark: showBookMark,
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              width: (133 / 168) * width,
              height: (208 / 260) * height,
              child: bookCover,
            ),
          ],
        ),
      ),
    );
  }
}

class BookBottomStrip extends StatelessWidget {
  final double width;
  final Color bookBottomHorizontalStrip;
  final Color bookPagesColor;
  final bool showBookMark;
  const BookBottomStrip({
    super.key,
    required this.width,
    required this.bookBottomHorizontalStrip,
    required this.bookPagesColor,
    required this.showBookMark,
  });

  @override
  Widget build(BuildContext context) {
    final height = (65 / 42) * width;
    final radiusBookBottom = (26 / 168) * width;
    return SizedBox(
      height: height,
      child: Stack(
        children: [
          Positioned(
            child: Container(
              width: ((168 + 10) / 168) * width,
              height: (52 / 260) * height,
              decoration: BoxDecoration(
                border: Border.all(
                  color: bookBottomHorizontalStrip,
                  width: (10 / 168) * width,
                ),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.grey[400]!,
                    bookPagesColor,
                  ],
                  stops: [
                    0.15,
                    1,
                  ],
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(radiusBookBottom),
                  bottomLeft: Radius.circular(radiusBookBottom),
                ),
              ),
            ),
          ),
          if (showBookMark)
            Positioned(
              top: 1,
              right: (width * 0.09655),
              child: Icon(
                Icons.bookmark_rounded,
                color: BookStoreColors.golden,
                size: width * 0.42,
              ),
            ),
        ],
      ),
    );
  }
}

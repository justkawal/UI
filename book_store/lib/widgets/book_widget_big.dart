import 'package:book_store/utils/utils_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BookWidgetBig extends StatelessWidget {
  final double width;
  final Color bookLeftVerticalStrip;
  final Color bookBottomHorizontalStrip;
  final Color bookPagesColor;
  final bool showBookMark;
  final Widget bookCover;
  const BookWidgetBig({
    required this.bookLeftVerticalStrip,
    required this.bookBottomHorizontalStrip,
    required this.bookPagesColor,
    required this.bookCover,
    required this.showBookMark,
    this.width = 50,
    super.key,
  });

  final widthFactor = 250;
  final heightFactor = 240;

  @override
  Widget build(BuildContext context) {
    final height = ((heightFactor / widthFactor) * width);
    final radiusRight = (25 / widthFactor) * width;
    final radiusLeft = (40 / widthFactor) * width;
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(radiusRight),
        bottomRight: Radius.circular(radiusRight),
        topLeft: Radius.circular(radiusLeft),
        bottomLeft: Radius.circular(radiusLeft),
      ),
      child: SizedBox(
        width: width,
        height: height + (showBookMark ? 30 : 0),
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              width: (33 / widthFactor) * width,
              height: (256 / heightFactor) * height,
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
              top: (191 / heightFactor) * height,
              left: 0,
              child: BookBottomStripBig(
                width: width,
                bookBottomHorizontalStrip: bookBottomHorizontalStrip,
                bookPagesColor: bookPagesColor,
                showBookMark: showBookMark,
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              width: (134 / widthFactor) * width,
              height: (191 / heightFactor) * height,
              child: bookCover,
            ),
          ],
        ),
      ),
    );
  }
}

class BookBottomStripBig extends StatelessWidget {
  final double width;
  final Color bookBottomHorizontalStrip;
  final Color bookPagesColor;
  final bool showBookMark;
  const BookBottomStripBig({
    super.key,
    required this.width,
    required this.bookBottomHorizontalStrip,
    required this.bookPagesColor,
    required this.showBookMark,
  });

  @override
  Widget build(BuildContext context) {
    final height = (55 / 42) * width;
    final radiusBookBottom = (26 / 168) * width;
    return SizedBox(
      height: height,
      child: Stack(
        children: [
          Positioned(
            child: Container(
              width: ((170 + 10) / 168) * width,
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
              top: 7.5,
              right: (width * 0.4055),
              child: Icon(
                CupertinoIcons.bookmark_solid,
                color: BookStoreColors.golden,
                size: width * .315,
              ),
            ),
        ],
      ),
    );
  }
}

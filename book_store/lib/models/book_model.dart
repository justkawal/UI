import 'package:book_store/utils/utils_colors.dart';
import 'package:flutter/material.dart';

class BookModel {
  final String name;
  final String author;
  final String assetPath;
  final bool bookMarked;
  final BookColorSet colorSet;
  final IconData? categoryIcon;
  final Color? iconColor;

  BookModel({
    required this.name,
    required this.author,
    required this.assetPath,
    required this.colorSet,
    this.categoryIcon,
    this.iconColor,
    this.bookMarked = false,
  });
}

class BookColorSet {
  final Color bookLeftVerticalStrip;
  final Color bookBottomHorizontalStrip;
  final Color bookPagesColor;

  const BookColorSet._({
    required this.bookLeftVerticalStrip,
    required this.bookBottomHorizontalStrip,
    required this.bookPagesColor,
  });

  static const BookColorSet lightBlue = BookColorSet._(
    bookLeftVerticalStrip: BookStoreColors.lightBlue,
    bookBottomHorizontalStrip: BookStoreColors.darkBlue,
    bookPagesColor: BookStoreColors.pagesColor,
  );

  static const BookColorSet lightGreen = BookColorSet._(
    bookLeftVerticalStrip: BookStoreColors.lightGreen,
    bookBottomHorizontalStrip: BookStoreColors.darkGreen,
    bookPagesColor: BookStoreColors.pagesColor,
  );

  static const BookColorSet lightPurple = BookColorSet._(
    bookLeftVerticalStrip: BookStoreColors.lightPurple,
    bookBottomHorizontalStrip: BookStoreColors.darkPurple,
    bookPagesColor: BookStoreColors.pagesColor,
  );

  static const BookColorSet lightRed = BookColorSet._(
    bookLeftVerticalStrip: BookStoreColors.lightRed,
    bookBottomHorizontalStrip: BookStoreColors.darkRed,
    bookPagesColor: BookStoreColors.pagesColor,
  );

  static const BookColorSet categoryRed = BookColorSet._(
    bookLeftVerticalStrip: BookStoreColors.mediumRed,
    bookBottomHorizontalStrip: BookStoreColors.darkRed,
    bookPagesColor: BookStoreColors.pagesColor,
  );

  static const BookColorSet categoryGreen = BookColorSet._(
    bookLeftVerticalStrip: BookStoreColors.mediumGreen,
    bookBottomHorizontalStrip: BookStoreColors.darkGreen,
    bookPagesColor: BookStoreColors.pagesColor,
  );

  static const BookColorSet categoryPurple = BookColorSet._(
    bookLeftVerticalStrip: BookStoreColors.darkPurple,
    bookBottomHorizontalStrip: BookStoreColors.darkPurple,
    bookPagesColor: BookStoreColors.pagesColor,
  );

  static const BookColorSet categoryBlue = BookColorSet._(
    bookLeftVerticalStrip: BookStoreColors.mediumBlue,
    bookBottomHorizontalStrip: BookStoreColors.darkBlue,
    bookPagesColor: BookStoreColors.pagesColor,
  );
}

List<BookModel> dummyEBooks = [
  dummyBooks[3],
  dummyBooks[1],
  dummyBooks[4],
  dummyBooks[5],
  dummyBooks[2],
  dummyBooks[6],
  dummyBooks[7],
  dummyBooks[8],
  dummyBooks[0],
];

List<BookModel> dummyBooks = [
  BookModel(
    name: 'Shi Loves',
    author: 'Paulo Coelho',
    assetPath: 'images/books/book9.png',
    colorSet: BookColorSet.lightBlue,
  ),
  BookModel(
    name: 'Universe of Us',
    author: 'Harley Quinn',
    assetPath: 'images/books/book2.png',
    colorSet: BookColorSet.lightPurple,
  ),
  BookModel(
    name: 'The Poetry',
    author: 'Sylvia Plath',
    assetPath: 'images/books/book3.png',
    colorSet: BookColorSet.lightGreen,
  ),
  BookModel(
    name: 'Wonders of Life',
    author: 'Stephen Turner',
    assetPath: 'images/books/book4.png',
    colorSet: BookColorSet.lightGreen,
  ),
  BookModel(
    name: 'The Alchemist',
    author: 'Paulo Coelho',
    assetPath: 'images/books/book5.png',
    colorSet: BookColorSet.lightRed,
  ),
  BookModel(
    name: 'Turn the Page',
    author: 'Tina Turner',
    assetPath: 'images/books/book6.png',
    colorSet: BookColorSet.lightBlue,
  ),
  BookModel(
    name: 'Arcadia',
    author: 'Kiera Cass',
    assetPath: 'images/books/book7.png',
    colorSet: BookColorSet.lightPurple,
  ),
  BookModel(
    name: 'Life of wifi',
    author: 'Polina Krasnova',
    assetPath: 'images/books/book8.png',
    colorSet: BookColorSet.lightGreen,
  ),
  BookModel(
    name: 'Romeo and Juliet',
    author: 'Uiara Torres',
    assetPath: 'images/books/book1.png',
    colorSet: BookColorSet.lightRed,
  ),
];

import 'package:book_store/models/book_category.dart';
import 'package:book_store/models/book_model.dart';
import 'package:book_store/pages/home_page.dart';
import 'package:book_store/utils/utils_colors.dart';
import 'package:book_store/widgets/all_books_widget_small.dart';
import 'package:book_store/widgets/book_widget_big.dart';
import 'package:book_store/widgets/book_widget_category.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BooksPageView extends StatelessWidget {
  final Function(BookModel) openPlayWithBook;
  const BooksPageView({required this.openPlayWithBook, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        ListView(
          padding: const EdgeInsets.only(left: 18, bottom: 80),
          children: [
            Header(),
            Padding(
              padding: const EdgeInsets.only(right: 18),
              child: SizedBox(
                height: 47,
                child: Row(
                  children: [
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Container(
                          color: BookStoreColors.mediumSand,
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: 'Search for books',
                                hintStyle: TextStyle(
                                  color: BookStoreColors.darkBrown,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                ),
                                border: InputBorder.none,
                                contentPadding:
                                    EdgeInsets.only(left: 25, bottom: 5)),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 15),
                    Container(
                      height: 47,
                      width: 47,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            BookStoreColors.mediumRed,
                            BookStoreColors.lightRed.withOpacity(0.8),
                          ],
                          begin: Alignment.bottomLeft,
                          end: Alignment.topRight,
                        ),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: const Icon(Icons.search_rounded,
                          color: Colors.white, size: 27),
                    ),
                  ],
                ),
              ),
            ),

            // List of books category horizontal scroll
            const SizedBox(height: 20),
            SizedBox(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: dummyBooksCategory.length,
                itemBuilder: (context, index) {
                  final book = dummyBooksCategory[index];
                  return Container(
                    width: 40,
                    margin: const EdgeInsets.only(right: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            boxShadow: book.name.toLowerCase() == 'all'
                                ? null
                                : [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.15),
                                      blurRadius: 10,
                                      offset: const Offset(.5, .5),
                                    ),
                                  ],
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: book.name.toLowerCase() == 'all'
                              ? Padding(
                                  padding: const EdgeInsets.only(bottom: 12),
                                  child: AllBooksWidgetSmall(),
                                )
                              : BookWidgetCategory(
                                  bookPagesColor: BookStoreColors.pagesColor,
                                  bookLeftVerticalStrip:
                                      book.colorSet.bookLeftVerticalStrip,
                                  bookBottomHorizontalStrip:
                                      book.colorSet.bookBottomHorizontalStrip,
                                  bookCover: Container(
                                    color: book.colorSet.bookLeftVerticalStrip
                                        .withOpacity(0.7),
                                    child: book.icon,
                                  ),
                                  showBookMark: true,
                                  width: 33,
                                ),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          book.name,
                          textAlign: TextAlign.center,
                          style: GoogleFonts.gentiumBookPlus().copyWith(
                            color: BookStoreColors.darkBrown,
                            fontWeight: FontWeight.w600,
                            fontSize: 13,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 10),
            Container(
              height: 40,
              margin: const EdgeInsets.only(right: 18),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      'Popular',
                      style: GoogleFonts.gentiumBookPlus().copyWith(
                        color: BookStoreColors.darkBrown,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(60),
                    child: Container(
                      width: 90,
                      height: 40,
                      color: BookStoreColors.veryLightSand,
                      alignment: Alignment.center,
                      child: Text(
                        'View All',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.gentiumBookPlus().copyWith(
                          color: BookStoreColors.darkBrown,
                          fontWeight: FontWeight.bold,
                          fontSize: 14.5,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 5),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(60),
                    child: Container(
                      width: 40,
                      height: 40,
                      color: BookStoreColors.veryLightSand,
                      child: Icon(
                        Icons.arrow_back_ios_rounded,
                        color: BookStoreColors.darkBrown,
                        size: 18,
                      ),
                    ),
                  ),
                  const SizedBox(width: 5),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(60),
                    child: Container(
                      width: 40,
                      height: 40,
                      color: BookStoreColors.veryLightSand,
                      child: Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: BookStoreColors.darkBrown,
                        size: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 240,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: dummyBooks.length,
                itemBuilder: (context, index) {
                  final book = dummyBooks[index];
                  return GestureDetector(
                    onTap: () {
                      openPlayWithBook(book);
                    },
                    child: Container(
                      width: 100,
                      height: 240,
                      margin: const EdgeInsets.only(right: 24),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          BookWidgetBig(
                            bookPagesColor: BookStoreColors.pagesColor,
                            bookLeftVerticalStrip:
                                book.colorSet.bookLeftVerticalStrip,
                            bookBottomHorizontalStrip:
                                book.colorSet.bookBottomHorizontalStrip,
                            bookCover: Image.asset(
                              book.assetPath,
                              fit: BoxFit.cover,
                            ),
                            showBookMark: true,
                            width: 150,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 2),
                                Text(
                                  book.name,
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.gentiumBookPlus().copyWith(
                                    color: BookStoreColors.darkBrown,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13.5,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                const SizedBox(height: 1),
                                Text(
                                  book.author,
                                  textAlign: TextAlign.left,
                                  style: GoogleFonts.gentiumBookPlus().copyWith(
                                    color: BookStoreColors.mediumRed,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 11,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 10),
            Container(
              height: 40,
              margin: const EdgeInsets.only(right: 18),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      'eBooks',
                      style: GoogleFonts.gentiumBookPlus().copyWith(
                        color: BookStoreColors.darkBrown,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(60),
                    child: Container(
                      width: 90,
                      height: 40,
                      color: BookStoreColors.veryLightSand,
                      alignment: Alignment.center,
                      child: Text(
                        'View All',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.gentiumBookPlus().copyWith(
                          color: BookStoreColors.darkBrown,
                          fontWeight: FontWeight.bold,
                          fontSize: 14.5,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 5),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(60),
                    child: Container(
                      width: 40,
                      height: 40,
                      color: BookStoreColors.veryLightSand,
                      child: Icon(
                        Icons.arrow_back_ios_rounded,
                        color: BookStoreColors.darkBrown,
                        size: 18,
                      ),
                    ),
                  ),
                  const SizedBox(width: 5),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(60),
                    child: Container(
                      width: 40,
                      height: 40,
                      color: BookStoreColors.veryLightSand,
                      child: Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: BookStoreColors.darkBrown,
                        size: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 240,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: dummyEBooks.length,
                itemBuilder: (context, index) {
                  final book = dummyEBooks[index];
                  return GestureDetector(
                    onTap: () {
                      openPlayWithBook(book);
                    },
                    child: Container(
                      width: 100,
                      height: 240,
                      margin: const EdgeInsets.only(right: 24),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          BookWidgetBig(
                            bookPagesColor: BookStoreColors.pagesColor,
                            bookLeftVerticalStrip:
                                book.colorSet.bookLeftVerticalStrip,
                            bookBottomHorizontalStrip:
                                book.colorSet.bookBottomHorizontalStrip,
                            bookCover: Image.asset(
                              book.assetPath,
                              fit: BoxFit.cover,
                            ),
                            showBookMark: true,
                            width: 150,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 2),
                                Text(
                                  book.name,
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.gentiumBookPlus().copyWith(
                                    color: BookStoreColors.darkBrown,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13.5,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                const SizedBox(height: 1),
                                Text(
                                  book.author,
                                  textAlign: TextAlign.left,
                                  style: GoogleFonts.gentiumBookPlus().copyWith(
                                    color: BookStoreColors.mediumRed,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 11,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        )
      ],
    );
  }
}

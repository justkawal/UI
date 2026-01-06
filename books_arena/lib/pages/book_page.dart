import 'package:books_arena/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BookPage extends StatelessWidget {
  final String category;
  final int index;
  final String bookName;
  final String authorName;
  final String tag;
  final bool isLiked;
  const BookPage(
      {required this.category,
      required this.bookName,
      required this.authorName,
      required this.tag,
      required this.isLiked,
      required this.index,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BooksArenaColors.skinColor,
      body: SizedBox(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 60),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      CupertinoIcons.arrow_left,
                      size: 25,
                      color: BooksArenaColors.darkGreenColor,
                    ),
                  ),
                  Text(
                    bookName,
                    style: TextStyle(
                      fontSize: 20,
                      color: BooksArenaColors.darkGreenColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Icon(
                    CupertinoIcons.share,
                    size: 25,
                    color: BooksArenaColors.darkGreenColor,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 18),
            Expanded(
              flex: 20,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: SizedBox(
                    child: Stack(
                      children: [
                        Positioned.fill(
                          child: Hero(
                            tag: tag,
                            child: Image.asset(
                              'assets/$category/book_$index.jpeg',
                              width: 350,
                              fit: BoxFit.cover,
                              filterQuality: FilterQuality.high,
                              alignment: Alignment.center,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 15,
                          right: 15,
                          child: Icon(
                            CupertinoIcons.heart_fill,
                            size: 29,
                            color: isLiked
                                ? BooksArenaColors.orangeColor
                                : BooksArenaColors.lightGreyColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 16,
              child: Container(
                margin: const EdgeInsets.only(
                    top: 18, left: 18, right: 18, bottom: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                width: double.infinity,
                padding: const EdgeInsets.only(
                    top: 20, left: 15, right: 15, bottom: 15),
                child: Column(
                  children: [
                    SizedBox(
                      height: 45,
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'A Graphic Guide to Mankind',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: BooksArenaColors.darkGreenColor,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Text(
                                  authorName,
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey.shade700,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 5),
                          Container(
                            width: 75,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade100,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(
                                  CupertinoIcons.star_fill,
                                  size: 16,
                                  color: BooksArenaColors.mediumYellowColor,
                                ),
                                Text(
                                  '4.5',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: BooksArenaColors.darkGreenColor,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 5),
                    Row(
                      children: [
                        Text(
                          '\$59.99',
                          style: TextStyle(
                            fontSize: 20,
                            color: BooksArenaColors.mediumYellowColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const Spacer(),
                        SizedBox(
                          width: 100,
                          height: 40,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                padding: const EdgeInsets.all(3),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7),
                                  border: Border.all(
                                    color: BooksArenaColors.mediumYellowColor,
                                    width: 1,
                                  ),
                                ),
                                child: Icon(
                                  CupertinoIcons.minus,
                                  size: 20,
                                  color: BooksArenaColors.darkGreenColor,
                                ),
                              ),
                              const SizedBox(width: 10),
                              Text(
                                '01',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: BooksArenaColors.darkGreenColor,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(width: 10),
                              Container(
                                padding: const EdgeInsets.all(3),
                                decoration: BoxDecoration(
                                  color: BooksArenaColors.mediumYellowColor,
                                  borderRadius: BorderRadius.circular(7),
                                ),
                                child: Icon(
                                  CupertinoIcons.add,
                                  size: 22,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                      'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. '
                      'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. '
                      'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. '
                      'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                      maxLines: 5,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.grey.shade500,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 9),
                    Container(
                      height: 55,
                      decoration: BoxDecoration(
                        color: BooksArenaColors.mediumYellowColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          'Add to Cart',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

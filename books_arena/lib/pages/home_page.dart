import 'package:books_arena/pages/book_page.dart';
import 'package:books_arena/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const dummyNames = [
  'Chloe',
  'Ella',
  'Emma',
  'Mia',
  'Noah',
  'Sophia',
  'Will',
  'James',
  'Ben',
  'Ethan',
  'Lucas',
  'Alex',
];
const booksGenere = [
  'Fiction',
  'Romance',
  'Mystery',
  'Sci-Fi',
  'Fantasy',
  'History',
  'Autobiography',
  'Self-Help',
  'Health',
  'Thriller',
  'Cooking',
  'Horror',
  'Travel',
];

const bookName = [
  'Apollo',
  'Pluto',
  'SpaceX',
  'Mission',
  'NASA',
  'Milo',
  'Rex',
];
final trendingBooks =
    List.generate(5, (index) => 'assets/trending/book_$index.jpeg');

final newlyAddedBooks =
    List.generate(6, (index) => 'assets/newly_added/book_$index.jpeg');

final mostLikedBooks =
    List.generate(7, (index) => 'assets/most_liked/book_$index.jpeg');

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  int likedIndex = 0;
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BooksArenaColors.skinColor,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Positioned.fill(
              child: SizedBox(
                height: double.infinity,
                width: double.infinity,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(height: 55),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.apps_rounded,
                              size: 32,
                            ),
                            const SizedBox(width: 4),
                            Container(
                              width: MediaQuery.of(context).size.width * .57,
                              margin: const EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(36),
                                border: Border.all(color: Colors.grey.shade300),
                              ),
                              child: const TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Search here...',
                                  hintStyle: TextStyle(
                                    fontSize: 16,
                                    color: Colors.grey,
                                  ),
                                  prefixIcon:
                                      Icon(Icons.search, color: Colors.grey),
                                  suffixIcon:
                                      Icon(Icons.mic, color: Colors.grey),
                                ),
                              ),
                            ),
                            const SizedBox(width: 2),
                            Icon(
                              Icons.notifications_rounded,
                              size: 28,
                            ),
                            const SizedBox(width: 4),
                            Icon(
                              Icons.shopping_bag_rounded,
                              size: 28,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        width: double.infinity,
                        height: 180,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        margin: const EdgeInsets.symmetric(horizontal: 15),
                        child: Column(
                          children: [
                            heading('Top Authors'),
                            Divider(
                              color: Colors.grey.shade300,
                              thickness: 1.4,
                              height: 0,
                              indent: 18,
                              endIndent: 18,
                            ),
                            const SizedBox(height: 20),
                            SizedBox(
                              height: 80,
                              width: double.infinity,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: 20,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.only(left: 18),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          child: SizedBox(
                                            height: 55,
                                            width: 55,
                                            child: Image.asset(
                                              'assets/profile/profile_${(index % 5) + 1}.jpeg',
                                              fit: BoxFit.cover,
                                              filterQuality: FilterQuality.high,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(height: 5),
                                        Text(
                                          dummyNames[index % dummyNames.length],
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                            color:
                                                BooksArenaColors.darkGreenColor,
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                        height: 35,
                        width: double.infinity,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          padding: const EdgeInsets.only(left: 15),
                          itemCount: booksGenere.length,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () =>
                                  setState(() => _currentIndex = index),
                              child: Padding(
                                padding: const EdgeInsets.only(right: 15),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(7),
                                  child: Container(
                                    height: 35,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 15),
                                    color: _currentIndex == index
                                        ? BooksArenaColors.orangeColor
                                        : Colors.white,
                                    alignment: Alignment.center,
                                    child: Text(
                                      booksGenere[index],
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: _currentIndex == index
                                            ? Colors.white
                                            : BooksArenaColors.darkGreenColor,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      const SizedBox(height: 20),
                      booksList('Top Trending', trendingBooks, 'trending'),
                      const SizedBox(height: 20),
                      booksList('Newly Added', newlyAddedBooks, 'newly_added'),
                      const SizedBox(height: 20),
                      booksList('Most Liked', mostLikedBooks, 'most_liked'),
                      const SizedBox(height: 100),
                    ],
                  ),
                ),
              ),
            ),

            // Bottomg Navigation Bar
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 80,
                width: double.infinity,
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade300,
                      blurRadius: 10,
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    getNavigationBottomButton(
                      index: 0,
                      icon: Icons.home,
                      title: 'Home',
                    ),
                    getNavigationBottomButton(
                      index: 1,
                      icon: CupertinoIcons.compass,
                      title: 'Nav',
                    ),
                    getNavigationBottomButton(
                      index: 2,
                      icon: Icons.bookmark_outline_rounded,
                      title: 'Fav',
                    ),
                    getNavigationBottomButton(
                      index: 3,
                      icon: CupertinoIcons.person,
                      title: 'Profile',
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

  Widget booksList(String title, List<String> books, String category) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 15),
      height: 312,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.white,
            BooksArenaColors.skinColor,
          ],
          stops: const [0.5, 1],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.white, width: 1.1),
      ),
      child: Column(
        children: [
          heading(title),
          Expanded(
            child: SizedBox(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(left: 18),
                itemCount: 20,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) => BookPage(
                            bookName: bookName[index % bookName.length],
                            authorName: 'Henery Ford',
                            category: category,
                            isLiked: likedIndex == index,
                            tag: 'book/$category/$index',
                            index: index % books.length,
                          ),
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: Container(
                        height: double.infinity,
                        width: 130,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey.shade300),
                        ),
                        padding: const EdgeInsets.all(7),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              height: 165,
                              width: 120,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(9),
                                child: Stack(
                                  children: [
                                    Positioned.fill(
                                      child: Hero(
                                        tag: 'book/$category/$index',
                                        child: Image.asset(
                                          books[index % books.length],
                                          height: 165,
                                          width: 120,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      right: 5,
                                      top: 5,
                                      child: GestureDetector(
                                        onTap: () =>
                                            setState(() => likedIndex = index),
                                        child: Icon(CupertinoIcons.heart_fill,
                                            size: 25,
                                            color: likedIndex == index
                                                ? BooksArenaColors.orangeColor
                                                : BooksArenaColors
                                                    .lightGreyColor),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(height: 5),
                            Row(
                              children: [
                                Text(
                                  'Henery Ford',
                                  style: TextStyle(
                                    fontSize: 9,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.grey.shade500,
                                  ),
                                ),
                                const Spacer(),
                                Icon(
                                  Icons.star,
                                  size: 14,
                                  color: BooksArenaColors.mediumYellowColor,
                                ),
                                Text(
                                  '4.5',
                                  style: TextStyle(
                                    fontSize: 9,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.grey.shade500,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  bookName[index % bookName.length],
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                                const Spacer(),
                                Text(
                                  '\$12.99',
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  Container heading(String title) {
    return Container(
      height: 50,
      width: double.infinity,
      margin: const EdgeInsets.only(top: 10, left: 18, right: 18, bottom: 9),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: BooksArenaColors.darkGreenColor,
            ),
          ),
          Container(
            height: 35,
            width: 80,
            decoration: BoxDecoration(
              color: BooksArenaColors.lightGreyColor,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'See all',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: BooksArenaColors.darkGreenColor,
                  ),
                ),
                Icon(
                  CupertinoIcons.right_chevron,
                  size: 13,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget getNavigationBottomButton({
    required int index,
    required IconData icon,
    required String title,
  }) {
    final isSelected = pageIndex == index;
    return GestureDetector(
      onTap: () {
        setState(() {
          pageIndex = index;
        });
      },
      child: Container(
        key: ValueKey(index),
        height: 60,
        width: isSelected ? 100 : 60,
        decoration: BoxDecoration(
          color: isSelected ? BooksArenaColors.skinColor : null,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: isSelected ? BooksArenaColors.orangeColor : null,
              size: 24,
            ),
            if (isSelected) ...[
              Container(width: 8),
              Text(
                title,
                style: TextStyle(
                  color: BooksArenaColors.orangeColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ]
          ],
        ),
      ),
    );
  }
}

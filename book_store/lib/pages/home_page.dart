import 'package:book_store/models/book_model.dart';
import 'package:book_store/pages/books_page_view.dart';
import 'package:book_store/pages/landing_page_view.dart';
import 'package:book_store/pages/play_page_view.dart';
import 'package:book_store/pages/settings_page_view.dart';
import 'package:book_store/utils/utils_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int tabIndex = 0;

  BookModel book = dummyBooks[1];

  void openTab(int index) {
    setState(() {
      tabIndex = index;
      _tabController.animateTo(tabIndex);
    });
  }

  void openPlayWithBook(BookModel book) {
    setState(() {
      this.book = book;
    });
    openTab(3);
  }

  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(initialIndex: tabIndex, vsync: this, length: 5);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BookStoreColors.lightSand,
      body: Stack(
        children: [
          Positioned.fill(
            child: TabBarView(
              controller: _tabController,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                LandingPageView(
                  openTab: openTab,
                ),
                BooksPageView(
                  openPlayWithBook: openPlayWithBook,
                ),
                Container(),
                PlayPageView(book: book),
                SettingsPageView(
                  openTab: openTab,
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            width: MediaQuery.of(context).size.width,
            height: 70,
            child: Container(
              color: BookStoreColors.veryLightSand,
              padding: const EdgeInsets.only(bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        tabIndex = 0;
                        _tabController.animateTo(tabIndex);
                      });
                    },
                    child: Icon(
                      CupertinoIcons.home,
                      color: tabIndex == 0
                          ? BookStoreColors.golden
                          : BookStoreColors.darkBrown.withOpacity(0.5),
                      size: 25,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        tabIndex = 1;
                        _tabController.animateTo(tabIndex);
                      });
                    },
                    child: Icon(
                      CupertinoIcons.book,
                      color: tabIndex == 1
                          ? BookStoreColors.golden
                          : BookStoreColors.darkBrown.withOpacity(0.5),
                      size: 25,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        tabIndex = 2;
                        _tabController.animateTo(tabIndex);
                      });
                    },
                    child: Icon(
                      CupertinoIcons.heart,
                      color: tabIndex == 2
                          ? BookStoreColors.golden
                          : BookStoreColors.darkBrown.withOpacity(0.5),
                      size: 25,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        tabIndex = 3;
                        _tabController.animateTo(tabIndex);
                      });
                    },
                    child: Icon(
                      CupertinoIcons.play_arrow_solid,
                      color: tabIndex == 3
                          ? BookStoreColors.golden
                          : BookStoreColors.darkBrown.withOpacity(0.5),
                      size: 25,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        tabIndex = 4;
                        _tabController.animateTo(tabIndex);
                      });
                    },
                    child: Icon(
                      CupertinoIcons.settings_solid,
                      color: tabIndex == 4
                          ? BookStoreColors.golden
                          : BookStoreColors.darkBrown.withOpacity(0.5),
                      size: 25,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 60),
        Padding(
          padding: const EdgeInsets.only(right: 18),
          child: SizedBox(
            height: 50,
            child: Row(
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Container(
                          height: 50,
                          width: 50,
                          color: Colors.white,
                          padding: const EdgeInsets.all(5),
                          child: Image.asset(
                            'images/profile.png',
                            width: 35,
                            height: 35,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Text(
                        'Hi, Natalie!',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.gentiumBookPlus().copyWith(
                          color: BookStoreColors.darkBrown,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Container(
                    height: 50,
                    width: 50,
                    color: Colors.white,
                    padding: const EdgeInsets.all(5),
                    child: Icon(Icons.shopping_cart_rounded,
                        color: BookStoreColors.darkBrown, size: 24),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}

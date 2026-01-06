import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mingle/pages/tabs/feed_tab.dart';

class TabbedPage extends StatefulWidget {
  const TabbedPage({Key? key}) : super(key: key);

  @override
  _TabbedPageState createState() => _TabbedPageState();
}

class _TabbedPageState extends State<TabbedPage> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Stack(
        children: [
          Positioned.fill(
            child: IndexedStack(
              children: [
                FeedTab(),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 110,
              padding: const EdgeInsets.only(bottom: 12),
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    behavior: HitTestBehavior.translucent,
                    onTap: () {
                      setState(() {
                        _selectedIndex = 0;
                      });
                    },
                    child: SizedBox(
                      height: 50,
                      width: 50,
                      child: Icon(CupertinoIcons.home,
                          size: 27,
                          color: _selectedIndex == 0
                              ? Colors.black
                              : Colors.grey.shade400),
                    ),
                  ),
                  GestureDetector(
                    behavior: HitTestBehavior.translucent,
                    onTap: () {
                      setState(() {
                        _selectedIndex = 1;
                      });
                    },
                    child: SizedBox(
                      height: 50,
                      width: 50,
                      child: Icon(CupertinoIcons.cart,
                          size: 27,
                          color: _selectedIndex == 1
                              ? Colors.black
                              : Colors.grey.shade400),
                    ),
                  ),
                  Container(
                    height: 70,
                    width: 70,
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    padding: const EdgeInsets.only(top: 6),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(Icons.diamond_rounded, size: 38),
                  ),
                  GestureDetector(
                    behavior: HitTestBehavior.translucent,
                    onTap: () {
                      setState(() {
                        _selectedIndex = 2;
                      });
                    },
                    child: SizedBox(
                      height: 50,
                      width: 50,
                      // chat icon
                      child: Icon(CupertinoIcons.chat_bubble_text,
                          size: 27,
                          color: _selectedIndex == 2
                              ? Colors.black
                              : Colors.grey.shade400),
                    ),
                  ),
                  GestureDetector(
                    behavior: HitTestBehavior.translucent,
                    onTap: () {
                      setState(() {
                        _selectedIndex = 3;
                      });
                    },
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                          width: 1.5,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          'assets/artist_0.png',
                          fit: BoxFit.cover,
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
    );
  }
}

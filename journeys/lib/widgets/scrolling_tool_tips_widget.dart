import 'package:flutter/material.dart';

class ScrollingToolTipsWidget extends StatefulWidget {
  const ScrollingToolTipsWidget({Key? key}) : super(key: key);

  @override
  State<ScrollingToolTipsWidget> createState() =>
      _ScrollingToolTipsWidgetState();
}

class _ScrollingToolTipsWidgetState extends State<ScrollingToolTipsWidget> {
  int selectedIndex = 0;
  final List<String> categories = [
    'All',
    'Nature',
    'Mountains',
    'Beaches',
    'Cities',
    'Countryside',
    'Deserts',
    'Forests',
    'Islands',
    'Lakes',
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.builder(
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.only(left: 20),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 15),
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 250),
                decoration: BoxDecoration(
                  color: selectedIndex == index
                      ? Colors.black
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(40),
                  border: Border.all(
                    color: selectedIndex == index
                        ? Colors.transparent
                        : Colors.grey.withOpacity(.7),
                    width: 1,
                  ),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 28),
                alignment: Alignment.center,
                child: Text(
                  categories[index],
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: selectedIndex == index
                        ? FontWeight.w400
                        : FontWeight.w300,
                    color: selectedIndex == index ? Colors.white : Colors.black,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

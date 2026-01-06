import 'package:flutter/material.dart';
import 'package:travel/utils/colors.dart';
import 'package:travel/widgets/frosted_widget.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  const BottomNavigationBarWidget({super.key});

  @override
  State<BottomNavigationBarWidget> createState() =>
      _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  int _selectedIndex = 0;
  static final List<IconData> _icons = [
    Icons.home_rounded,
    Icons.search_rounded,
    Icons.favorite_rounded,
    Icons.person_rounded,
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 92,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(60),
        child: FrostedWidget(
          color: TravelColors.darkBrown.withOpacity(.8),
          child: Padding(
            padding: const EdgeInsets.all(5),
            child: Stack(
              children: [
                AnimatedPositioned(
                    duration: Duration(milliseconds: 120),
                    curve: Curves.easeIn,
                    left: _selectedIndex * 80,
                    top: 0,
                    child: Container(
                      height: 82,
                      width: 82,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                      ),
                    )),
                Positioned.fill(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      for (int index = 0; index < 4; index++)
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                _selectedIndex = index;
                              });
                            },
                            behavior: HitTestBehavior.translucent,
                            child: Center(
                              child: Icon(
                                _icons[index],
                                size: 30,
                                color: _selectedIndex == index
                                    ? Colors.black
                                    : Colors.white,
                              ),
                            ),
                          ),
                        )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:porsche/utilities/colors.dart';
import 'package:porsche/widgets/extended_border_widget.dart';

typedef OnTap = void Function(int index);

final _tabs = [
  CupertinoIcons.home,
  CupertinoIcons.heart_fill,
  CupertinoIcons.tag_fill,
  CupertinoIcons.person_fill,
];

class BottomNavigationBarWidget extends StatelessWidget {
  final int selectedTabIndex;
  final OnTap onTap;

  const BottomNavigationBarWidget({
    super.key,
    required this.selectedTabIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final gap = MediaQuery.of(context).size.width / 2 - 100;
    return Positioned(
      bottom: 0,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 144,
        padding: EdgeInsets.only(left: gap, bottom: 24, top: 64, right: gap),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              PorscheColors.skinColor.withOpacity(0),
              PorscheColors.skinColor.withOpacity(.9),
              PorscheColors.skinColor
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SizedBox(
          width: 200,
          height: 56,
          child: ExtendedBorderWidget(
            padding: const EdgeInsets.all(0),
            borderRadius: BorderRadius.circular(27.5),
            isSelected: true,
            selectedColor: PorscheColors.skinColor,
            offset: const Offset(3, 3),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int index = 0; index <= 3; index++)
                  GestureDetector(
                    onTap: () => onTap(index),
                    child: Container(
                      width: 46,
                      height: 46,
                      margin: const EdgeInsets.symmetric(horizontal: .8),
                      child: ExtendedBorderWidget(
                        padding: const EdgeInsets.all(5),
                        borderRadius: BorderRadius.circular(25),
                        isSelected: selectedTabIndex == index,
                        selectedColor: PorscheColors.veryLightGreen,
                        offset: const Offset(0, 0),
                        child: Icon(_tabs[index],
                            color: PorscheColors.verydarkGreen, size: 18),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

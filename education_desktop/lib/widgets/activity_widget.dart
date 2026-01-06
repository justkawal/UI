import 'package:education_desktop/utils/colors.dart';
import 'package:education_desktop/widgets/arrow_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ActivityWidget extends StatelessWidget {
  final Color color;
  final Color darkColor;
  final String text;
  final String rating;
  const ActivityWidget({
    required this.darkColor,
    required this.rating,
    required this.text,
    required this.color,
    super.key,
  });

  static final List<String> assets = [
    'assets/profile_1.jpeg',
    'assets/profile_2.jpeg',
    'assets/profile_3.jpeg',
    'assets/profile_4.jpeg',
    'assets/profile_5.jpeg',
    'assets/profile_6.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    assets.shuffle();
    return Container(
      height: 150,
      width: 260,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(34),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15, bottom: 18),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 30,
                  width: 110,
                  child: Stack(
                    children: [
                      for (int index = 0; index < 4; index++)
                        Positioned(
                          left: index * 17.5,
                          child: Container(
                            height: 28,
                            width: 28,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                border: Border.all(color: color, width: 1.7)),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(25),
                              child: Image.asset(
                                assets[index],
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      Positioned(
                        left: 4 * 17.5,
                        child: Container(
                          height: 28,
                          width: 28,
                          decoration: BoxDecoration(
                              color: darkColor,
                              borderRadius: BorderRadius.circular(25),
                              border: Border.all(color: color, width: 1.7)),
                          alignment: Alignment.center,
                          child: Text(
                            '+6',
                            style: TextStyle(
                                color: EducationColors.darkColor,
                                fontSize: 10,
                                letterSpacing: -.58,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  text,
                  style: TextStyle(
                    color: EducationColors.darkColor,
                    fontSize: 23,
                    letterSpacing: -.5,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 18, bottom: 13, right: 13),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  height: 20,
                  width: 44,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        CupertinoIcons.star_fill,
                        color: EducationColors.yellowColor,
                        size: 13,
                      ),
                      const SizedBox(width: 3),
                      Text(
                        rating,
                        style: TextStyle(
                            color: EducationColors.darkColor,
                            fontSize: 10.5,
                            letterSpacing: -.5,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
                ArrowWidget(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:databest/utilities/colors.dart';
import 'package:flutter/material.dart';

class LectureAdvertisementWidget extends StatelessWidget {
  const LectureAdvertisementWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: DatabestColors.lightGrey3,
      ),
      child: Stack(
        children: [
          Container(
            width: 170,
            margin: const EdgeInsets.only(left: 25, top: 25, bottom: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 30,
                  width: 85,
                  decoration: BoxDecoration(
                    color: DatabestColors.darkBlue,
                    borderRadius: BorderRadius.circular(7),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    'LECTURE',
                    style: TextStyle(
                      color: Colors.white.withOpacity(.8),
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: Text(
                    'B2B SALES TECHNIQUES',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        color: Colors.black.withOpacity(.9),
                        fontSize: 22,
                        fontWeight: FontWeight.w800,
                        height: 1.3),
                  ),
                ),
                Text(
                  '07.04.2023',
                  style: TextStyle(
                    color: Colors.grey.shade600.withOpacity(.85),
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          Positioned(
            right: 10,
            child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: SizedBox(
                width: 180,
                child: Image.asset(
                  'assets/picture1.png',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:databest/utilities/colors.dart';
import 'package:flutter/material.dart';

class BusinessJoinedCountWidget extends StatelessWidget {
  const BusinessJoinedCountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      margin: const EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade100.withOpacity(.2),
            blurRadius: 15,
            spreadRadius: 5,
          ),
        ],
      ),
      padding: const EdgeInsets.only(left: 25, right: 25, bottom: 25, top: 17),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 65,
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          '500',
                          style: TextStyle(
                            color: DatabestColors.darkBlue,
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            letterSpacing: -.6,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          '+',
                          style: TextStyle(
                            color: DatabestColors.darkBlue,
                            fontSize: 33,
                            fontWeight: FontWeight.bold,
                            letterSpacing: -.6,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Text(
                'businesses already joined us!',
                style: TextStyle(
                  color: Colors.grey.shade400,
                  fontSize: 14,
                  fontWeight: FontWeight.w800,
                  letterSpacing: -.6,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 40,
            child: Stack(
              children: [
                for (int i = 0; i < 3; i++)
                  Positioned(
                    right: (i * 24) + 32,
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: DatabestColors.lightGrey3,
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(
                          color: Colors.white,
                          width: 1.9,
                        ),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image.asset(
                          'assets/profiles/profile_${i + 1}.jpeg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:education_desktop/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      padding: const EdgeInsets.only(left: 25, right: 30),
      alignment: Alignment.centerLeft,
      child: Row(
        children: [
          Text(
            'Welcome back 👋',
            style: TextStyle(
              color: EducationColors.darkColor,
              fontSize: 50,
              fontWeight: FontWeight.w500,
            ),
          ),
          const Spacer(),
          Container(
            height: 50,
            width: 380,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search something',
                hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                    fontWeight: FontWeight.w400),
                prefixIcon: Icon(
                  CupertinoIcons.search,
                  color: Colors.black54,
                  size: 22,
                ),
                contentPadding:
                    const EdgeInsets.only(left: 5, top: 10, bottom: 10),
                border: InputBorder.none,
              ),
            ),
          ),
          const SizedBox(width: 20),
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.asset(
                'assets/profile_4.jpeg',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

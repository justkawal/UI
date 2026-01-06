import 'package:databest/utilities/colors.dart';
import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Container(
                  height: 55,
                  width: 55,
                  color: DatabestColors.lightBlue,
                  child: Image.asset('assets/profiles/profile_3.jpeg',
                      fit: BoxFit.cover),
                ),
              ),
              const SizedBox(width: 10),
              Text(
                'Ella Simpson',
                style: TextStyle(
                  color: DatabestColors.darkBlue,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  letterSpacing: -.6,
                ),
              ),
            ],
          ),
          Icon(
            Icons.more_vert_rounded,
            color: DatabestColors.darkBlue,
            size: 30,
          ),
        ],
      ),
    );
  }
}

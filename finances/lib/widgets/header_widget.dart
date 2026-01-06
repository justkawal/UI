import 'package:finances/utils/finances_colors.dart';
import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: const EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 46,
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 2,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: FinancesColors.purple,
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                Container(
                  height: 2,
                  width: 32,
                  decoration: BoxDecoration(
                    color: FinancesColors.purple,
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                Container(
                  height: 2,
                  width: 18,
                  decoration: BoxDecoration(
                    color: FinancesColors.purple,
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  FinancesColors.orange.withOpacity(.6),
                  FinancesColors.orange,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                'assets/profile_3.jpeg',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

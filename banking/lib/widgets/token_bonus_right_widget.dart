import 'package:banking/utils/banking_colors.dart';
import 'package:flutter/material.dart';

class TokenBonusRightWidget extends StatelessWidget {
  const TokenBonusRightWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Container(
            height: 130,
            width: double.infinity,
            decoration: BoxDecoration(
              color: BankingColors.yellow,
              borderRadius: BorderRadius.circular(15),
            ),
            padding:
                const EdgeInsets.only(top: 15, left: 15, right: 15, bottom: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.local_play,
                  size: 25,
                  color: Colors.white,
                ),
                const Spacer(),
                Text(
                  'Bonus received',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  '\$103.22',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 18),
          Container(
            height: 130,
            width: double.infinity,
            decoration: BoxDecoration(
              color: BankingColors.lightGreen,
              borderRadius: BorderRadius.circular(15),
            ),
            padding:
                const EdgeInsets.only(top: 15, left: 15, right: 15, bottom: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.loyalty_rounded,
                  size: 25,
                  color: Colors.white,
                ),
                const Spacer(),
                Text(
                  'Loyalty Points',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  '1323pts',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Container(
            height: 60,
            width: double.infinity,
            decoration: BoxDecoration(
              color: BankingColors.veryLightGreen,
              borderRadius: BorderRadius.circular(15),
            ),
            alignment: Alignment.center,
            child: Text(
              'Borrow Tokens',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 17,
                color: BankingColors.darkGreen,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

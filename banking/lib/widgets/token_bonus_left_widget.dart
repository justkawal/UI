import 'package:banking/utils/banking_colors.dart';
import 'package:flutter/material.dart';

class TokenBonusLeftWidget extends StatelessWidget {
  const TokenBonusLeftWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Container(
            height: 278,
            padding:
                const EdgeInsets.only(top: 40, left: 10, right: 10, bottom: 25),
            width: double.infinity,
            decoration: BoxDecoration(
              color: BankingColors.darkRed,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 100,
                  width: 100,
                  child: Stack(
                    children: [
                      Positioned.fill(
                        child: CircularProgressIndicator(
                          value: 31 / 100,
                          backgroundColor: BankingColors.lightRed,
                          color: BankingColors.veryLightRed,
                          valueColor: AlwaysStoppedAnimation<Color>(
                            BankingColors.yellow,
                          ),
                          strokeWidth: 12,
                          strokeCap: StrokeCap.round,
                        ),
                      ),
                      Center(
                        child: Text(
                          '31%',
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 25),
                Text(
                  'Tokens bought\nfor 13%',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const Spacer(),
                Text(
                  '900 TYI',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 23,
                    color: BankingColors.yellow,
                    fontWeight: FontWeight.w800,
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
              color: BankingColors.veryLightRed,
              borderRadius: BorderRadius.circular(15),
            ),
            alignment: Alignment.center,
            child: Text(
              'Get Tokens',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 17,
                color: BankingColors.darkRed,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

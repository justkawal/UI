import 'package:banking/utils/banking_colors.dart';
import 'package:flutter/material.dart';

class PositionsAndCashWidget extends StatelessWidget {
  const PositionsAndCashWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ['Positions', '\$3723.23'],
        ['Cash', '\$124.23'],
      ].map((row) {
        return Expanded(
          child: Container(
            height: 97,
            margin: row[0] == 'Positions'
                ? const EdgeInsets.only(right: 10)
                : const EdgeInsets.only(left: 10),
            decoration: BoxDecoration(
              color: BankingColors.veryLightGrey,
              borderRadius: BorderRadius.circular(13),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 19),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      row[0],
                      style: TextStyle(
                        fontSize: 15,
                        color: BankingColors.darkBlueGrey,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const Spacer(),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                      color: Colors.grey.shade500,
                    ),
                  ],
                ),
                const Spacer(),
                Text(
                  row[1],
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        );
      }).toList(),
    );
  }
}

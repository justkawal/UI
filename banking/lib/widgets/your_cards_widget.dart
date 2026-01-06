import 'package:banking/utils/banking_colors.dart';
import 'package:flutter/material.dart';

class YourCardsWidget extends StatelessWidget {
  const YourCardsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(14),
      child: Container(
        height: 210,
        width: MediaQuery.of(context).size.width / 2 - 35,
        decoration: BoxDecoration(color: BankingColors.darkRed),
        child: Stack(
          children: [
            Positioned.fill(
              child: Container(
                margin: const EdgeInsets.only(bottom: 25, top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 17, right: 15),
                      child: Row(
                        children: [
                          Text(
                            'Your Cards',
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const Spacer(),
                          Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: Colors.white,
                            size: 20,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 6),
                    SizedBox(
                      height: 135,
                      child: ListView.builder(
                        itemCount: 4,
                        padding:
                            const EdgeInsets.only(left: 17, top: 2, bottom: 2),
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Container(
                            height: 135,
                            width: 90,
                            padding: const EdgeInsets.only(
                                left: 10, right: 10, top: 10, bottom: 7),
                            decoration: BoxDecoration(
                              color: index.isOdd
                                  ? Colors.black
                                  : BankingColors.yellow,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            margin: const EdgeInsets.only(right: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '* * * *  1234',
                                  style: TextStyle(
                                    fontSize: 7,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                const SizedBox(height: 25),
                                Text(
                                  '2500 USD',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 9,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const Spacer(),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.asset(
                                      'assets/mastercard.png',
                                      height: 15,
                                      width: 15,
                                    ),
                                    Text(
                                      'Visa',
                                      style: TextStyle(
                                        fontSize: 13,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

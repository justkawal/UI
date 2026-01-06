import 'dart:math';
import 'package:blobs/blobs.dart';
import 'package:finances/utils/finances_colors.dart';
import 'package:flutter/material.dart';

class TotalBalanceCardWidget extends StatelessWidget {
  const TotalBalanceCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(40),
        child: Container(
          height: 210,
          width: double.infinity,
          color: FinancesColors.lightPurple,
          child: Stack(
            children: [
              Positioned(
                left: -60,
                top: -60,
                child: Transform.rotate(
                  angle: pi * 2.2,
                  child: Container(
                    height: 190,
                    width: 190,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          FinancesColors.orange,
                          FinancesColors.orange.withOpacity(.2),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    padding: const EdgeInsets.all(40),
                    child: Container(
                      decoration: BoxDecoration(
                        color: FinancesColors.lightPurple,
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                right: -130,
                bottom: -150,
                child: Blob.random(
                  size: 300,
                  edgesCount: 5,
                  styles: BlobStyles(
                    gradient: LinearGradient(
                      colors: [
                        FinancesColors.purple.withOpacity(.5),
                        FinancesColors.lightPurple.withOpacity(.005),
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ).createShader(Rect.fromLTRB(0, 0, 300, 300)),
                    fillType: BlobFillType.stroke,
                    strokeWidth: 30,
                  ),
                ),
              ),
              Positioned.fill(
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Total Balance',
                            style: TextStyle(
                              fontSize: 16,
                              color: FinancesColors.white,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            '\$41,399.30',
                            style: TextStyle(
                              fontSize: 36,
                              color: FinancesColors.white,
                              fontWeight: FontWeight.bold,
                              letterSpacing: -1.4,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'My Wallet',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const SizedBox(width: 10),
                          Container(
                            height: 35,
                            width: 35,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Icon(
                              Icons.arrow_forward_rounded,
                              size: 20,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

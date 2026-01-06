import 'package:banking/models/transaction_model.dart';
import 'package:banking/utils/banking_colors.dart';
import 'package:banking/widgets/chart.dart';
import 'package:banking/widgets/header_widget.dart';
import 'package:banking/widgets/icon_holder_widget.dart';
import 'package:banking/widgets/profile_widget.dart';
import 'package:banking/widgets/transaction_details_tile_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedChart = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 25, right: 25, bottom: 100),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 60),
              Header(
                heading: 'Welcome, ',
                subHeading: 'John!',
              ),
              const SizedBox(height: 16),
              Container(
                decoration: BoxDecoration(
                  color: BankingColors.lightGreen,
                  borderRadius: BorderRadius.circular(16),
                ),
                padding: const EdgeInsets.only(
                    left: 20, right: 29, top: 15, bottom: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Savings',
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 25),
                    LineChartSample(
                      lineColor: Colors.white,
                      gradientColors: [
                        Colors.white.withOpacity(0.6),
                        Colors.white.withOpacity(0.0),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              showPagerDots(),
              const SizedBox(height: 25),
              Text(
                'Total Balance',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                '\$ 16,033.44',
                style: TextStyle(
                  fontSize: 33,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                'Transactions',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 10),
              showTransactionProfilePhotos(),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Transaction history',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Icon(Icons.arrow_forward_ios_rounded, size: 17),
                ],
              ),
              const SizedBox(height: 10),
              ...TransactionModel.dummyData.map((TransactionModel transaction) {
                return TransactionDetailsTile(transaction: transaction);
              })
            ],
          ),
        ),
      ),
    );
  }

  Widget showTransactionProfilePhotos() {
    return SizedBox(
      height: 60,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          for (int index = 1; index < 4; index++)
            ProfileWidget(
              assetPath: 'assets/profile/profile_${index + 1}.jpeg',
              isOnline: index.isOdd,
            ),
          ProfileWidget(
            assetPath: 'assets/profile/profile_5.jpeg',
            showCount: true,
            count: '7',
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(40),
            child: Container(
              width: 60,
              height: 60,
              color: Colors.grey.shade300.withOpacity(0.7),
              child: Icon(Icons.more_horiz_rounded, size: 27),
            ),
          ),
        ],
      ),
    );
  }

  Widget showPagerDots() {
    selectedChart = selectedChart.clamp(0, 2);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconHolder(
          iconData: CupertinoIcons.chart_bar_alt_fill,
          iconColor: BankingColors.darkRed,
          side: 50,
          backgroundColor: BankingColors.veryLightRed,
          iconSize: 23,
          radius: 13,
        ),
        SizedBox(
          height: 20,
          width: 75,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              for (int index = 0; index < 3; index++)
                AnimatedContainer(
                  duration: const Duration(milliseconds: 500),
                  width: 20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        color: selectedChart == index
                            ? BankingColors.lightGreen
                            : Colors.transparent),
                  ),
                  padding: selectedChart == index
                      ? const EdgeInsets.all(4)
                      : const EdgeInsets.all(3),
                  child: Container(
                    decoration: BoxDecoration(
                      color: selectedChart == index
                          ? BankingColors.lightGreen
                          : BankingColors.lightGrey,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
            ],
          ),
        ),
        IconHolder(
          iconData: Icons.copy_rounded,
          iconColor: BankingColors.lightGreen,
          side: 50,
          backgroundColor: BankingColors.veryLightGreen,
          iconSize: 23,
          radius: 13,
        ),
      ],
    );
  }
}

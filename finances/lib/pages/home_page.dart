import 'package:finances/utils/finances_colors.dart';
import 'package:finances/widgets/header_widget.dart';
import 'package:finances/widgets/savings_card_widget.dart';
import 'package:finances/widgets/total_balance_card_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: const EdgeInsets.only(top: 65, bottom: 40),
        children: [
          HeaderWidget(),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              'Hi, Ella',
              style: TextStyle(
                fontSize: 40,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 4),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              'Welcome Back!',
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          const SizedBox(height: 30),
          TotalBalanceCardWidget(),
          const SizedBox(height: 30),
          SizedBox(
            height: 90,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 25,
              padding: const EdgeInsets.only(left: 25),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Container(
                    height: 90,
                    width: 90,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: FinancesColors.veryLightYellow,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    padding: const EdgeInsets.all(8),
                    child: Container(
                      decoration: BoxDecoration(
                        color: FinancesColors.veryLightYellow,
                        borderRadius: BorderRadius.circular(41),
                      ),
                      child: index == 0
                          ? Icon(
                              Icons.add_rounded,
                              size: 30,
                              color: Colors.black,
                            )
                          : ClipRRect(
                              borderRadius: BorderRadius.circular(41),
                              child: Image.asset(
                                'assets/profile_${(index % 6) + 1}.jpeg',
                                fit: BoxFit.cover,
                              ),
                            ),
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Savings',
                  style: TextStyle(
                    fontSize: 19,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'See All',
                  style: TextStyle(
                    fontSize: 19,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      SavingsCardWidget(
                        text: 'House',
                        amount: '24,900',
                        color: FinancesColors.orange,
                        percentage: 60,
                      ),
                      const SizedBox(height: 20),
                      SavingsCardWidget(
                        text: 'Macbook Pro M1',
                        amount: '1,100',
                        color: FinancesColors.lightYellow,
                        percentage: 56,
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 14),
                Expanded(
                  child: Column(
                    children: [
                      SavingsCardWidget(
                        text: 'Car',
                        amount: '14,900',
                        color: FinancesColors.green,
                        percentage: 68,
                      ),
                      const SizedBox(height: 20),
                      SavingsCardWidget(
                        text: 'Iphone 13 Mini',
                        amount: '499',
                        color: FinancesColors.purple,
                        percentage: 35,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

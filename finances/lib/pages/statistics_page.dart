import 'package:finances/utils/finances_colors.dart';
import 'package:finances/widgets/bar_chart_widget.dart';
import 'package:finances/widgets/weekly_monthly_tab_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StatisticsPage extends StatelessWidget {
  const StatisticsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding:
            const EdgeInsets.only(top: 70, left: 25, right: 25, bottom: 30),
        children: [
          SizedBox(
            height: 42,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  behavior: HitTestBehavior.translucent,
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    CupertinoIcons.arrow_left,
                    color: FinancesColors.purple,
                  ),
                ),
                Text(
                  'Statistics',
                  style: TextStyle(
                    color: FinancesColors.purple,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(
                  Icons.notifications_none_sharp,
                  color: FinancesColors.purple,
                ),
              ],
            ),
          ),
          const SizedBox(height: 15),
          SizedBox(
            height: 25,
            child: Text(
              'Expenses Average',
              style: TextStyle(
                color: Colors.black.withOpacity(.65),
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(height: 2),
          SizedBox(
            height: 60,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  '\$29,282.00',
                  style: TextStyle(
                    color: FinancesColors.purple,
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: 15),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  height: 14,
                  width: 14,
                  decoration: BoxDecoration(
                    color: FinancesColors.purple,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Icon(Icons.arrow_downward_rounded,
                      color: Colors.white, size: 11),
                ),
                const SizedBox(width: 5),
                Padding(
                  padding: const EdgeInsets.only(top: 7),
                  child: Text(
                    '20%',
                    style: TextStyle(
                      color: Colors.black.withOpacity(.65),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Container(
            height: 210,
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: BarChartWidget(
              percentages: [
                65,
                77,
                28,
                65,
                88,
                100,
                76,
              ],
            ),
          ),
          const SizedBox(height: 20),
          WeeklyMonthlyTabWidget(
            text1: 'Weekly',
            text2: 'Monthly',
          ),
          const SizedBox(height: 20),
          Text(
            'Categories',
            style: TextStyle(
              color: FinancesColors.purple,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          CategorizedSpendingWidget(
            spendingType: 'Shooping',
            amount: '200.00',
            iconData: Icons.shopping_cart,
            color: Colors.orange.shade100,
            transactionsCount: 18,
          ),
          CategorizedSpendingWidget(
            spendingType: 'Food',
            amount: '140.00',
            iconData: Icons.fastfood_rounded,
            color: FinancesColors.lightPurple,
            transactionsCount: 13,
          ),
          CategorizedSpendingWidget(
            spendingType: 'Entertainment',
            amount: '30.00',
            iconData: Icons.movie,
            color: FinancesColors.lightOrange,
            transactionsCount: 3,
          ),
          CategorizedSpendingWidget(
            spendingType: 'Transport',
            amount: '50.00',
            iconData: Icons.directions_bus,
            color: FinancesColors.lightBlue,
            transactionsCount: 5,
          ),
        ],
      ),
    );
  }
}

class CategorizedSpendingWidget extends StatelessWidget {
  final String spendingType;
  final String amount;
  final IconData iconData;
  final Color color;
  final int transactionsCount;
  const CategorizedSpendingWidget({
    required this.spendingType,
    required this.amount,
    required this.iconData,
    required this.color,
    required this.transactionsCount,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey.shade200,
          width: 1.5,
        ),
        borderRadius: BorderRadius.circular(30),
      ),
      padding: const EdgeInsets.all(10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Row(
              children: [
                Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    color: color,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Icon(iconData, color: FinancesColors.purple, size: 30),
                ),
                const SizedBox(width: 13),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        spendingType,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: FinancesColors.purple,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 3),
                      Text(
                        '$transactionsCount transactions',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Colors.grey.shade300,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Text(
            '-\$$amount',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: FinancesColors.purple,
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

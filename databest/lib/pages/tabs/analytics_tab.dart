import 'package:databest/utilities/colors.dart';
import 'package:databest/utilities/sales_revenue_chart_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnalyticsTab extends StatefulWidget {
  const AnalyticsTab({Key? key}) : super(key: key);

  @override
  State<AnalyticsTab> createState() => _AnalyticsTabState();
}

class _AnalyticsTabState extends State<AnalyticsTab> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.only(top: 70, bottom: 120, left: 23, right: 23),
      children: [
        SizedBox(
          height: 40,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(CupertinoIcons.chevron_back,
                  size: 30, color: Colors.transparent),
              Text(
                'ANALYTICS',
                style: TextStyle(
                  color: DatabestColors.darkBlue,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  letterSpacing: -.1,
                ),
              ),
              Icon(Icons.more_vert_rounded, size: 30),
            ],
          ),
        ),
        const SizedBox(height: 40),
        SizedBox(
          height: 30,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'KPI STATISTICS[%]',
                style: TextStyle(
                    color: DatabestColors.darkBlue,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    letterSpacing: -1,
                    height: .1),
              ),
              Container(
                width: 75,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade400),
                  borderRadius: BorderRadius.circular(7),
                ),
                alignment: Alignment.center,
                child: Text(
                  'See More',
                  style: TextStyle(
                    color: Colors.grey.shade600,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    letterSpacing: -1,
                    height: .1,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 30),
        SizedBox(
          height: 200,
          child: Row(
            children: [
              Expanded(
                child: Stack(
                  children: [
                    Positioned(
                      bottom: 15,
                      right: 5,
                      child: Container(
                        height: 120,
                        width: 120,
                        decoration: BoxDecoration(
                          color: DatabestColors.orange,
                          shape: BoxShape.circle,
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          '88',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            letterSpacing: -.5,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 40,
                      left: 20,
                      child: Container(
                        height: 82,
                        width: 82,
                        decoration: BoxDecoration(
                          color: DatabestColors.pink,
                          shape: BoxShape.circle,
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          '67',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            letterSpacing: -.5,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 25,
                      right: 30,
                      child: Container(
                        height: 62,
                        width: 62,
                        decoration: BoxDecoration(
                          color: DatabestColors.lightBlue,
                          shape: BoxShape.circle,
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          '0.44',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            letterSpacing: -.5,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 25),
              SizedBox(
                width: 150,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                            color: DatabestColors.orange,
                            shape: BoxShape.circle,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Text(
                          'Gross Margin',
                          style: TextStyle(
                            color: DatabestColors.darkBlue,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            letterSpacing: -.5,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 6),
                    Row(
                      children: [
                        Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                            color: DatabestColors.pink,
                            shape: BoxShape.circle,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Text(
                          'CLR (Retention)',
                          style: TextStyle(
                            color: DatabestColors.darkBlue,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            letterSpacing: -.5,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 6),
                    Row(
                      children: [
                        Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                            color: DatabestColors.lightBlue,
                            shape: BoxShape.circle,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Text(
                          'Chrun Rate',
                          style: TextStyle(
                            color: DatabestColors.darkBlue,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            letterSpacing: -.5,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 50),
        SizedBox(
          height: 30,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'SALES REVENUE',
                style: TextStyle(
                  color: DatabestColors.darkBlue,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  letterSpacing: -.5,
                  height: .1,
                ),
              ),
              Container(
                width: 75,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade400),
                  borderRadius: BorderRadius.circular(7),
                ),
                alignment: Alignment.center,
                child: Text(
                  'See More',
                  style: TextStyle(
                    color: Colors.grey.shade600,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    letterSpacing: -1,
                    height: .1,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        SalesRevenueChart(),
        const SizedBox(height: 40),
        SizedBox(
          height: 60,
          child: Row(
            children: [
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      width: 80,
                      child: Text(
                        '18k',
                        style: TextStyle(
                          color: DatabestColors.darkBlue,
                          fontSize: 33,
                          fontWeight: FontWeight.bold,
                          letterSpacing: -.1,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 80,
                      child: Text(
                        'Monthly Revenue',
                        maxLines: 2,
                        style: TextStyle(
                          color: Colors.black.withOpacity(.7),
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          letterSpacing: -1,
                          height: 1,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 40,
                width: 1.2,
                color: DatabestColors.grey,
                margin: const EdgeInsets.symmetric(horizontal: 10),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const SizedBox(width: 4),
                    SizedBox(
                      width: 70,
                      child: Text(
                        '2%',
                        style: TextStyle(
                          color: DatabestColors.darkBlue,
                          fontSize: 33,
                          fontWeight: FontWeight.bold,
                          letterSpacing: -.1,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 80,
                      child: Text(
                        'Revenue Growth',
                        maxLines: 2,
                        style: TextStyle(
                          color: Colors.black.withOpacity(.7),
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          letterSpacing: -1,
                          height: 1,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

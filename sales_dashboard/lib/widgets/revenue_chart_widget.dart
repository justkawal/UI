import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sales_dashboard/models/bar_chart_model.dart';
import 'package:sales_dashboard/utils/colors.dart';
import 'package:sales_dashboard/widgets/growth_indicator_widget.dart';

class RevenueChartWidget extends StatelessWidget {
  const RevenueChartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: SalesDashboardColors.lightGrey,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.grey, width: .3),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 18),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Revenue',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                  letterSpacing: -.3,
                ),
              ),
              const SizedBox(width: 3),
              Row(
                children: [
                  Container(
                    height: 13,
                    width: 13,
                    decoration: BoxDecoration(
                      color: SalesDashboardColors.darkGreen2,
                      borderRadius: BorderRadius.circular(3.5),
                    ),
                  ),
                  const SizedBox(width: 5),
                  Text(
                    'Income',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                      letterSpacing: -.3,
                    ),
                  ),
                  const SizedBox(width: 13),
                  Container(
                    height: 13,
                    width: 13,
                    decoration: BoxDecoration(
                      color: SalesDashboardColors.lightAccentGreen,
                      borderRadius: BorderRadius.circular(3.5),
                    ),
                  ),
                  const SizedBox(width: 5),
                  Text(
                    'Expense',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                      letterSpacing: -.3,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 10),
          Container(
            height: 1,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(.3),
              borderRadius: BorderRadius.circular(60),
            ),
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Text(
                '\$233.00',
                style: TextStyle(
                  fontSize: 27,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              const SizedBox(width: 8),
              GrowthIndicatorWidget(deltaChange: 42),
            ],
          ),
          const SizedBox(height: 10),
          Expanded(
            child: BarChartHeightedContainerWidget(
              barChartModel: BarChartModel.dummyList,
            ),
          ),
        ],
      ),
    );
  }
}

class BarChartHeightedContainerWidget extends StatefulWidget {
  final BarChartModel barChartModel;
  const BarChartHeightedContainerWidget({
    required this.barChartModel,
    super.key,
  });

  @override
  State<BarChartHeightedContainerWidget> createState() =>
      _BarChartHeightedContainerWidgetState();
}

class _BarChartHeightedContainerWidgetState
    extends State<BarChartHeightedContainerWidget> {
  BarChartModel barChart = BarChartModel(
    income: List.generate(6, (_) => Revenue(amountPercent: 0)),
    expense: List.generate(6, (_) => Revenue(amountPercent: 0)),
  );

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      setState(() {
        barChart = widget.barChartModel;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        setState(() {
          barChart = BarChartModel(
            income: List.generate(
              6,
              (_) => Revenue(
                amountPercent: Random().nextInt(70) + 30,
              ),
            ),
            expense: List.generate(
              6,
              (_) => Revenue(
                amountPercent: Random().nextInt(70) + 30,
              ),
            ),
          );
        });
      },
      child: SizedBox(
        width: double.infinity,
        child: Stack(
          children: [
            Positioned(
              left: 8,
              right: 8,
              top: 0,
              bottom: 1.25,
              child: SizedBox(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    for (int i = 0; i < 6; i++)
                      SizedBox(
                        width: 26,
                        child: Stack(
                          children: [
                            AnimatedPositioned(
                              duration: Duration(milliseconds: (i * 50) + 155),
                              left: 0,
                              top: (100 - barChart.income[i].amountPercent)
                                  .clamp(0, 100)
                                  .toDouble(),
                              bottom: 0,
                              child: Container(
                                width: 13,
                                decoration: BoxDecoration(
                                  color: SalesDashboardColors.darkGreen4,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(3.5),
                                    topRight: Radius.circular(3.5),
                                  ),
                                ),
                              ),
                            ),
                            AnimatedPositioned(
                              duration: Duration(milliseconds: (i * 50) + 155),
                              right: 0,
                              top: (100 - barChart.expense[i].amountPercent)
                                  .clamp(0, 100)
                                  .toDouble(),
                              bottom: 0,
                              child: Container(
                                width: 13,
                                decoration: BoxDecoration(
                                  color: SalesDashboardColors.lightAccentGreen,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(3.5),
                                    topRight: Radius.circular(3.5),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 1.25,
              child: Container(
                height: .5,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey.shade400,
                  borderRadius: BorderRadius.circular(60),
                ),
              ),
            ),
            Positioned(
              left: 0,
              bottom: 0,
              child: Container(
                height: 3,
                width: 3,
                decoration: BoxDecoration(
                  color: Colors.grey.shade400,
                  borderRadius: BorderRadius.circular(60),
                ),
              ),
            ),
            Positioned(
              right: 0,
              bottom: 0,
              child: Container(
                height: 3,
                width: 3,
                decoration: BoxDecoration(
                  color: Colors.grey.shade400,
                  borderRadius: BorderRadius.circular(60),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

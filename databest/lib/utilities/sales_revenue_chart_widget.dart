import 'package:databest/models/revenue_model.dart';
import 'package:databest/utilities/colors.dart';
import 'package:flutter/material.dart';

class SalesRevenueChart extends StatefulWidget {
  const SalesRevenueChart({super.key});

  @override
  State<SalesRevenueChart> createState() => _SalesRevenueChartState();
}

class _SalesRevenueChartState extends State<SalesRevenueChart> {
  bool animate = false;
  @override
  void initState() {
    Future.delayed(const Duration(milliseconds: 100), () {
      setState(() {
        animate = true;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          for (int i = 0; i < RevenueModel.sampleData.length; i++)
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  height: animate
                      ? RevenueModel.sampleData[i].revenuePercentage * (190)
                      : 0,
                  width: 41,
                  decoration: BoxDecoration(
                    color: RevenueModel.sampleData.highestRevenueMonth ==
                            RevenueModel.sampleData[i].month
                        ? null
                        : DatabestColors.lightGrey3,
                    gradient: RevenueModel.sampleData.highestRevenueMonth !=
                            RevenueModel.sampleData[i].month
                        ? null
                        : LinearGradient(
                            colors: [
                              DatabestColors.pink,
                              DatabestColors.pink.withOpacity(.45),
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                const SizedBox(height: 15),
                Text(
                  RevenueModel.sampleData[i].month,
                  style: TextStyle(
                    color: Colors.grey.shade500,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    letterSpacing: -1,
                    height: .1,
                  ),
                ),
              ],
            ),
        ],
      ),
    );
  }
}

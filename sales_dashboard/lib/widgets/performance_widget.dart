import 'package:flutter/material.dart';
import 'package:sales_dashboard/utils/colors.dart';
import 'package:sales_dashboard/widgets/pie_chart_statistics_widget.dart';

class PerformanceWidget extends StatelessWidget {
  const PerformanceWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 440,
      width: double.infinity,
      padding: const EdgeInsets.only(left: 20, right: 20, top: 17, bottom: 17),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.grey, width: .3),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(
                'Total View Performance',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                  letterSpacing: -.3,
                ),
              ),
              const SizedBox(height: 15),
              Container(
                height: 1,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(.3),
                  borderRadius: BorderRadius.circular(60),
                ),
              ),
            ],
          ),
          Container(
            height: 200,
            padding: const EdgeInsets.all(20),
            child: PieChartStatisticsWidget(),
          ),
          Text(
            'Here are some tips on how to improve your score.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 11.2,
              fontWeight: FontWeight.w500,
              color: Colors.grey.shade500,
              letterSpacing: -.1,
            ),
          ),
          Container(
            height: 40,
            width: double.infinity,
            margin: const EdgeInsets.symmetric(vertical: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.grey, width: .3),
            ),
            alignment: Alignment.center,
            child: Text(
              'Guide Views',
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w500,
                color: SalesDashboardColors.darkGreen4,
                letterSpacing: -.3,
              ),
            ),
          ),
          Column(
            children: [
              Container(
                height: 1,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(.3),
                  borderRadius: BorderRadius.circular(60),
                ),
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 12,
                        width: 12,
                        decoration: BoxDecoration(
                          color: SalesDashboardColors.lightAccentGreen,
                          borderRadius: BorderRadius.circular(3),
                        ),
                      ),
                      const SizedBox(width: 5),
                      Text(
                        'View Count',
                        style: TextStyle(
                          fontSize: 9,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                          letterSpacing: -.3,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        height: 12,
                        width: 12,
                        decoration: BoxDecoration(
                          color: SalesDashboardColors.darkGreen2,
                          borderRadius: BorderRadius.circular(3),
                        ),
                      ),
                      const SizedBox(width: 5),
                      Text(
                        'Percentage',
                        style: TextStyle(
                          fontSize: 9,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                          letterSpacing: -.3,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        height: 12,
                        width: 12,
                        decoration: BoxDecoration(
                          color: SalesDashboardColors.orange,
                          borderRadius: BorderRadius.circular(3),
                        ),
                      ),
                      const SizedBox(width: 5),
                      Text(
                        'Sales',
                        style: TextStyle(
                          fontSize: 9,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                          letterSpacing: -.3,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

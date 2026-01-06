import 'package:flutter/material.dart';
import 'package:sales_dashboard/utils/colors.dart';

class GrowthIndicatorWidget extends StatelessWidget {
  const GrowthIndicatorWidget({
    super.key,
    required this.deltaChange,
  });

  final int deltaChange;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (deltaChange != 0)
          Icon(deltaChange < 0 ? Icons.trending_down : Icons.trending_up,
              size: 16,
              color: deltaChange <= 0
                  ? SalesDashboardColors.red
                  : SalesDashboardColors.lightGreen2),
        if (deltaChange != 0) const SizedBox(width: 6),
        RichText(
          text: TextSpan(
            text: '${deltaChange <= 0 ? '' : '+'}$deltaChange%',
            style: TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.w500,
                color: deltaChange <= 0
                    ? SalesDashboardColors.red
                    : SalesDashboardColors.lightGreen2),
            children: [
              TextSpan(
                text: ' from last month',
                style: TextStyle(
                  color: Colors.black.withOpacity(.96),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

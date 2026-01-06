import 'package:flutter/material.dart';
import 'package:sales_dashboard/widgets/growth_indicator_widget.dart';

class AmountStatisticsWidget extends StatelessWidget {
  final String heading;
  final int deltaChange;
  final String amount;
  const AmountStatisticsWidget(
      {required this.heading,
      required this.deltaChange,
      required this.amount,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 208,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.grey, width: .3),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                heading,
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                  letterSpacing: -.1,
                ),
              ),
              const SizedBox(width: 3),
              Icon(
                Icons.more_horiz,
                size: 21,
                color: Colors.black,
              ),
            ],
          ),
          Text(
            '\$$amount',
            style: TextStyle(
              fontSize: 27,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
          GrowthIndicatorWidget(deltaChange: deltaChange),
        ],
      ),
    );
  }
}

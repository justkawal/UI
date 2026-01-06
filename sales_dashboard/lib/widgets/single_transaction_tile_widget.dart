import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sales_dashboard/models/transaction_model.dart';
import 'package:sales_dashboard/utils/colors.dart';

class SingleTransactionTileWidget extends StatelessWidget {
  final TransactionModel model;
  const SingleTransactionTileWidget({
    required this.model,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(60),
                ),
                alignment: Alignment.center,
                child: FaIcon(
                  model.icon,
                  size: 15,
                  color: Colors.black,
                ),
              ),
              const SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    model.title,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      letterSpacing: -.1,
                    ),
                  ),
                  const SizedBox(height: 2.5),
                  Text(
                    model.date,
                    style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w300,
                      color: Colors.grey,
                      letterSpacing: -.1,
                    ),
                  ),
                ],
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                model.status.name,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: model.status == TransactionCompletionStatus.Completed
                      ? SalesDashboardColors.darkGreen2
                      : Colors.black,
                  letterSpacing: -.1,
                ),
              ),
              const SizedBox(height: 2.5),
              Text(
                model.transactionId,
                style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey,
                  letterSpacing: -.1,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

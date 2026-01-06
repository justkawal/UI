import 'package:flutter/material.dart';
import 'package:sales_dashboard/models/transaction_model.dart';
import 'package:sales_dashboard/widgets/single_transaction_tile_widget.dart';

class TransactionListViewWidget extends StatelessWidget {
  const TransactionListViewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.grey, width: .3),
      ),
      padding: const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 15),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Transaction',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                  letterSpacing: -.3,
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
          const SizedBox(height: 3),
          Expanded(
            child: ScrollConfiguration(
              behavior:
                  ScrollConfiguration.of(context).copyWith(scrollbars: false),
              child: ListView.builder(
                itemCount: TransactionModel.transactionsList.length,
                itemBuilder: (context, index) {
                  return SingleTransactionTileWidget(
                    model: TransactionModel.transactionsList[index],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

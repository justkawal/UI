import 'package:flutter/material.dart';
import 'package:sales_dashboard/models/sales_report_model.dart';
import 'package:sales_dashboard/utils/colors.dart';

class SalesReportWidget extends StatelessWidget {
  final SalesReportModel salesReportModel;
  const SalesReportWidget({
    required this.salesReportModel,
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
                'Sales Report',
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
          const SizedBox(height: 15),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(left: 2, right: 10),
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        for (int _ = 0; _ < 5; _++)
                          Container(
                            width: .5,
                            height: double.infinity,
                            color: Colors.grey.shade300,
                          ),
                      ],
                    ),
                  ),
                  Positioned.fill(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 6),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          for (int i = 0; i < 3; i++)
                            SizedBox(
                              height: 30,
                              width:
                                  (salesReportModel.sales[i].quantity / 400) *
                                      271,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  RichText(
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    text: TextSpan(
                                      text:
                                          salesReportModel.sales[i].productName,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 11,
                                      ),
                                      children: [
                                        TextSpan(
                                          text:
                                              ' (${salesReportModel.sales[i].quantity})',
                                          style: TextStyle(
                                            color: SalesDashboardColors.orange,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 2),
                                  Container(
                                    height: 15,
                                    decoration: BoxDecoration(
                                      color:
                                          SalesDashboardColors.lightAccentGreen,
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(3.5),
                                        bottomRight: Radius.circular(3.5),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 2),
          SizedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                for (int i = 0; i < 5; i++)
                  Text(
                    '${i * 100}',
                    style: TextStyle(
                      fontSize: 9,
                      fontWeight: FontWeight.w300,
                      color: Colors.grey,
                      letterSpacing: -.2,
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

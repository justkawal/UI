import 'package:finances/pages/statistics_page.dart';
import 'package:flutter/material.dart';

class SavingsCardWidget extends StatelessWidget {
  final String text;
  final String amount;
  final double percentage;
  final Color color;
  const SavingsCardWidget({
    required this.text,
    required this.amount,
    required this.percentage,
    required this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const StatisticsPage(),
          ),
        );
      },
      child: Container(
        height: 110,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(23),
          border: Border.all(
            color: Colors.grey.shade300,
            width: 1.1,
          ),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: SizedBox(
                        width: 90,
                        child: Text(
                          text,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black.withOpacity(.9),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Icon(Icons.arrow_forward_ios_rounded)
                  ],
                ),
                const SizedBox(height: 3),
                Text(
                  '\$$amount',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black.withOpacity(.9),
                    fontWeight: FontWeight.bold,
                    letterSpacing: -.5,
                  ),
                ),
              ],
            ),
            Container(
              height: 10,
              width: 135,
              decoration: BoxDecoration(
                color: Colors.grey.shade200.withOpacity(.9),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  Container(
                    width: 1.343 * percentage.clamp(0, 100),
                    decoration: BoxDecoration(
                      color: color,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

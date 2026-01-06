import 'package:flutter/material.dart';

class ProgressTextWidget extends StatelessWidget {
  const ProgressTextWidget({
    super.key,
    required this.isFirstPage,
  });

  final bool isFirstPage;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Progress',
          style: TextStyle(
            color: Colors.grey.shade600,
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          '${(isFirstPage ? 1 : 2)} of 2',
          style: TextStyle(
            color: Colors.grey.shade600,
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

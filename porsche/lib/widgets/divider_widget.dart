import 'package:flutter/material.dart';

class DividerWidget extends StatelessWidget {
  const DividerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 2,
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 13),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.3),
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}

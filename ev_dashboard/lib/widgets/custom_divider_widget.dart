import 'package:flutter/material.dart';

class CustomDividerWidget extends StatelessWidget {
  const CustomDividerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1.5,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3),
        color: Colors.grey.withOpacity(.5),
      ),
    );
  }
}

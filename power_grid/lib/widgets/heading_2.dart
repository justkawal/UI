import 'package:flutter/material.dart';

class Heading2 extends StatelessWidget {
  final String title;
  const Heading2({
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        color: Colors.white,
        fontSize: 58,
        fontWeight: FontWeight.w400,
        height: 1.2,
      ),
    );
  }
}

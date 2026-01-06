import 'package:banking_store/utils/colors.dart';
import 'package:flutter/material.dart';

class MenuWidget extends StatelessWidget {
  final Color? color;
  const MenuWidget({this.color, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          for (var i = 0; i < 2; i++)
            Container(
              height: 7,
              width: 7,
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(4),
                border: Border.all(
                  color: color ?? StoreColors.darkGreen,
                  width: 1.9,
                ),
              ),
            ),
        ],
      ),
    );
  }
}

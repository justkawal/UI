import 'package:flutter/material.dart';
import 'package:plants_ui/utils/plants_colors.dart';

class ProgressContainerWidget extends StatelessWidget {
  const ProgressContainerWidget({
    super.key,
    required this.isFirstPage,
  });

  final bool isFirstPage;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 10,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            blurRadius: 2,
            spreadRadius: 2,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          AnimatedContainer(
            duration: Duration(milliseconds: 300),
            curve: Curves.easeInOut,
            width:
                ((isFirstPage ? .5 : 1) * MediaQuery.of(context).size.width) -
                    40,
            decoration: BoxDecoration(
              color: PlantColors.mediumGreen,
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:finances/utils/finances_colors.dart';
import 'package:flutter/material.dart';

class WeeklyMonthlyTabWidget extends StatefulWidget {
  final String text1;
  final String text2;
  final int? defaultSelectedIndex;
  const WeeklyMonthlyTabWidget({
    required this.text1,
    required this.text2,
    this.defaultSelectedIndex = 0,
    super.key,
  });

  @override
  State<WeeklyMonthlyTabWidget> createState() => _WeeklyMonthlyTabWidgetState();
}

class _WeeklyMonthlyTabWidgetState extends State<WeeklyMonthlyTabWidget> {
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.defaultSelectedIndex!;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      decoration: BoxDecoration(
        color: FinancesColors.purple.withOpacity(.1),
        borderRadius: BorderRadius.circular(35),
      ),
      padding: const EdgeInsets.all(7),
      child: Stack(
        children: [
          AnimatedPositioned(
            duration: Duration(milliseconds: 350),
            curve: Curves.easeInOut,
            top: 0,
            left: _selectedIndex == 0
                ? 0
                : (MediaQuery.of(context).size.width / 2) - 40,
            bottom: 0,
            width: (MediaQuery.of(context).size.width / 2) - 25,
            child: Container(
              decoration: BoxDecoration(
                color: FinancesColors.purple,
                borderRadius: BorderRadius.circular(35),
              ),
            ),
          ),
          singleTab(
            text: 'Weekly',
            index: 0,
            left: true,
            right: false,
          ),
          singleTab(
            text: 'Monthly',
            index: 1,
            left: false,
            right: true,
          ),
        ],
      ),
    );
  }

  Widget singleTab({
    required String text,
    required int index,
    required bool left,
    required bool right,
  }) {
    return Positioned(
      top: 0,
      bottom: 0,
      left: left ? 0 : null,
      right: right ? 0 : null,
      width: (MediaQuery.of(context).size.width / 2) - 25,
      child: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: () {
          setState(() {
            _selectedIndex = index;
          });
        },
        child: AnimatedContainer(
          duration: Duration(milliseconds: 450),
          curve: Curves.easeInOut,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
          ),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                color: _selectedIndex == index
                    ? Colors.white
                    : FinancesColors.purple,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

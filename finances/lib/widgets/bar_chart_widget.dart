import 'package:finances/utils/finances_colors.dart';
import 'package:flutter/material.dart';

class BarChartWidget extends StatefulWidget {
  final List<double> percentages;
  const BarChartWidget({
    required this.percentages,
    super.key,
  }) : assert(percentages.length == 7);

  static final List<String> days = [
    'Mon',
    'Tue',
    'Wed',
    'Thu',
    'Fri',
    'Sat',
    'Sun'
  ];

  @override
  State<BarChartWidget> createState() => _BarChartWidgetState();
}

class _BarChartWidgetState extends State<BarChartWidget> {
  final List<double> _percentages = List.generate(7, (_) => 0);
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      setState(() {
        _percentages.setAll(0, widget.percentages);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        for (int i = 0; i < 7; i++)
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 180,
                width: 20,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200.withOpacity(.9),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    AnimatedContainer(
                      duration: Duration(milliseconds: 350),
                      curve: Curves.easeInOut,
                      height: 1.8 * _percentages[i].clamp(0, 100),
                      width: 20,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: widget.percentages[i] == 100
                              ? [
                                  FinancesColors.orange,
                                  FinancesColors.lightPurple
                                ]
                              : [
                                  FinancesColors.purple,
                                  FinancesColors.purple,
                                ],
                          stops: [0.0, .4],
                        ),
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 5),
              SizedBox(
                height: 25,
                child: Text(
                  BarChartWidget.days[i],
                  style: TextStyle(
                    color: Colors.black.withOpacity(.65),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
      ],
    );
  }
}

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:sales_dashboard/utils/colors.dart';

class PieChartStatisticsWidget extends StatefulWidget {
  const PieChartStatisticsWidget({super.key});

  @override
  State<StatefulWidget> createState() => PieChartStatisticsWidgetState();
}

class PieChartStatisticsWidgetState extends State {
  int touchedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: PieChart(
            PieChartData(
              pieTouchData: PieTouchData(
                touchCallback: (FlTouchEvent event, pieTouchResponse) {
                  setState(() {
                    if (!event.isInterestedForInteractions ||
                        pieTouchResponse == null ||
                        pieTouchResponse.touchedSection == null) {
                      touchedIndex = -1;
                      return;
                    }
                    touchedIndex =
                        pieTouchResponse.touchedSection!.touchedSectionIndex;
                  });
                },
              ),
              borderData: FlBorderData(
                show: false,
              ),
              sectionsSpace: 0,
              centerSpaceRadius: 45,
              sections: showingSections(),
            ),
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Total Count',
                style: TextStyle(
                  fontSize: 10.6,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey.shade500,
                  letterSpacing: -.1,
                ),
              ),
              Text(
                '234K',
                style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                  letterSpacing: -.3,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  List<PieChartSectionData> showingSections() {
    return List.generate(3, (i) {
      final isTouched = i == touchedIndex;
      final double radius = isTouched ? 50 : 37;
      final double widgetSize = isTouched ? 45 : 40;

      switch (i) {
        case 0:
          return PieChartSectionData(
            color: SalesDashboardColors.lightAccentGreen,
            value: 68,
            radius: radius,
            showTitle: false,
            badgeWidget: _Badge(
              size: widgetSize,
              value: '68%',
            ),
            badgePositionPercentageOffset: .98,
          );
        case 1:
          return PieChartSectionData(
            color: SalesDashboardColors.orange,
            value: 27,
            radius: radius,
            showTitle: false,
            badgeWidget: _Badge(
              size: widgetSize,
              value: '27%',
            ),
            badgePositionPercentageOffset: .98,
          );
        case 2:
          return PieChartSectionData(
            color: SalesDashboardColors.darkGreen2,
            value: 23,
            radius: radius,
            showTitle: false,
            badgeWidget: _Badge(
              size: widgetSize,
              value: '23%',
            ),
            badgePositionPercentageOffset: .98,
          );
        default:
          throw Exception('Oh no');
      }
    });
  }
}

class _Badge extends StatelessWidget {
  const _Badge({
    required this.size,
    required this.value,
  });
  final double size;
  final String value;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: PieChart.defaultDuration,
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: Colors.black.withOpacity(.2),
              offset: const Offset(3, 3),
              blurRadius: 5,
              spreadRadius: 0),
        ],
      ),
      padding: EdgeInsets.all(size * .15),
      child: Center(
        child: Text(
          value,
          style: TextStyle(
            fontSize: 10.3,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}

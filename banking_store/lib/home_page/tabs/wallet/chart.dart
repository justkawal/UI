import 'package:banking_store/utils/colors.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineChartSample2 extends StatefulWidget {
  const LineChartSample2({super.key});

  @override
  State<LineChartSample2> createState() => _LineChartSample2State();
}

class _LineChartSample2State extends State<LineChartSample2> {
  List<Color> gradientColors = [
    StoreColors.darkBrown,
    StoreColors.darkBrown,
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        AspectRatio(
          aspectRatio: 1.40,
          child: Padding(
            padding: const EdgeInsets.only(
              top: 4,
              bottom: 4,
            ),
            child: LineChart(mainData()),
          ),
        ),
      ],
    );
  }

  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(fontSize: 13, color: Colors.grey);
    Widget text;
    switch (value.toInt()) {
      case 0:
        text = const Text('March', style: style);
        break;
      case 1:
        text = const Text('April', style: style);
        break;
      case 2:
        text = const Text('May', style: style);
        break;
      case 3:
        text = const Text('June', style: style);
        break;
      case 4:
        text = const Text('July', style: style);
        break;
      case 5:
        text = const Text('Aug', style: style);
        break;
      default:
        text = const Text('', style: style);
        break;
    }

    return SideTitleWidget(
      axisSide: meta.axisSide,
      child: text,
    );
  }

  Widget leftTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      fontSize: 13,
      color: Colors.grey,
    );
    String text = '';
    if (value.toInt() >= 0 && value.toInt() <= 4) {
      text = '${value.toInt() * 30}k';
    }

    return Text(text, style: style, textAlign: TextAlign.left);
  }

  LineChartData mainData() {
    return LineChartData(
      gridData: FlGridData(
        show: true,
        drawVerticalLine: true,
        horizontalInterval: 1,
        verticalInterval: 1,
        getDrawingHorizontalLine: (value) {
          return FlLine(
            color: Colors.grey.withOpacity(.3),
            strokeWidth: 1,
          );
        },
        getDrawingVerticalLine: (value) {
          return FlLine(
            color: Colors.grey.withOpacity(.3),
            strokeWidth: 1,
          );
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        rightTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 30,
            interval: 1,
            getTitlesWidget: bottomTitleWidgets,
          ),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            interval: 1,
            getTitlesWidget: leftTitleWidgets,
            reservedSize: 42,
          ),
        ),
      ),
      borderData: FlBorderData(
        show: true,
        border: Border.fromBorderSide(
            BorderSide(color: Colors.grey.withOpacity(.3))),
      ),
      minX: 0,
      maxX: 5,
      minY: -1,
      maxY: 4,
      lineBarsData: [
        LineChartBarData(
          spots: const [
            FlSpot(0, 1),
            FlSpot(1, 1.5),
            FlSpot(2.3, 1.2),
            FlSpot(2.9, 2.5),
            FlSpot(3.8, 1.8),
            FlSpot(4.4, 2.5),
            FlSpot(5, 2.6),
          ],
          isCurved: true,
          gradient: LinearGradient(
            colors: gradientColors,
          ),
          barWidth: 5,
          isStrokeCapRound: true,
          dotData: const FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
            show: true,
            gradient: LinearGradient(
              colors:
                  gradientColors.map((color) => Colors.transparent).toList(),
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineChartSample extends StatefulWidget {
  final Color lineColor;
  final List<Color> gradientColors;
  final Color textColor;
  final bool showYAxisTiles;
  final bool showXAxisTiles;
  final bool showBorder;
  final Color horizontalLinesColor;
  final Color verticalLinesColor;
  const LineChartSample({
    required this.lineColor,
    this.showYAxisTiles = true,
    this.showXAxisTiles = true,
    this.horizontalLinesColor = Colors.white,
    this.verticalLinesColor = Colors.white,
    this.showBorder = true,
    this.gradientColors = const [Colors.white, Colors.white],
    this.textColor = Colors.white,
    super.key,
  });

  @override
  State<LineChartSample> createState() => _LineChartSampleState();
}

class _LineChartSampleState extends State<LineChartSample> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        AspectRatio(
          aspectRatio: 2,
          child: LineChart(mainData()),
        ),
      ],
    );
  }

  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    final style =
        TextStyle(fontSize: 13, color: widget.textColor.withOpacity(.7));
    Widget text;
    switch (value.toInt()) {
      case 0:
        text = Text('Jan', style: style);
        break;
      case 1:
        text = Text('Feb', style: style);
        break;
      case 2:
        text = Text('Mar', style: style);
        break;
      case 3:
        text = Text('Apr', style: style);
        break;
      case 4:
        text = Text('May', style: style);
        break;
      default:
        text = Text('', style: style);
        break;
    }

    return SideTitleWidget(
      axisSide: meta.axisSide,
      child: text,
    );
  }

  Widget leftTitleWidgets(double value, TitleMeta meta) {
    final style = TextStyle(fontSize: 13, color: widget.textColor);
    String text = '';
    if (value.toInt() >= 0 && value.toInt() <= 4) {
      text = '${value.toInt() * 50}';
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
            color: widget.horizontalLinesColor.withOpacity(.3),
            strokeWidth: 1,
          );
        },
        getDrawingVerticalLine: (value) {
          return FlLine(
            color: widget.verticalLinesColor.withOpacity(.3),
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
            showTitles: widget.showXAxisTiles,
            reservedSize: 30,
            interval: 1,
            getTitlesWidget: bottomTitleWidgets,
          ),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: widget.showYAxisTiles,
            interval: 1,
            getTitlesWidget: leftTitleWidgets,
            reservedSize: 40,
          ),
        ),
      ),
      borderData: FlBorderData(
        show: widget.showBorder,
        border: Border.fromBorderSide(
            BorderSide(color: widget.textColor.withOpacity(.3))),
      ),
      minX: 0,
      maxX: 4,
      minY: 0,
      maxY: 3,
      lineBarsData: [
        LineChartBarData(
          spots: const [
            FlSpot(0, 1),
            FlSpot(0.5, 0.5),
            FlSpot(1, 1.5),
            FlSpot(2.3, 1.2),
            FlSpot(2.9, 2.5),
            FlSpot(3.8, 1.8),
            FlSpot(4, 2.5),
          ],
          isCurved: true,
          color: widget.lineColor,
          barWidth: 3,
          isStrokeCapRound: true,
          dotData: const FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
            show: true,
            gradient: LinearGradient(
              colors: widget.gradientColors,
              stops: const [0.1, 1],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        ),
      ],
    );
  }
}

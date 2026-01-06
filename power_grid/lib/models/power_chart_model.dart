class PowerChartModel {
  final List<DataPoint> dataPoints;

  const PowerChartModel({
    required this.dataPoints,
  }) : assert(dataPoints.length == 18);

  static final dummyRandomPower = PowerChartModel(
    dataPoints: [
      DataPoint(increase: 30, decrease: 35),
      DataPoint(increase: 0, decrease: 0),
      DataPoint(increase: 44, decrease: 50),
      DataPoint(increase: 0, decrease: 0),
      DataPoint(increase: 37, decrease: 56),
      DataPoint(increase: 26, decrease: 41),
      DataPoint(increase: 0, decrease: 0),
      DataPoint(increase: 0, decrease: 0),
      DataPoint(increase: 88, decrease: 93),
      DataPoint(increase: 0, decrease: 0),
      DataPoint(increase: 0, decrease: 0),
      DataPoint(increase: 0, decrease: 0),
      DataPoint(increase: 0, decrease: 0),
      DataPoint(increase: 40, decrease: 77),
      DataPoint(increase: 66, decrease: 35),
      DataPoint(increase: 38, decrease: 50),
      DataPoint(increase: 0, decrease: 0),
      DataPoint(increase: 0, decrease: 0),
    ],
  );
}

class DataPoint {
  final double increase;
  final double decrease;

  const DataPoint({
    required this.increase,
    required this.decrease,
  });
}

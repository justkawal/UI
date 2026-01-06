class BarChartModel {
  final List<Revenue> income;
  final List<Revenue> expense;

  const BarChartModel({
    required this.income,
    required this.expense,
  });

  static const dummyList = BarChartModel(
    income: [
      Revenue(amountPercent: 98),
      Revenue(amountPercent: 75),
      Revenue(amountPercent: 87),
      Revenue(amountPercent: 90),
      Revenue(amountPercent: 99),
      Revenue(amountPercent: 91),
    ],
    expense: [
      Revenue(amountPercent: 77),
      Revenue(amountPercent: 94),
      Revenue(amountPercent: 72),
      Revenue(amountPercent: 66),
      Revenue(amountPercent: 88),
      Revenue(amountPercent: 80),
    ],
  );
}

class Revenue {
  final double amountPercent;

  const Revenue({
    required this.amountPercent,
  });
}

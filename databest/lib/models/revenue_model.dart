class RevenueModel {
  final String month;
  final double revenuePercentage;

  const RevenueModel({
    required this.month,
    required this.revenuePercentage,
  }) : assert(revenuePercentage >= 0.0 && revenuePercentage <= 1.0);

  static const List<RevenueModel> sampleData = [
    RevenueModel(month: 'Jan', revenuePercentage: 0.5),
    RevenueModel(month: 'Feb', revenuePercentage: 0.6),
    RevenueModel(month: 'Mar', revenuePercentage: 0.9),
    RevenueModel(month: 'Apr', revenuePercentage: 0.8),
    RevenueModel(month: 'May', revenuePercentage: 0.6),
    RevenueModel(month: 'Jun', revenuePercentage: 0.8),
  ];
}

extension RevenueModelExtension on List<RevenueModel> {
  String get highestRevenueMonth {
    return reduce((a, b) => a.revenuePercentage > b.revenuePercentage ? a : b)
        .month;
  }
}

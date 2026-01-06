class BudgetModel {
  final String name;
  final String priceRange;

  BudgetModel({
    required this.name,
    required this.priceRange,
  });

  static final dummyData = [
    BudgetModel(name: 'Under', priceRange: '\$20k'),
    BudgetModel(name: 'From', priceRange: '\$20-40k'),
    BudgetModel(name: 'Over', priceRange: '\$40k'),
  ];
}

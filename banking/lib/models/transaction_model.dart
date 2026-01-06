import 'package:flutter/material.dart';

class TransactionModel {
  final String id;
  final String payee;
  final double amount;
  final DateTime date;
  final TransactionCategory category;
  final bool isIncome;

  const TransactionModel({
    required this.id,
    required this.payee,
    required this.amount,
    required this.date,
    required this.category,
    this.isIncome = false,
  });

  static final dummyData = [
    TransactionModel(
      id: '1sde3ds',
      payee: 'McDonalds',
      amount: 1222.5, // My friend ordered for the whole street.
      date: DateTime.now().subtract(Duration(days: 1, hours: 2, minutes: 30)),
      category: TransactionCategory.food,
    ),
    TransactionModel(
      id: '42se2232ds',
      payee: 'Conversion',
      amount: 2000.0, // I wish it was 10000000.0
      date: DateTime.now().subtract(Duration(days: 13, hours: 4, minutes: 45)),
      category: TransactionCategory.salary,
      isIncome: true,
    ),
    TransactionModel(
      id: '2sd23wed2',
      payee: 'Electricity Bill',
      amount:
          1251.21, // Mistakely left the AC on for 24 hours with windows open.
      date: DateTime.now().subtract(Duration(hours: 1, minutes: 45)),
      category: TransactionCategory.bills,
    ),
    TransactionModel(
      id: '3232wswe23',
      payee: 'Uber',
      amount: 1283.22, // Did a trip to space as Elon purchased Uber.
      date: DateTime.now().subtract(Duration(days: 21, hours: 3, minutes: 15)),
      category: TransactionCategory.transport,
    ),
    TransactionModel(
      id: '42se2ds',
      payee: 'Salary',
      amount: 10000.0, // I wish it was 10000000.0
      date: DateTime.now().subtract(Duration(days: 123, hours: 4, minutes: 45)),
      category: TransactionCategory.salary,
      isIncome: true,
    ),
    TransactionModel(
      id: '4we2ds',
      payee: 'Amazon',
      amount: 1141.23, // Just don't ask what I bought.
      date: DateTime.now().subtract(Duration(days: 13, hours: 4, minutes: 45)),
      category: TransactionCategory.shopping,
    ),
    TransactionModel(
      id: '42se2232ds',
      payee: 'Crypto Conversion',
      amount: 2287.0, // I wish it was 10000000.0
      date: DateTime.now().subtract(Duration(days: 13, hours: 4, minutes: 45)),
      category: TransactionCategory.salary,
      isIncome: true,
    ),
    TransactionModel(
      id: '5sd',
      payee: 'Dental Checkup',
      amount: 3122.1, // I know, I know. I should have brushed twice a day.
      date: DateTime.now().subtract(Duration(days: 2, hours: 5, minutes: 30)),
      category: TransactionCategory.health,
    ),
  ];
}

enum TransactionCategory {
  food(Icons.fastfood),
  bills(Icons.receipt),
  transport(Icons.directions_bus),
  shopping(Icons.shopping_cart),
  health(Icons.healing),
  entertainment(Icons.movie),
  salary(Icons.attach_money),
  others(Icons.category);

  final IconData icon;
  const TransactionCategory(this.icon);
}

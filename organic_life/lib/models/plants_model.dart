import 'dart:math';

class PlantsModel {
  final String name;
  final String assetPath;
  final String price;

  const PlantsModel({
    required this.name,
    required this.assetPath,
    required this.price,
  });

  static final List<PlantsModel> plants = [
    PlantsModel(
        name: 'Cactus',
        assetPath: 'assets/plants/plants_0.png',
        price:
            '${Random.secure().nextInt(24) + 9}.${Random.secure().nextInt(9) + 0}${Random.secure().nextInt(9) + 0}'),
    PlantsModel(
        name: 'Fern',
        assetPath: 'assets/plants/plants_1.png',
        price:
            '${Random.secure().nextInt(24) + 9}.${Random.secure().nextInt(9) + 0}${Random.secure().nextInt(9) + 0}'),
    PlantsModel(
        name: 'Palm',
        assetPath: 'assets/plants/plants_2.png',
        price:
            '${Random.secure().nextInt(24) + 9}.${Random.secure().nextInt(9) + 0}${Random.secure().nextInt(9) + 0}'),
    PlantsModel(
        name: 'Pine',
        assetPath: 'assets/plants/plants_3.png',
        price:
            '${Random.secure().nextInt(24) + 9}.${Random.secure().nextInt(9) + 0}${Random.secure().nextInt(9) + 0}'),
    PlantsModel(
        name: 'Rose',
        assetPath: 'assets/plants/plants_4.png',
        price:
            '${Random.secure().nextInt(24) + 9}.${Random.secure().nextInt(9) + 0}${Random.secure().nextInt(9) + 0}'),
    PlantsModel(
        name: 'Sunflower',
        assetPath: 'assets/plants/plants_5.png',
        price:
            '${Random.secure().nextInt(24) + 9}.${Random.secure().nextInt(9) + 0}${Random.secure().nextInt(9) + 0}'),
    PlantsModel(
        name: 'Cactus',
        assetPath: 'assets/plants/plants_6.png',
        price:
            '${Random.secure().nextInt(24) + 9}.${Random.secure().nextInt(9) + 0}${Random.secure().nextInt(9) + 0}'),
    PlantsModel(
        name: 'Fern',
        assetPath: 'assets/plants/plants_7.png',
        price:
            '${Random.secure().nextInt(24) + 9}.${Random.secure().nextInt(9) + 0}${Random.secure().nextInt(9) + 0}'),
    PlantsModel(
        name: 'Palm',
        assetPath: 'assets/plants/plants_8.png',
        price:
            '${Random.secure().nextInt(24) + 9}.${Random.secure().nextInt(9) + 0}${Random.secure().nextInt(9) + 0}'),
  ];
}

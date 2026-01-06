import 'dart:math';

class MemoriesModel {
  final String title;
  final int price;
  final int memoriesCount;
  final String assetPath;

  const MemoriesModel({
    required this.title,
    required this.price,
    required this.memoriesCount,
    required this.assetPath,
  });

  static List<MemoriesModel> getMrmories() {
    final list = <MemoriesModel>[
      MemoriesModel(
        title: 'Nature Walk',
        price: Random.secure().nextInt(43) + 46,
        memoriesCount: Random.secure().nextInt(423) + 357,
        assetPath: 'assets/scenary_0.png',
      ),
      MemoriesModel(
        title: 'Scuba Diving',
        price: Random.secure().nextInt(43) + 46,
        memoriesCount: Random.secure().nextInt(423) + 357,
        assetPath: 'assets/scenary_1.png',
      ),
      MemoriesModel(
        title: 'Parachute Jump',
        price: Random.secure().nextInt(43) + 46,
        memoriesCount: Random.secure().nextInt(423) + 357,
        assetPath: 'assets/scenary_2.png',
      ),
      MemoriesModel(
        title: 'Rafting',
        price: Random.secure().nextInt(43) + 46,
        memoriesCount: Random.secure().nextInt(423) + 357,
        assetPath: 'assets/scenary_3.png',
      ),
      MemoriesModel(
        title: 'Kayaking',
        price: Random.secure().nextInt(43) + 46,
        memoriesCount: Random.secure().nextInt(423) + 357,
        assetPath: 'assets/scenary_4.png',
      ),
      MemoriesModel(
        title: 'Mountain Climbing',
        price: Random.secure().nextInt(43) + 46,
        memoriesCount: Random.secure().nextInt(423) + 357,
        assetPath: 'assets/scenary_5.png',
      ),
      MemoriesModel(
        title: 'City Tour',
        price: Random.secure().nextInt(43) + 46,
        memoriesCount: Random.secure().nextInt(423) + 357,
        assetPath: 'assets/scenary_6.png',
      ),
      MemoriesModel(
        title: 'Nature Walk',
        price: Random.secure().nextInt(43) + 46,
        memoriesCount: Random.secure().nextInt(423) + 357,
        assetPath: 'assets/scenary_7.png',
      ),
      MemoriesModel(
        title: 'Water Sports',
        price: Random.secure().nextInt(43) + 46,
        memoriesCount: Random.secure().nextInt(423) + 357,
        assetPath: 'assets/scenary_8.png',
      ),
    ];

    return list;
  }
}

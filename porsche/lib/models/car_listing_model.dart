class CarListingModel {
  final String assetPath;
  final String name;

  const CarListingModel({required this.assetPath, required this.name});

  static List<CarListingModel> list = [
    CarListingModel(assetPath: 'assets/bmw1.png', name: 'BMW Q1'),
    CarListingModel(assetPath: 'assets/porsche1.png', name: 'Porche 911 GT3'),
  ];
}

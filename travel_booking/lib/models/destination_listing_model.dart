import 'dart:math';

import 'package:flag/flag.dart';

class DestinationListingModel {
  final String name;
  final FlagsCode flagCode;
  final int rooms;
  final int tours;

  const DestinationListingModel({
    required this.name,
    required this.flagCode,
    required this.rooms,
    required this.tours,
  });

  static final List<DestinationListingModel> destinations = [
    DestinationListingModel(
      name: 'Yarosl',
      flagCode: FlagsCode.values[Random.secure()
          .nextInt(FlagsCode.values.length)
          .clamp(1, FlagsCode.values.length - 1)],
      rooms: Random.secure().nextInt(50) + 10,
      tours: Random.secure().nextInt(3) + 2,
    ),
    DestinationListingModel(
      name: 'Yuito',
      flagCode: FlagsCode.values[Random.secure()
          .nextInt(FlagsCode.values.length)
          .clamp(1, FlagsCode.values.length - 1)],
      rooms: Random.secure().nextInt(50) + 10,
      tours: Random.secure().nextInt(3) + 2,
    ),
    DestinationListingModel(
      name: 'Trili',
      flagCode: FlagsCode.values[Random.secure()
          .nextInt(FlagsCode.values.length)
          .clamp(1, FlagsCode.values.length - 1)],
      rooms: Random.secure().nextInt(50) + 10,
      tours: Random.secure().nextInt(3) + 2,
    ),
    DestinationListingModel(
      name: 'Yupoa',
      flagCode: FlagsCode.values[Random.secure()
          .nextInt(FlagsCode.values.length)
          .clamp(1, FlagsCode.values.length - 1)],
      rooms: Random.secure().nextInt(50) + 10,
      tours: Random.secure().nextInt(3) + 2,
    ),
    DestinationListingModel(
      name: 'Rancho',
      flagCode: FlagsCode.values[Random.secure()
          .nextInt(FlagsCode.values.length)
          .clamp(1, FlagsCode.values.length - 1)],
      rooms: Random.secure().nextInt(50) + 10,
      tours: Random.secure().nextInt(3) + 2,
    ),
  ];
}

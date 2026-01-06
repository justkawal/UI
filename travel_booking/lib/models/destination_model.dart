import 'dart:math';

import 'package:flag/flag.dart';

class DestinationModel {
  final String destinationName;
  final List<FlagsCode> flags;

  const DestinationModel({
    required this.destinationName,
    required this.flags,
  });

  static final List<DestinationModel> destinations = [
    DestinationModel(destinationName: 'Quiet\nplace', flags: [
      for (int i = 0; i < 3; i++)
        FlagsCode.values[Random.secure()
            .nextInt(FlagsCode.values.length)
            .clamp(1, FlagsCode.values.length - 1)],
    ]),
    DestinationModel(destinationName: 'Romantic\ntrip', flags: [
      for (int i = 0; i < 3; i++)
        FlagsCode.values[Random.secure()
            .nextInt(FlagsCode.values.length)
            .clamp(1, FlagsCode.values.length - 1)],
    ]),
    DestinationModel(destinationName: 'Family\nvacation', flags: [
      for (int i = 0; i < 3; i++)
        FlagsCode.values[Random.secure()
            .nextInt(FlagsCode.values.length)
            .clamp(1, FlagsCode.values.length - 1)],
    ]),
    DestinationModel(destinationName: 'Nature', flags: [
      for (int i = 0; i < 3; i++)
        FlagsCode.values[Random.secure()
            .nextInt(FlagsCode.values.length)
            .clamp(1, FlagsCode.values.length - 1)],
    ]),
    DestinationModel(destinationName: 'City\nbreak', flags: [
      for (int i = 0; i < 3; i++)
        FlagsCode.values[Random.secure()
            .nextInt(FlagsCode.values.length)
            .clamp(1, FlagsCode.values.length - 1)],
    ]),
    DestinationModel(destinationName: 'Beach', flags: [
      for (int i = 0; i < 3; i++)
        FlagsCode.values[Random.secure()
            .nextInt(FlagsCode.values.length)
            .clamp(1, FlagsCode.values.length - 1)],
    ]),
    DestinationModel(destinationName: 'Mountain', flags: [
      for (int i = 0; i < 3; i++)
        FlagsCode.values[Random.secure()
            .nextInt(FlagsCode.values.length)
            .clamp(1, FlagsCode.values.length - 1)],
    ]),
  ];
}

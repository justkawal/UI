import 'dart:math';

class Profile {
  final String name;
  final String position;
  final String workingType;
  final String openRate;
  final String assetPath;

  const Profile({
    required this.name,
    required this.position,
    required this.workingType,
    required this.openRate,
    required this.assetPath,
  });

  static final profiles = [
    Profile(
      name: 'Tom Sheppard',
      position: 'CMO',
      workingType: 'Broker',
      assetPath: 'assets/profiles/profile_1.jpeg',
      openRate:
          '${Random.secure().nextInt(20) + 69}.${Random.secure().nextInt(8) + 1}%',
    ),
    Profile(
      name: 'Ella Simpson',
      position: 'CRM ',
      workingType: 'Analyst',
      assetPath: 'assets/profiles/profile_2.jpeg',
      openRate:
          '${Random.secure().nextInt(20) + 69}.${Random.secure().nextInt(8) + 1}%',
    ),
    Profile(
      name: 'Yuval Avidor',
      position: 'CYU',
      workingType: 'Bidder',
      assetPath: 'assets/profiles/profile_3.jpeg',
      openRate:
          '${Random.secure().nextInt(20) + 69}.${Random.secure().nextInt(8) + 1}%',
    ),
    Profile(
      name: 'Ricardo Pinto',
      position: 'COO',
      workingType: 'Growth',
      assetPath: 'assets/profiles/profile_1.jpeg',
      openRate:
          '${Random.secure().nextInt(20) + 69}.${Random.secure().nextInt(8) + 1}%',
    ),
    Profile(
      name: 'Mary Jane',
      position: 'CYO',
      workingType: 'Front',
      assetPath: 'assets/profiles/profile_2.jpeg',
      openRate:
          '${Random.secure().nextInt(20) + 69}.${Random.secure().nextInt(8) + 1}%',
    ),
  ];
}

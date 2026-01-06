class ProfileModel {
  final String id;
  final String name;
  final bool isOnline;
  final String assetPath;

  const ProfileModel({
    required this.id,
    required this.name,
    required this.isOnline,
    required this.assetPath,
  });

  static final dummyList = <ProfileModel>[
    ProfileModel(
      id: '1',
      name: 'Chloe',
      assetPath: 'emoji0.png',
      isOnline: true,
    ),
    ProfileModel(
      id: '2',
      name: 'Chloe',
      assetPath: 'emoji1.png',
      isOnline: false,
    ),
    ProfileModel(
      id: '3',
      name: 'Chloe',
      assetPath: 'emoji2.png',
      isOnline: true,
    ),
    ProfileModel(
      id: '4',
      name: 'Chloe',
      assetPath: 'emoji3.png',
      isOnline: false,
    ),
    ProfileModel(
      id: '5',
      name: 'Chloe',
      assetPath: 'emoji4.png',
      isOnline: false,
    ),
    ProfileModel(
      id: '6',
      name: 'Chloe',
      assetPath: 'emoji0.png',
      isOnline: false,
    ),
    ProfileModel(
      id: '7',
      name: 'Chloe',
      assetPath: 'emoji1.png',
      isOnline: false,
    ),
  ];
}

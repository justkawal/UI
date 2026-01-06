class ActivityModel {
  final String name;
  final String assetName;

  const ActivityModel({
    required this.name,
    required this.assetName,
  });

  static final List<ActivityModel> dummyList = [
    ActivityModel(
      name: 'Hiking',
      assetName: 'activity_1.jpeg',
    ),
    ActivityModel(
      name: 'Sky tours',
      assetName: 'activity_2.png',
    ),
    ActivityModel(
      name: 'Boating',
      assetName: 'activity_3.jpeg',
    ),
    ActivityModel(
      name: 'Camping',
      assetName: 'activity_4.jpeg',
    ),
    ActivityModel(
      name: 'Paragliding',
      assetName: 'activity_5.jpeg',
    ),
    ActivityModel(
      name: 'Sking',
      assetName: 'activity_6.jpeg',
    ),
    ActivityModel(
      name: 'Campfire',
      assetName: 'activity_7.jpeg',
    ),
  ];
}

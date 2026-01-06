import 'dart:math';

class ArtistModel {
  final String artistUID;
  final String description;
  bool isLiked;
  final int commentsCount;
  bool isBookmarked = true;
  final List<String> assetList;

  ArtistModel({
    required this.artistUID,
    required this.description,
    required this.isLiked,
    required this.commentsCount,
    required this.isBookmarked,
    required this.assetList,
  });

  // dummy data
  static final List<ArtistModel> dummyData = [
    ArtistModel(
      artistUID: 'susie_simmons',
      description: 'Hey, Check out my new Photo! 📸',
      isLiked: Random.secure().nextBool(),
      commentsCount: Random.secure().nextInt(2345) + 526,
      isBookmarked: Random.secure().nextBool(),
      assetList: [
        'assets/artist_0.png',
        'assets/artist_8.png',
        'assets/artist_3.png',
      ],
    ),
    ArtistModel(
      artistUID: 'isabel_wagner',
      description: 'Let\'s go to the beach! 🏖️',
      isLiked: Random.secure().nextBool(),
      commentsCount: Random.secure().nextInt(2345) + 526,
      isBookmarked: Random.secure().nextBool(),
      assetList: [
        'assets/artist_8.png',
        'assets/artist_2.png',
        'assets/artist_1.png',
      ],
    ),
    ArtistModel(
      artistUID: 'yvonne_watson',
      description: 'Party tonight! 🎉',
      isLiked: Random.secure().nextBool(),
      commentsCount: Random.secure().nextInt(2345) + 526,
      isBookmarked: Random.secure().nextBool(),
      assetList: [
        'assets/artist_10.png',
        'assets/artist_6.png',
        'assets/artist_9.png',
      ],
    ),
    ArtistModel(
      artistUID: 'quinn_henry',
      description: '2 days left for the 🎤 concert!',
      isLiked: Random.secure().nextBool(),
      commentsCount: Random.secure().nextInt(2345) + 526,
      isBookmarked: Random.secure().nextBool(),
      assetList: [
        'assets/artist_3.png',
        'assets/artist_0.png',
        'assets/artist_8.png',
      ],
    ),
    ArtistModel(
      artistUID: 'taylor_hill',
      description: 'G☀️☀️d Morning!',
      isLiked: Random.secure().nextBool(),
      commentsCount: Random.secure().nextInt(2345) + 526,
      isBookmarked: Random.secure().nextBool(),
      assetList: [
        'assets/artist_4.png',
        'assets/artist_8.png',
        'assets/artist_9.png',
      ],
    ),
    ArtistModel(
      artistUID: 'danielle_morris',
      description: 'On my waaay to the stuuudio!',
      isLiked: Random.secure().nextBool(),
      commentsCount: Random.secure().nextInt(2345) + 526,
      isBookmarked: Random.secure().nextBool(),
      assetList: [
        'assets/artist_5.png',
        'assets/artist_4.png',
        'assets/artist_1.png',
      ],
    ),
    ArtistModel(
      artistUID: 'elijah_brown',
      description: 'New Album is out now!',
      isLiked: Random.secure().nextBool(),
      commentsCount: Random.secure().nextInt(2345) + 526,
      isBookmarked: Random.secure().nextBool(),
      assetList: [
        'assets/artist_6.png',
        'assets/artist_10.png',
        'assets/artist_7.png',
      ],
    ),
    ArtistModel(
      artistUID: 'willie_brooks',
      // keep on suggesting icons
      description: 'Dancing in the rain!',
      isLiked: Random.secure().nextBool(),
      commentsCount: Random.secure().nextInt(2345) + 526,
      isBookmarked: Random.secure().nextBool(),
      assetList: [
        'assets/artist_2.png',
        'assets/artist_5.png',
        'assets/artist_6.png',
      ],
    ),
  ];
}

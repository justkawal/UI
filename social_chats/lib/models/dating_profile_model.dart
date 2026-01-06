import 'dart:math';

class DatingProfileModel {
  final String name;
  final int distanceInFt;
  final int age;
  final bool isOnline;
  final String bio;
  final List<String> hobbies;

  const DatingProfileModel({
    required this.name,
    required this.distanceInFt,
    required this.isOnline,
    required this.age,
    required this.bio,
    required this.hobbies,
  });

  static List<String> getAssetPaths() {
    final list =
        List.generate(13, (index) => 'assets/profiles/profile_$index.png');
    list.shuffle();
    return list;
  }

  static List<DatingProfileModel> getCandidates() {
    List<DatingProfileModel> candidates = [
      DatingProfileModel(
        name: 'Hannah',
        distanceInFt: Random.secure().nextInt(50) + 100,
        age: Random.secure().nextInt(10) + 25,
        isOnline: Random.secure().nextBool(),
        bio: 'I\'m a cool person with a lot of hobbies. '
            'I like to hike, read, swim, draw, model, and design. '
            'In my free time, I like to go out and have fun with my friends. '
            'I\'m looking for someone who shares my interests and is'
            ' looking for a serious relationship.',
        hobbies: _getShuffledHobies(),
      ),
      DatingProfileModel(
        name: 'Jane',
        distanceInFt: Random.secure().nextInt(50) + 100,
        age: Random.secure().nextInt(10) + 25,
        isOnline: Random.secure().nextBool(),
        bio: 'I\'m a cool person with a lot of hobbies. '
            'I like to hike, read, swim, draw, model, and design. '
            'In my free time, I like to go out and have fun with my friends. '
            'I\'m looking for someone who shares my interests and is'
            ' looking for a serious relationship.',
        hobbies: _getShuffledHobies(),
      ),
      DatingProfileModel(
        name: 'Katie',
        distanceInFt: Random.secure().nextInt(50) + 100,
        age: Random.secure().nextInt(10) + 25,
        isOnline: Random.secure().nextBool(),
        bio: 'I\'m a cool person with a lot of hobbies. '
            'I like to hike, read, swim, draw, model, and design. '
            'In my free time, I like to go out and have fun with my friends. '
            'I\'m looking for someone who shares my interests and is'
            ' looking for a serious relationship.',
        hobbies: _getShuffledHobies(),
      ),
      DatingProfileModel(
        name: 'Emily',
        distanceInFt: Random.secure().nextInt(50) + 100,
        age: Random.secure().nextInt(10) + 25,
        isOnline: Random.secure().nextBool(),
        bio: 'I\'m a cool person with a lot of hobbies. '
            'I like to hike, read, swim, draw, model, and design. '
            'In my free time, I like to go out and have fun with my friends. '
            'I\'m looking for someone who shares my interests and is'
            ' looking for a serious relationship.',
        hobbies: _getShuffledHobies(),
      ),
      DatingProfileModel(
        name: 'Diana',
        distanceInFt: Random.secure().nextInt(50) + 100,
        age: Random.secure().nextInt(10) + 25,
        isOnline: Random.secure().nextBool(),
        bio: 'I\'m a cool person with a lot of hobbies. '
            'I like to hike, read, swim, draw, model, and design. '
            'In my free time, I like to go out and have fun with my friends. '
            'I\'m looking for someone who shares my interests and is'
            ' looking for a serious relationship.',
        hobbies: _getShuffledHobies(),
      ),
      DatingProfileModel(
        name: 'Samantha',
        distanceInFt: Random.secure().nextInt(50) + 100,
        age: Random.secure().nextInt(10) + 25,
        isOnline: Random.secure().nextBool(),
        bio: 'I\'m a cool person with a lot of hobbies. '
            'I like to hike, read, swim, draw, model, and design. '
            'In my free time, I like to go out and have fun with my friends. '
            'I\'m looking for someone who shares my interests and is'
            ' looking for a serious relationship.',
        hobbies: _getShuffledHobies(),
      ),
      DatingProfileModel(
        name: 'Isabella',
        distanceInFt: Random.secure().nextInt(50) + 100,
        age: Random.secure().nextInt(10) + 25,
        isOnline: Random.secure().nextBool(),
        bio: 'I\'m a cool person with a lot of hobbies. '
            'I like to hike, read, swim, draw, model, and design. '
            'In my free time, I like to go out and have fun with my friends. '
            'I\'m looking for someone who shares my interests and is'
            ' looking for a serious relationship.',
        hobbies: _getShuffledHobies(),
      ),
      DatingProfileModel(
        name: 'Ella',
        distanceInFt: Random.secure().nextInt(50) + 100,
        age: Random.secure().nextInt(10) + 25,
        isOnline: Random.secure().nextBool(),
        bio: 'I\'m a cool person with a lot of hobbies. '
            'I like to hike, read, swim, draw, model, and design. '
            'In my free time, I like to go out and have fun with my friends. '
            'I\'m looking for someone who shares my interests and is'
            ' looking for a serious relationship.',
        hobbies: _getShuffledHobies(),
      ),
      DatingProfileModel(
        name: 'Olivia',
        distanceInFt: Random.secure().nextInt(50) + 100,
        age: Random.secure().nextInt(10) + 25,
        isOnline: Random.secure().nextBool(),
        bio: 'I\'m a cool person with a lot of hobbies. '
            'I like to hike, read, swim, draw, model, and design. '
            'In my free time, I like to go out and have fun with my friends. '
            'I\'m looking for someone who shares my interests and is'
            ' looking for a serious relationship.',
        hobbies: _getShuffledHobies(),
      ),
    ];

    candidates.shuffle();
    return candidates;
  }

  static List<String> _getShuffledHobies() {
    final hobbies = [
      'Hiking',
      'Reading',
      'Swimming',
      'Drawing',
      'Modeling',
      'Designing',
    ];

    hobbies.shuffle();

    hobbies.removeAt(Random.secure().nextInt(hobbies.length));
    if (Random.secure().nextBool()) {
      hobbies.removeAt(Random.secure().nextInt(hobbies.length));
    }

    return hobbies;
  }
}

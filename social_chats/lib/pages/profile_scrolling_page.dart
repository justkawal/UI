import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:social_chats/models/dating_profile_model.dart';
import 'package:social_chats/utils/colors.dart';

class DatingProfile extends StatefulWidget {
  final List<DatingProfileModel> candidates;
  final List<String> assetPaths;
  final int initialIndex;
  const DatingProfile({
    required this.initialIndex,
    required this.candidates,
    required this.assetPaths,
    super.key,
  });

  @override
  State<DatingProfile> createState() => DatingProfilePageState();
}

class DatingProfilePageState extends State<DatingProfile> {
  final CardSwiperController controller = CardSwiperController();

  List<Widget> cards = [];

  @override
  void initState() {
    super.initState();
    setState(() {
      cards = List.generate(
          widget.candidates.length,
          (index) => DaitngProfileCard(
                assetPath: widget.assetPaths[index % widget.assetPaths.length],
                candidate: widget.candidates[index],
                controller: controller,
              )).toList();
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: CardSwiper(
              controller: controller,
              cardsCount: 20,
              maxAngle: 80,
              initialIndex: widget.initialIndex,
              allowedSwipeDirection:
                  AllowedSwipeDirection.only(left: true, right: true),
              numberOfCardsDisplayed: 3,
              backCardOffset: const Offset(0, 0),
              padding: const EdgeInsets.all(0),
              cardBuilder: (context, index, horizontalThresholdPercentage,
                      verticalThresholdPercentage) =>
                  cards[index % cards.length],
            ),
          ),
          Positioned(
            top: 50,
            left: 20,
            child: GestureDetector(
              onTap: () => Navigator.pop(context),
              behavior: HitTestBehavior.translucent,
              child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.4),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding: const EdgeInsets.all(13),
                  child: Icon(
                    Icons.arrow_back_rounded,
                    size: 25,
                    color: Colors.white,
                  )),
            ),
          ),
        ],
      ),
    );
  }
}

class ProfileScrollingPage extends StatelessWidget {
  const ProfileScrollingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

class DaitngProfileCard extends StatelessWidget {
  final CardSwiperController controller;
  final String assetPath;
  final DatingProfileModel candidate;

  const DaitngProfileCard({
    required this.assetPath,
    required this.candidate,
    required this.controller,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(30)),
      ),
      child: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              assetPath,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 320,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.black.withOpacity(0),
                    Colors.black.withOpacity(0.75),
                    Colors.black.withOpacity(1),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 10,
            child: Container(
              height: 320,
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        '${candidate.name}, ${candidate.age}',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(width: 10),
                      if (candidate.isOnline)
                        Container(
                          width: 8,
                          height: 8,
                          decoration: BoxDecoration(
                            color: Colors.lightGreen,
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Text(
                    '${candidate.distanceInFt}ft from you',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Wrap(
                    runSpacing: 5,
                    children: candidate.hobbies
                        .map(
                          (hobby) => Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 5,
                            ),
                            margin: const EdgeInsets.only(right: 5),
                            decoration: BoxDecoration(
                              color: Colors.grey.shade300.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text(
                              hobby,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        )
                        .toList(),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Bio',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    candidate.bio,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.8),
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        height: 1.1),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: GestureDetector(
                          behavior: HitTestBehavior.translucent,
                          onTap: () =>
                              controller.swipe(CardSwiperDirection.left),
                          child: Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              color: SocialChatsColor.darkGrey,
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: const Icon(
                              Icons.clear,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: GestureDetector(
                          behavior: HitTestBehavior.translucent,
                          onTap: () =>
                              controller.swipe(CardSwiperDirection.right),
                          child: Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              color: SocialChatsColor.purple,
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: const Icon(
                              Icons.favorite,
                              color: Colors.red,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:journeys/utilities/colors.dart';
import 'package:journeys/widgets/amenities_widget.dart';
import 'package:journeys/widgets/confirm_button_widget.dart';
import 'package:journeys/widgets/frosted_widget.dart';
import 'package:journeys/widgets/rooms_image_widget.dart';

class DestinationDetailsPage extends StatelessWidget {
  final String imageName;
  final String tag;
  const DestinationDetailsPage(
      {required this.tag, required this.imageName, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: JourneyColors.white,
      body: Stack(
        children: [
          Positioned.fill(
            child: ListView(
              padding: const EdgeInsets.all(0),
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height + 360,
                  child: Stack(
                    children: [
                      Positioned(
                        top: 0,
                        left: 0,
                        right: 0,
                        child: Hero(
                          tag: tag,
                          child: AnimatedContainer(
                            height: MediaQuery.of(context).size.height * 0.54,
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(55),
                                topRight: Radius.circular(55),
                              ),
                            ),
                            duration: const Duration(milliseconds: 200),
                            child: ClipRRect(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(55),
                                topRight: Radius.circular(55),
                              ),
                              child: Image.asset(
                                'assets/scenary/$imageName.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                      popButton(context),
                      menuButton(),
                      Positioned(
                        top: MediaQuery.of(context).size.height * 0.47,
                        left: 0,
                        right: 0,
                        child: Container(
                          height: MediaQuery.of(context).size.height,
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(1),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(50),
                              topRight: Radius.circular(50),
                            ),
                          ),
                          padding: const EdgeInsets.only(
                              left: 25, right: 25, top: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ratingWidget(),
                              const SizedBox(height: 10),
                              titleWidget(),
                              const SizedBox(height: 8),
                              Text(
                                '4 Bedroom, 2 Guest, 2 Bath',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey.shade800,
                                  letterSpacing: .1,
                                ),
                              ),
                              const SizedBox(height: 10),
                              RoomsImagesWidget(),
                              const SizedBox(height: 15),
                              Text(
                                'Amenities',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                    letterSpacing: -.6),
                              ),
                              const SizedBox(height: 10),
                              AmenitiesWidget(),
                              const SizedBox(height: 15),
                              Text(
                                'About Pine Village',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                    letterSpacing: -.6),
                              ),
                              const SizedBox(height: 5),
                              Text(
                                'Relaxing Pine Village is a beautiful place to stay with your family and friends. '
                                'It is located in the heart of the city and is surrounded by beautiful sceneries. '
                                'The village is a perfect place to relax and enjoy the beauty of nature. '
                                'Also, the village has a lot of amenities that will make your stay comfortable '
                                'and enjoyable. The village is a perfect place to relax and enjoy the beauty of nature. '
                                'Additionally, not only you gets to enjoy the beauty of nature, but nearby historical sites '
                                'and other attractions are also available for you to explore.',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black,
                                    letterSpacing: -.6),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 30,
            left: 30,
            right: 30,
            child: ConfirmButton(actionName: 'Book Now'),
          ),
        ],
      ),
    );
  }

  Row titleWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Relaxing Pine Village',
          style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.w600,
              color: Colors.black,
              letterSpacing: -.6),
        ),
        Container(
          height: 40,
          width: 70,
          decoration: BoxDecoration(
            color: Colors.grey.shade200.withOpacity(.8),
            borderRadius: BorderRadius.circular(20),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '4.5km',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: JourneyColors.darkGreen,
                  letterSpacing: .1,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Container ratingWidget() {
    return Container(
      height: 32,
      width: 69,
      decoration: BoxDecoration(
        color: JourneyColors.lightGreen2,
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            CupertinoIcons.star_fill,
            size: 22,
            color: JourneyColors.orange,
          ),
          const SizedBox(width: 5),
          Text(
            '4.5',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  Positioned menuButton() {
    return Positioned(
      top: 60,
      right: 20,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: SizedBox(
          height: 60,
          width: 60,
          child: FrostedWidget(
            padding: const EdgeInsets.all(5),
            borderRadius: BorderRadius.circular(30),
            color: Colors.grey.withOpacity(.1),
            child: Icon(CupertinoIcons.ellipsis_vertical),
          ),
        ),
      ),
    );
  }

  Positioned popButton(BuildContext context) {
    return Positioned(
      top: 60,
      left: 20,
      child: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: SizedBox(
            height: 60,
            width: 60,
            child: FrostedWidget(
              padding: const EdgeInsets.all(5),
              borderRadius: BorderRadius.circular(30),
              color: Colors.grey.withOpacity(.1),
              child: Icon(
                CupertinoIcons.chevron_back,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

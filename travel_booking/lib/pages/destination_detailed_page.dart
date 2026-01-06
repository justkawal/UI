import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_booking/utils/colors.dart';

class DestinationDetailedPage extends StatelessWidget {
  final String destinationName;
  final int assetIndex;
  const DestinationDetailedPage(
      {required this.assetIndex, required this.destinationName, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TravelColors.offWhite,
      body: ListView(
        padding: const EdgeInsets.only(bottom: 100),
        children: [
          SizedBox(
            height: 380,
            child: Stack(
              children: [
                Positioned.fill(
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                    child: Image.asset(
                      'assets/destinations/destination_$assetIndex.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  left: 30,
                  top: 120,
                  child: Text(
                    destinationName,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 63,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Positioned(
                  top: 70,
                  left: 20,
                  right: 20,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        behavior: HitTestBehavior.translucent,
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Icon(
                          Icons.arrow_back_rounded,
                          color: Colors.black,
                          size: 35,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const Icon(
                          Icons.favorite_border_rounded,
                          color: Colors.black,
                          size: 25,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 25),
          Container(
            height: 230,
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    padding: const EdgeInsets.only(
                        left: 30, right: 30, top: 20, bottom: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 100,
                          width: 100,
                          child: Stack(
                            children: [
                              Positioned(
                                top: 20,
                                left: 40,
                                child: Image.asset(
                                  // This icon is from FreePik
                                  'assets/icons/aeroplane.png',
                                  fit: BoxFit.cover,
                                  height: 20,
                                ),
                              ),
                              Positioned(
                                bottom: 10,
                                right: 0,
                                child: Image.asset(
                                  // This icon is from FreePik
                                  'assets/icons/suitcase.png',
                                  fit: BoxFit.cover,
                                  height: 60,
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                left: -5,
                                child: Image.asset(
                                  'assets/icons/camp.png',
                                  fit: BoxFit.cover,
                                  height: 70,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          'Choose dates',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                              height: 1.2,
                              letterSpacing: 1.5),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: Column(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(
                              color: Colors.grey.shade400.withOpacity(0.5),
                            ),
                          ),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 30,
                            vertical: 17,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Mon, ${Random.secure().nextInt(25) + 1} Sep',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        '${Random.secure().nextInt(10) + 14}',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 34,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      const SizedBox(width: 5),
                                      Text(
                                        '°',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Icon(
                                    CupertinoIcons.cloud_rain,
                                    color: Colors.black,
                                    size: 25,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(
                              color: Colors.grey.shade400.withOpacity(0.5),
                            ),
                          ),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 25,
                            vertical: 10,
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Prices from',
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          '\$232',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 33,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 8,
                                margin:
                                    const EdgeInsets.only(top: 5, bottom: 16),
                                decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(.3),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    for (int i = 0;
                                        i < Random.secure().nextInt(4) + 1;
                                        i++)
                                      Container(
                                        height: 13,
                                        width: 8,
                                        margin: const EdgeInsets.only(top: 2),
                                        decoration: BoxDecoration(
                                          color: TravelColors.lightGreen,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                      ),
                                  ],
                                ),
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
          const SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              children: [
                Text(
                  'Hotel Offers',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(width: 10),
                Icon(
                  Icons.arrow_forward_rounded,
                  color: Colors.grey,
                  size: 20,
                ),
              ],
            ),
          ),
          const SizedBox(height: 25),
          HotelOffersWidget(),
          const SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              children: [
                Text(
                  'Popular Tours',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(width: 10),
                Icon(
                  Icons.arrow_forward_rounded,
                  color: Colors.grey,
                  size: 20,
                ),
              ],
            ),
          ),
          const SizedBox(height: 25),
          HotelOffersWidget(
            shiftImageIndex: 3,
          ),
        ],
      ),
    );
  }
}

class HotelOffersWidget extends StatelessWidget {
  final int shiftImageIndex;
  const HotelOffersWidget({
    this.shiftImageIndex = 0,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: ListView.builder(
        padding: const EdgeInsets.only(left: 25),
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          final rating =
              (Random.secure().nextInt(3) + 2) + Random.secure().nextDouble();
          return GestureDetector(
            behavior: HitTestBehavior.translucent,
            onTap: () {
              Navigator.pushReplacement(
                context,
                CupertinoPageRoute(
                  builder: (context) => DestinationDetailedPage(
                    assetIndex: (index + shiftImageIndex) % 6,
                    destinationName: 'Yutoa',
                  ),
                ),
              );
            },
            child: Container(
              margin: const EdgeInsets.only(right: 20),
              height: 140,
              width: 220,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 150,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/destinations/destination_${(index + shiftImageIndex) % 6}.png',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Container(
                        height: 20,
                        width: 40,
                        decoration: BoxDecoration(
                          color: TravelColors.lightGreen,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Center(
                          child: Text(
                            rating.toStringAsPrecision(2),
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Row(
                        children: [
                          for (int i = 1; i <= 5; i++)
                            Icon(
                              CupertinoIcons.star_fill,
                              color: i < rating ? Colors.black : Colors.grey,
                              size: 15,
                            ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

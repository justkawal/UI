import 'package:flag/flag.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_booking/models/destination_category_model.dart';
import 'package:travel_booking/models/destination_listing_model.dart';
import 'package:travel_booking/pages/destination_detailed_page.dart';
import 'package:travel_booking/utils/colors.dart';

class DestinationCategoryListingPage extends StatefulWidget {
  const DestinationCategoryListingPage({Key? key}) : super(key: key);

  @override
  State<DestinationCategoryListingPage> createState() =>
      _DestinationCategoryListingPageState();
}

class _DestinationCategoryListingPageState
    extends State<DestinationCategoryListingPage> {
  int _selectedCategoryIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TravelColors.offWhite,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: SizedBox(
                    height: 25,
                    width: 25,
                    child: Icon(
                      CupertinoIcons.arrow_left,
                      size: 30,
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(18),
                  child: SizedBox(
                    height: 45,
                    width: 45,
                    child: Image.asset(
                      'assets/profile.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text(
              'Quiet place',
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.w400,
                letterSpacing: -1.2,
                height: 1.4,
              ),
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: 40,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(left: 25),
              itemCount: DestinationCategoryModel.destinationCategories.length,
              itemBuilder: (context, index) {
                final category =
                    DestinationCategoryModel.destinationCategories[index];
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedCategoryIndex = index;
                    });
                  },
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    height: 20,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 22, vertical: 5),
                    decoration: BoxDecoration(
                      color: _selectedCategoryIndex == index
                          ? Colors.black
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(13),
                      border: Border.all(
                        color: _selectedCategoryIndex == index
                            ? Colors.black
                            : Colors.grey[300]!,
                      ),
                    ),
                    margin: const EdgeInsets.only(right: 13),
                    child: Row(
                      children: [
                        Icon(
                          category.iconData,
                          size: 17,
                          color: _selectedCategoryIndex == index
                              ? Colors.white
                              : Colors.grey,
                        ),
                        const SizedBox(width: 15),
                        Text(
                          category.categoryName,
                          style: TextStyle(
                            fontSize: 17,
                            color: _selectedCategoryIndex == index
                                ? Colors.white
                                : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 60),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, bottom: 50),
            child: Wrap(
              spacing: 13,
              runSpacing: 60,
              children: List.generate(15, (index) {
                final model = DestinationListingModel.destinations[
                    index % DestinationListingModel.destinations.length];
                return GestureDetector(
                  behavior: HitTestBehavior.translucent,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DestinationDetailedPage(
                          destinationName: model.name,
                          assetIndex: index % 5,
                        ),
                      ),
                    );
                  },
                  child: SizedBox(
                    height: 300,
                    width: MediaQuery.of(context).size.width / 2 - 17,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 220,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                right: 0,
                                bottom: 17.5,
                                top: 0,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(100),
                                    topRight: Radius.circular(100),
                                    bottomLeft: Radius.circular(15),
                                    bottomRight: Radius.circular(15),
                                  ),
                                  child: Image.asset(
                                    'assets/destinations/destination_${index % 5}.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                  height: 35,
                                  width: 35,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(
                                      color: Colors.white,
                                      width: 1.9,
                                    ),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Flag.fromCode(
                                      model.flagCode,
                                      height: 35,
                                      width: 35,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          model.name,
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w400,
                              height: 1.4),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.local_hotel_rounded,
                                      size: 15,
                                      color: Colors.grey[700],
                                    ),
                                    const SizedBox(width: 10),
                                    Text(
                                      '${model.rooms} hotels',
                                      style: TextStyle(
                                        fontSize: 10,
                                        color: Colors.grey[700],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.location_on_rounded,
                                      size: 15,
                                      color: Colors.grey[700],
                                    ),
                                    const SizedBox(width: 10),
                                    Text(
                                      '${model.tours} tours',
                                      style: TextStyle(
                                        fontSize: 11,
                                        color: Colors.grey[700],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}

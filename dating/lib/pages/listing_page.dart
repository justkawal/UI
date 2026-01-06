import 'dart:async';

import 'package:dating/model/dating_profile_model.dart';
import 'package:dating/pages/profile_detailed_page.dart';
import 'package:dating/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListingPage extends StatefulWidget {
  const ListingPage({Key? key}) : super(key: key);

  @override
  State<ListingPage> createState() => _ListingPageState();
}

class _ListingPageState extends State<ListingPage> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DatingColors.backgroundColor,
      body: ListView(
        padding:
            const EdgeInsets.only(top: 70, left: 20, right: 20, bottom: 70),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                CupertinoIcons.slider_horizontal_3,
                color: Colors.blueGrey.shade700,
                size: 28,
              ),
              const Spacer(),
              GestureDetector(
                behavior: HitTestBehavior.translucent,
                onTap: () {
                  setState(() {
                    _selectedIndex = 0;
                  });
                },
                child: Text(
                  'For you',
                  style: TextStyle(
                    color: _selectedIndex == 0
                        ? Colors.black
                        : DatingColors.lightGreyColor,
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const SizedBox(width: 13),
              GestureDetector(
                behavior: HitTestBehavior.translucent,
                onTap: () {
                  setState(() {
                    _selectedIndex = 1;
                  });
                },
                child: Text(
                  'Nearby',
                  style: TextStyle(
                    color: _selectedIndex == 1
                        ? Colors.black
                        : DatingColors.lightGreyColor,
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const Spacer(),
              SizedBox(
                height: 45,
                width: 45,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.asset(
                    'assets/profiles/profile_4.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
          for (int i = 0; i < DatingProfileModel.dummyData.length; i++) ...[
            if (i != 0)
              Divider(
                color: Colors.black,
                height: 3,
              ),
            const SizedBox(height: 10),
            DatingProfileWidget(
              model: DatingProfileModel.dummyData[i],
            ),
          ]
        ],
      ),
    );
  }
}

class DatingProfileWidget extends StatefulWidget {
  final DatingProfileModel model;
  const DatingProfileWidget({
    required this.model,
    super.key,
  });

  @override
  State<DatingProfileWidget> createState() => _DatingProfileWidgetState();
}

class _DatingProfileWidgetState extends State<DatingProfileWidget> {
  int _currentMatchPercentage = 0;

  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(milliseconds: 6), (timer) {
      if (_currentMatchPercentage < widget.model.matchPercentage) {
        setState(() {
          _currentMatchPercentage++;
        });
      } else {
        timer.cancel();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProfileDetailedPage(
              model: widget.model,
            ),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 15),
        height: 270,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 200,
              width: double.infinity,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  widget.model.assetPath,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          '${widget.model.name}, ${widget.model.age}',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        if (widget.model.name == 'Linda' ||
                            widget.model.isOnline)
                          const SizedBox(width: 9),
                        if (widget.model.name == 'Linda' ||
                            widget.model.isOnline)
                          Container(
                            height: 8,
                            width: 8,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: DatingColors.lightGreenColor,
                            ),
                          ),
                      ],
                    ),
                    Text(
                      widget.model.location,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.5,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 38,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 14, vertical: 5),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    '$_currentMatchPercentage% match',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

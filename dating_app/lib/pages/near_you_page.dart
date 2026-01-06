import 'package:firechat/utils/utils.dart';
import 'package:firechat/widgets/heading.dart';
import 'package:firechat/widgets/shadow_box.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NearYouPage extends StatelessWidget {
  final String name;
  final String profileImagePath;
  const NearYouPage(
      {required this.name, required this.profileImagePath, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            const SizedBox(height: 60),
            Heading(
              heading: 'Near You',
              onLeftTap: () => Navigator.pop(context),
              onRightTap: null,
              rightIcon: Icons.menu_rounded,
              rightColor: FireChatColors.lightGreen,
              leftIcon: Icons.arrow_back,
            ),
            const SizedBox(height: 30),
            ShadowBox(
              width: MediaQuery.of(context).size.width - 25,
              height: 540,
              color: FireChatColors.purple,
              offset: Offset(5, 7),
              borderColor: Colors.transparent,
              borderRadius: 20,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    SizedBox(
                      height: 425,
                      child: Stack(
                        children: [
                          Align(
                            alignment: Alignment.topCenter,
                            child: ShadowBox(
                              width: MediaQuery.of(context).size.width - 55,
                              height: 405,
                              color: FireChatColors.purple,
                              borderWidth: 2.4,
                              borderRadius: 20,
                              offset: Offset(0, 0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(18),
                                child: Image.asset(
                                  profileImagePath,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ShadowBox(
                                  width: 82,
                                  height: 85,
                                  child: const Icon(
                                    Icons.clear_rounded,
                                    size: 40,
                                  ),
                                ),
                                const SizedBox(width: 30),
                                ShadowBox(
                                  width: 82,
                                  height: 85,
                                  color: FireChatColors.lightPink,
                                  child: const Icon(
                                    CupertinoIcons.heart_solid,
                                    color: Colors.pink,
                                    size: 35,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '$name, 22',
                              style: TextStyle(
                                  fontSize: 29, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 3),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(Icons.location_on_rounded, size: 16),
                                const SizedBox(width: 5),
                                const Text(
                                  'Toronto, Canada',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ],
                        ),
                        ShadowBox(
                          width: 53,
                          height: 53,
                          borderRadius: 50,
                          offset: Offset(1.5, 1.5),
                          child: const Icon(
                            Icons.arrow_downward_rounded,
                            size: 25,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ShadowBox(
                  width: 75,
                  height: 77,
                  color: FireChatColors.lightOrange,
                  child: const Icon(Icons.electric_bolt_rounded,
                      size: 35, color: Colors.red),
                ),
                ShadowBox(
                  width: 75,
                  height: 77,
                  child: const Icon(CupertinoIcons.star_fill,
                      size: 35, color: Colors.orange),
                ),
                ShadowBox(
                  width: 75,
                  height: 77,
                  child: const Icon(CupertinoIcons.chat_bubble_2_fill,
                      size: 35, color: Colors.blue),
                ),
                ShadowBox(
                  width: 75,
                  height: 77,
                  child: const Icon(CupertinoIcons.gift_fill,
                      size: 35, color: Colors.green),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

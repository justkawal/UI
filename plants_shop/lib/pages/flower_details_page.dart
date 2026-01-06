import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plants_shop/models/flower_feature_model.dart';
import 'package:plants_shop/utils/colors.dart';

class FlowerDetailsPage extends StatelessWidget {
  final String assetPath;
  final String tag;
  const FlowerDetailsPage(
      {required this.tag, required this.assetPath, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 70),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 70,
                      width: 160,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey.shade300,
                          width: 1.5,
                        ),
                        borderRadius: BorderRadius.circular(70),
                      ),
                      padding: const EdgeInsets.only(
                          left: 4, top: 4, bottom: 4, right: 15),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            bottom: 0,
                            child: Container(
                              width: 60,
                              decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                                borderRadius: BorderRadius.circular(75),
                              ),
                            ),
                          ),
                          Positioned.fill(
                            child: Row(
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 5),
                                    child: Icon(
                                      CupertinoIcons.arrow_left,
                                      color: Colors.black,
                                      size: 23,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 6),
                                Expanded(
                                  child: Text(
                                    'Go Back',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey.shade300,
                          width: 1.5,
                        ),
                        borderRadius: BorderRadius.circular(70),
                      ),
                      child: Icon(
                        Icons.more_vert_rounded,
                        color: Colors.black,
                        size: 23,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                SizedBox(
                  height: 300,
                  width: double.infinity,
                  child: Stack(
                    children: [
                      Positioned.fill(
                        child: Hero(
                          tag: tag,
                          child: Image.asset(
                            assetPath,
                            height: 200,
                          ),
                        ),
                      ),
                      Positioned(
                        right: 5,
                        bottom: 50,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(17),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                blurRadius: 10,
                                spreadRadius: 1,
                              ),
                            ],
                          ),
                          padding: const EdgeInsets.only(
                              left: 20, top: 12, bottom: 15, right: 30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Good growth',
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  color: PlantsColor.greenColor,
                                ),
                              ),
                              Text(
                                '12 days ago planted',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey.shade400,
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: -1,
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
          ListView(
            padding: const EdgeInsets.only(top: 480, bottom: 100),
            children: [
              SizedBox(
                height: 180,
                width: double.infinity,
                child: Stack(
                  children: [
                    Positioned(
                      top: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        height: 110,
                        decoration: BoxDecoration(
                          color: PlantsColor.greenColor,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50),
                            topRight: Radius.circular(50),
                          ),
                        ),
                        padding: const EdgeInsets.only(top: 17),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.qr_code_scanner,
                              color: Colors.black38,
                              size: 25,
                            ),
                            const SizedBox(width: 8),
                            Text(
                              'Scan your plant',
                              style: TextStyle(
                                color: Colors.black45,
                                fontSize: 17,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        height: 120,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50),
                            topRight: Radius.circular(50),
                          ),
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              'Artificial\nMaze',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 37,
                                fontWeight: FontWeight.w600,
                                height: 1,
                              ),
                            ),
                            Container(
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                color: Colors.grey.shade100,
                                shape: BoxShape.circle,
                              ),
                              child: Icon(
                                Icons.favorite_border,
                                color: Colors.grey.shade500,
                                size: 25,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                padding: const EdgeInsets.only(left: 25, right: 25, top: 20),
                child: Wrap(
                  spacing: 12,
                  runSpacing: 12,
                  children: [
                    for (int i = 0; i < FlowerFeatureModel.features.length; i++)
                      FlowerFeatureWidget(
                        features: FlowerFeatureModel.features[i],
                      ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class FlowerFeatureWidget extends StatelessWidget {
  final FlowerFeatureModel features;
  const FlowerFeatureWidget({
    required this.features,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      width: MediaQuery.of(context).size.width / 2 - 31,
      decoration: BoxDecoration(
        color: features.backgroundColor,
        border: Border.all(
          color: Colors.grey.shade300,
          width: 1.2,
        ),
        borderRadius: BorderRadius.circular(25),
      ),
      padding: const EdgeInsets.only(left: 20, top: 20, bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(17),
            decoration: BoxDecoration(
              color: features.iconBackgroundColor,
              shape: BoxShape.circle,
            ),
            child: Icon(
              features.icon,
              color: features.iconColor,
              size: 24,
            ),
          ),
          const SizedBox(height: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                features.title,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black54,
                  fontWeight: FontWeight.w700,
                  letterSpacing: -1,
                ),
              ),
              Text(
                features.value,
                style: TextStyle(
                  fontSize: 21,
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  letterSpacing: -1,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

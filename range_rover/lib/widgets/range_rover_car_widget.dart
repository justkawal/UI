import 'package:flutter/material.dart';

class BlackRangeRoverCarWidget extends StatelessWidget {
  final String assetPath;
  final Color iconBackgroundColor;
  const BlackRangeRoverCarWidget({
    required this.assetPath,
    required this.iconBackgroundColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: Stack(
        children: [
          Positioned(
            top: 20,
            left: -30,
            child: Image.asset(
              assetPath,
              fit: BoxFit.cover,
              height: 220,
              filterQuality: FilterQuality.high,
            ),
          ),
          Positioned(
            right: 102,
            child: SizedBox(
              height: 70,
              width: 70,
              child: Stack(
                children: [
                  Positioned(
                    top: 20.5,
                    right: 0,
                    child: Container(
                      height: 48,
                      width: 48,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(.3),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Center(
                        child: Text(
                          '24°C',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 10,
                    left: 14,
                    child: Container(
                      height: 24,
                      width: 24,
                      decoration: BoxDecoration(
                        color: iconBackgroundColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Icon(
                        Icons.ac_unit_rounded,
                        color: Colors.white.withOpacity(.85),
                        size: 15.5,
                      ),
                    ),
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

class GreenRangeRoverCarWidget extends StatelessWidget {
  final String assetPath;
  final Color iconBackgroundColor;
  final bool showImageShadow;
  const GreenRangeRoverCarWidget({
    required this.assetPath,
    required this.iconBackgroundColor,
    this.showImageShadow = true,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: Stack(
        children: [
          if (showImageShadow)
            Positioned(
              top: 22,
              left: -35,
              child: Image.asset(
                assetPath,
                fit: BoxFit.cover,
                height: 230,
                filterQuality: FilterQuality.low,
                // do the color blend to make it a shadow
                color: Colors.black.withOpacity(.45),
                colorBlendMode: BlendMode.modulate,
              ),
            ),
          Positioned(
            top: 15,
            left: -25,
            child: Image.asset(
              assetPath,
              fit: BoxFit.cover,
              height: 230,
              filterQuality: FilterQuality.high,
            ),
          ),
          Positioned(
            right: 102,
            child: SizedBox(
              height: 70,
              width: 70,
              child: Stack(
                children: [
                  Positioned(
                    top: 20.5,
                    right: 0,
                    child: Container(
                      height: 48,
                      width: 48,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(.3),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Center(
                        child: Text(
                          '24°C',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 10,
                    left: 14,
                    child: Container(
                      height: 24,
                      width: 24,
                      decoration: BoxDecoration(
                        color: iconBackgroundColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Icon(
                        Icons.ac_unit_rounded,
                        color: Colors.white.withOpacity(.85),
                        size: 15.5,
                      ),
                    ),
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

import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({
    super.key,
    required this.isFirstPage,
  });

  final bool isFirstPage;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 265,
      width: double.infinity,
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 20,
            right: 20,
            child: Image.asset(
              'assets/cat_and_plants.png',
              filterQuality: FilterQuality.high,
              fit: BoxFit.fitWidth,
            ),
          ),
          Positioned(
            top: 25,
            left: (MediaQuery.of(context).size.width / 2) - 80,
            child: AnimatedOpacity(
              opacity: isFirstPage ? 0 : 1,
              duration: Duration(milliseconds: 200),
              child: Image.asset('assets/watering.png'),
            ),
          ),
        ],
      ),
    );
  }
}

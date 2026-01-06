// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart' as cupertino;
import 'package:flutter/material.dart';
import 'package:sunglasses/common/colors.dart';

class ProductDetails extends StatefulWidget {
  final int? index;
  const ProductDetails({this.index, super.key});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  int selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    setState(() {
      selectedIndex = widget.index ?? 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 187, 187, 187),
            Color.fromARGB(255, 235, 235, 235),
            Color.fromRGBO(240, 241, 238, 1),
          ],
          stops: const [0, .15, 1],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 332,
            child: Column(
              children: [
                const SizedBox(height: 70),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          cupertino.CupertinoIcons.arrow_left,
                          color: Colors.black,
                        ),
                      ),
                      const Spacer(),
                      Text(
                        'Sun Glasses',
                        style: TextStyle(
                          fontSize: 20,
                          inherit: false,
                          color: Colors.black.withOpacity(.75),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const Spacer(),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          cupertino.CupertinoIcons.heart,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                CustomPaint(
                  painter: DashedLinePainter(),
                  child: Container(
                    alignment: Alignment.center,
                    height: 1,
                    width: 350,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  '360',
                  style: TextStyle(
                    inherit: false,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.black45,
                  ),
                ),
                Image.asset(
                  'assets/glasses/glasses${selectedIndex + 1}.png',
                  height: 110,
                  width: 300,
                  fit: BoxFit.fitWidth,
                ),
                const SizedBox(height: 20),
                CustomPaint(
                  painter: DashedLinePainter(showDot: false),
                  child: Container(
                    alignment: Alignment.center,
                    height: 1,
                    width: 350,
                  ),
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
          Expanded(
            child: bottomCard(),
          ),
        ],
      ),
    );
  }

  ClipRRect bottomCard() {
    return ClipRRect(
      borderRadius: BorderRadius.vertical(top: Radius.circular(55)),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.only(left: 40),
        decoration: BoxDecoration(color: Colors.white),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 35),
              Text(
                'Cat-Eye, Pearl',
                style: TextStyle(
                  fontSize: 35,
                  inherit: false,
                  color: Colors.black.withOpacity(.75),
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 200,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (_, index) {
                    return GestureDetector(
                      onTap: () => setState(() => selectedIndex = index),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 170,
                            width: 140,
                            child: Padding(
                              padding: const EdgeInsets.only(right: 15),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Container(
                                  width: 120,
                                  color: GlassesColors.productListGrey,
                                  child: Stack(
                                    children: [
                                      Positioned.fill(
                                        child: Image.asset(
                                          'assets/glasses/glasses${index + 1}.png',
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                      if (selectedIndex == index)
                                        Positioned(
                                          bottom: 10,
                                          left: 10,
                                          child: Icon(
                                            cupertino.CupertinoIcons
                                                .check_mark_circled_solid,
                                            color: Colors.black,
                                            size: 25,
                                          ),
                                        ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            'Color ${selectedIndex + 1}',
                            style: TextStyle(
                              fontSize: 15,
                              inherit: false,
                              color: Colors.black.withOpacity(.65),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(right: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Product Details',
                      style: TextStyle(
                        fontSize: 23,
                        inherit: false,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    Icon(
                      Icons.add,
                      color: Colors.black,
                      size: 25,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 13),
              Padding(
                padding: const EdgeInsets.only(right: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Care',
                      style: TextStyle(
                        fontSize: 23,
                        inherit: false,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    Icon(
                      Icons.add,
                      color: Colors.black,
                      size: 25,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 13),
              Padding(
                padding: const EdgeInsets.only(right: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Reviews',
                      style: TextStyle(
                        fontSize: 23,
                        inherit: false,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    Icon(
                      Icons.add,
                      color: Colors.black,
                      size: 25,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 33),
              Padding(
                padding: const EdgeInsets.only(right: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 20, horizontal: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(35),
                          color: Colors.black,
                        ),
                        child: const Text(
                          '\$ 135',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            inherit: false,
                            fontSize: 22,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      flex: 2,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 20, horizontal: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(35),
                          color: GlassesColors.lightYellow,
                        ),
                        child: const Text(
                          'Add to cart',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            inherit: false,
                            fontSize: 22,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DashedLinePainter extends CustomPainter {
  final bool showDot;
  const DashedLinePainter({this.showDot = true});
  @override
  void paint(Canvas canvas, Size size) {
    const double dashWidth = 5, dashSpace = 4;
    double startX = 0;
    final paint = Paint()..strokeWidth = 3;
    while (startX < (size.width / 2)) {
      paint.color = Colors.grey.withOpacity((startX / (size.width)));
      canvas.drawLine(Offset(startX, 0), Offset(startX + dashWidth, 0), paint);
      startX += dashWidth + dashSpace;
    }
    while (startX < size.width) {
      paint.color = Colors.grey.withOpacity(1 - (startX / (size.width)));
      canvas.drawLine(Offset(startX, 0), Offset(startX + dashWidth, 0), paint);
      startX += dashWidth + dashSpace;
    }
    if (showDot) {
      canvas.drawCircle(
          Offset(size.width / 2, 0), 5, paint..color = Colors.black87);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}

import 'package:flutter/material.dart';
import 'package:sunglasses/product_details/product_details.dart';

class ProductTile extends StatelessWidget {
  final int index;
  final String assetPath;
  const ProductTile({required this.index, required this.assetPath, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute<void>(
            builder: (BuildContext context) => ProductDetails(index: index),
          ),
        );
      },
      child: Container(
        height: 180,
        padding: const EdgeInsets.only(left: 20),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Container(
                width: 135,
                height: 180,
                color: Colors.white,
                child: Image.asset(
                  assetPath,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            const SizedBox(width: 20),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Cat-eye Sunglasses',
                  style: TextStyle(
                    fontSize: 22,
                    inherit: false,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  'Brown,',
                  style: TextStyle(
                    fontSize: 18,
                    inherit: false,
                    color: Colors.white.withOpacity(0.8),
                  ),
                ),
                const SizedBox(height: 16),
                const Text(
                  '\$ 99',
                  style: TextStyle(
                    fontSize: 20,
                    inherit: false,
                    fontWeight: FontWeight.bold,
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

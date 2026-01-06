import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {
  final bool isOnline;
  final String assetPath;
  final bool showCount;
  final String? count;
  const ProfileWidget({
    super.key,
    this.isOnline = true,
    required this.assetPath,
    this.showCount = false,
    this.count,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 60,
      child: Stack(
        children: [
          Positioned.fill(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: Image.asset(
                assetPath,
                filterQuality: FilterQuality.high,
                fit: BoxFit.cover,
              ),
            ),
          ),
          if (showCount == false)
            Positioned(
              right: 3,
              bottom: 1.5,
              child: Container(
                height: 13,
                width: 13,
                decoration: BoxDecoration(
                  color: isOnline ? Colors.green : Colors.red,
                  borderRadius: BorderRadius.circular(7),
                  border: Border.all(
                    color: Colors.white,
                    width: 2,
                  ),
                ),
              ),
            ),
          if (showCount == true)
            Positioned.fill(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Container(
                  color: Colors.black.withOpacity(0.4),
                  alignment: Alignment.center,
                  child: Text(
                    '$count+',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

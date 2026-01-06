import 'dart:math';

import 'package:databest/utilities/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BestNewSolutionsWidget extends StatefulWidget {
  const BestNewSolutionsWidget({super.key});

  @override
  State<BestNewSolutionsWidget> createState() => _BestNewSolutionsWidgetState();
}

class _BestNewSolutionsWidgetState extends State<BestNewSolutionsWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(milliseconds: 2634),
      vsync: this,
    )..repeat();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      margin: const EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade100.withOpacity(.2),
            blurRadius: 15,
            spreadRadius: 5,
          ),
        ],
      ),
      padding: const EdgeInsets.all(25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Best\nNew Solutions',
            style: TextStyle(
              color: DatabestColors.darkBlue,
              fontSize: 15,
              fontWeight: FontWeight.bold,
              letterSpacing: -.6,
            ),
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 100,
                width: 100,
                child: Stack(
                  children: [
                    Center(
                      child: RotationTransition(
                        turns: Tween(begin: 0.0, end: 1.0).animate(_controller),
                        child: Transform.rotate(
                          angle: pi * .55,
                          child: SizedBox(
                            height: 100,
                            width: 100,
                            child: CircularProgressIndicator(
                              value: .7,
                              strokeWidth: 16,
                              valueColor: AlwaysStoppedAnimation<Color>(
                                  DatabestColors.pink),
                              strokeCap: StrokeCap.round,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: RotationTransition(
                        turns: Tween(begin: 1.0, end: 0.0).animate(_controller),
                        child: Transform.rotate(
                          angle: pi * 1.77,
                          child: SizedBox(
                            height: 54,
                            width: 54,
                            child: CircularProgressIndicator(
                              value: .67,
                              strokeWidth: 14,
                              valueColor: AlwaysStoppedAnimation<Color>(
                                  DatabestColors.orange),
                              strokeCap: StrokeCap.round,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: Icon(
                        CupertinoIcons.add_circled_solid,
                        size: 32,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

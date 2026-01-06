// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:music_player/utils/colors.dart';
import 'package:music_player/widgets/neumorphic_circle_widget.dart';

class NeumorphicProgressWidget extends StatelessWidget {
  final double width;
  final double progress;
  const NeumorphicProgressWidget(
      {required this.progress, required this.width, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    assert(0.0 <= progress && progress <= 1.0);
    final width = MediaQuery.of(context).size.width;

    return Stack(
      children: [
        Container(height: 66),
        Positioned(
          top: 30,
          child: Container(
            width: width,
            height: 10,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: MusicPlayerColors.neumorphismInsideLightGrey,
            ),
          ),
        ),
        Positioned(
          top: 30,
          child: Container(
            width: width * progress,
            height: 10,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  MusicPlayerColors.red,
                  Colors.yellow,
                ],
              ),
            ),
          ),
        ),
        Positioned(
          left: width * progress - 25,
          top: 18,
          height: 35,
          child: NeumorphicCircleWidget(
            height: 15,
            width: 15,
            child: Icon(
              Icons.circle,
              size: 12,
              color: Colors.yellow,
            ),
          ),
        )
      ],
    );
  }
}

import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:music_player/utils/colors.dart';

class NeumorphicCircleWidget extends StatelessWidget {
  final Widget child;
  final double height;
  final double width;
  final double borderWidth;
  final Color borderColor;
  final double intensity;
  final Color? color;
  final double depth;
  final NeumorphicShape shape;
  const NeumorphicCircleWidget(
      {required this.child,
      required this.height,
      required this.width,
      this.shape = NeumorphicShape.convex,
      this.color,
      this.borderWidth = 5.5,
      this.depth = 8,
      this.intensity = 0.7,
      this.borderColor = MusicPlayerColors.neumorphismInsideLightGrey,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      drawSurfaceAboveChild: false,
      style: NeumorphicStyle(
        shadowDarkColor: Colors.black.withOpacity(0.8),
        shadowLightColor: const Color.fromARGB(255, 82, 82, 82),
        depth: depth,
        boxShape: const NeumorphicBoxShape.circle(),
        intensity: intensity,
        surfaceIntensity: 0.2,
        shape: NeumorphicShape.concave,
      ),
      child: NeumorphicButton(
        onPressed: () {},
        style: NeumorphicStyle(
          boxShape: const NeumorphicBoxShape.circle(),
          color: color ?? MusicPlayerColors.neumorphismInsideDarkGrey,
          border: NeumorphicBorder(
            color: borderColor,
            width: borderWidth,
          ),
          depth: 0,
          shape: shape,
        ),
        child: SizedBox(
          width: width,
          height: height,
          child: child,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:range_rover/utilities/colors.dart';

class SmallChipKMRangeWidget extends StatefulWidget {
  const SmallChipKMRangeWidget({
    super.key,
    required this.text1,
    required this.text2,
    this.progressValue,
    required this.progressColor,
    this.showProgress = true,
    this.fontSize = 20,
  });

  final String text1;
  final String text2;
  final double? progressValue;
  final Color progressColor;
  final bool showProgress;
  final double? fontSize;

  @override
  State<SmallChipKMRangeWidget> createState() => _SmallChipKMRangeWidgetState();
}

class _SmallChipKMRangeWidgetState extends State<SmallChipKMRangeWidget>
    with SingleTickerProviderStateMixin {
  AnimationController? _controller;
  late Animation<double> _animation;
  double _progressValue = 0.0;

  @override
  void initState() {
    super.initState();
    if (widget.progressValue == null) {
      return;
    }
    _controller = AnimationController(
      duration: const Duration(milliseconds: 800),
      vsync: this,
    );

    _animation =
        Tween<double>(begin: 0, end: widget.progressValue).animate(_controller!)
          ..addListener(() {
            setState(() {
              _progressValue = _animation.value;
            });
          });

    _controller!.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _controller!.stop();
      }
    });
    _controller!.forward(from: 0);
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.text1,
          style: TextStyle(
            color: Colors.white.withOpacity(.5),
            fontSize: 10,
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(height: 1),
        Text(
          widget.text2,
          style: TextStyle(
            color: Colors.white,
            fontSize: widget.fontSize,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 5),
        if (widget.showProgress)
          LinearProgressIndicator(
            value: _progressValue,
            valueColor: AlwaysStoppedAnimation<Color>(widget.progressColor),
            backgroundColor: RangeRoverColors.greyColor,
            borderRadius: BorderRadius.circular(15),
          ),
      ],
    );
  }
}

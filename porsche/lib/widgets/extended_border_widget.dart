import 'package:flutter/material.dart';
import 'package:porsche/utilities/colors.dart';

class ExtendedBorderWidget extends StatelessWidget {
  final Widget child;
  final Color innerColor;
  final Color? selectedColor;
  final Offset offset;
  final EdgeInsets padding;
  final Color? borderColor;
  final Color shadowColor;
  final double borderWidth;
  final BorderRadius? borderRadius;
  final bool isSelected;
  const ExtendedBorderWidget({
    required this.child,
    this.innerColor = PorscheColors.skinColor,
    this.selectedColor,
    this.borderColor,
    this.borderWidth = 1.5,
    this.offset = const Offset(1, 1),
    this.padding = const EdgeInsets.all(10),
    this.shadowColor = PorscheColors.verydarkGreen,
    this.isSelected = false,
    this.borderRadius,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 250),
      padding: padding,
      decoration: BoxDecoration(
        color: isSelected ? selectedColor ?? Colors.white : innerColor,
        border: Border.all(
          color: borderColor ??
              (isSelected
                  ? PorscheColors.verydarkGreen
                  : Colors.grey.withOpacity(.5)),
          width: borderWidth,
        ),
        borderRadius: borderRadius,
        boxShadow: isSelected
            ? [
                BoxShadow(
                  color: shadowColor,
                  blurRadius: 0,
                  spreadRadius: .2,
                  offset: offset,
                ),
              ]
            : null,
      ),
      child: child,
    );
  }
}

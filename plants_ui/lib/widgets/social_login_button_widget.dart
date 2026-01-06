import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:plants_ui/pages/questions_1_page.dart';
import 'package:plants_ui/utils/plants_colors.dart';

class SocialLoginButton extends StatelessWidget {
  final String text;
  final String? imageAsset;
  final IconData? icon;
  final Color color;
  final Color? textColor;

  const SocialLoginButton({
    required this.text,
    required this.color,
    this.textColor,
    this.imageAsset,
    this.icon,
    super.key,
  }) : assert(imageAsset != null || icon != null);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push<void>(
          context,
          MaterialPageRoute<void>(
            builder: (BuildContext context) => const QuestionsPage(),
          ),
        );
      },
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: PlantColors.darkGreen.withOpacity(0.3),
              blurRadius: 5,
              offset: Offset(0, 2),
            ),
          ],
        ),
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 25,
              height: 25,
              child: imageAsset != null
                  ? Image.asset(
                      imageAsset!,
                      fit: BoxFit.contain,
                      filterQuality: FilterQuality.high,
                    )
                  : Padding(
                      padding: const EdgeInsets.only(left: 4),
                      child: FaIcon(
                        icon!,
                        color: textColor,
                        size: 25,
                      ),
                    ),
            ),
            Expanded(
              child: Text(
                text,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: textColor ?? PlantColors.darkGreen,
                    fontWeight: FontWeight.w700,
                    fontSize: 14),
              ),
            ),
            SizedBox(width: 25),
          ],
        ),
      ),
    );
  }
}

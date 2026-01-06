import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:plants_ui/utils/plants_colors.dart';
import 'package:plants_ui/widgets/social_login_button_widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PlantColors.backgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 120),
            Text(
              'Hey there 👋',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: PlantColors.darkGreen,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              'Welcome to our nature community!',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: PlantColors.darkGreen,
              ),
            ),
            const SizedBox(height: 65),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/plant_dark_green.png',
                  width: 340,
                  fit: BoxFit.fitWidth,
                  filterQuality: FilterQuality.high,
                ),
              ],
            ),
            const SizedBox(height: 65),
            Text(
              'Choose one method to login:',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 15),
            SocialLoginButton(
              color: Colors.white,
              text: 'Sign in with google',
              imageAsset: 'assets/google.png',
            ),
            const SizedBox(height: 15),
            SocialLoginButton(
              color: Colors.black,
              text: 'Sign in with apple',
              textColor: Colors.white,
              icon: FontAwesomeIcons.apple,
            ),
          ],
        ),
      ),
    );
  }
}

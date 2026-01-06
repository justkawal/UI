import 'package:book_store/pages/home_page.dart';
import 'package:book_store/utils/utils_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SettingsPageView extends StatelessWidget {
  final Function(int) openTab;

  const SettingsPageView({required this.openTab, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: PageView(
        children: [
          ListView(
            padding: const EdgeInsets.all(0),
            children: [
              Header(),
              const SizedBox(height: 10),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: SizedBox(
                  height: 180,
                  child: Stack(
                    children: [
                      Positioned.fill(
                        child: Image.asset(
                          'images/gradient.png',
                          fit: BoxFit.fill,
                          width: MediaQuery.of(context).size.width,
                        ),
                      ),
                      Positioned.fill(
                        child: Column(
                          children: [
                            const SizedBox(height: 15),
                            const Text(
                              'Christmas Sale',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 5),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 25),
                              child: RichText(
                                textAlign: TextAlign.center,
                                text: const TextSpan(
                                  text:
                                      'Chapter books, series, fiction books, picture books upto ',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: '50% off.',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(height: 15),
                            GestureDetector(
                              onTap: () {
                                openTab(1);
                              },
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: Container(
                                  color: BookStoreColors.mediumRed,
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 25,
                                    vertical: 10,
                                  ),
                                  child: const Text(
                                    'View all',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Container(
                  color: BookStoreColors.veryLightSand,
                  child: Column(
                    children: [
                      SettingsTile(
                        icon: Icons.shopping_bag_rounded,
                        settingsName: 'Order History',
                      ),
                      Divider(
                        color: BookStoreColors.darkBrown.withOpacity(.3),
                        height: 0.6,
                        indent: 10,
                        endIndent: 10,
                        thickness: .2,
                      ),
                      SettingsTile(
                        icon: Icons.payment_rounded,
                        settingsName: 'Payment',
                      ),
                      Divider(
                        color: BookStoreColors.darkBrown.withOpacity(.3),
                        height: 0.6,
                        indent: 10,
                        endIndent: 10,
                        thickness: .2,
                      ),
                      SettingsTile(
                        icon: Icons.privacy_tip_rounded,
                        settingsName: 'Legal & Privacy',
                      ),
                      Divider(
                        color: BookStoreColors.darkBrown.withOpacity(.3),
                        height: 0.6,
                        indent: 10,
                        endIndent: 10,
                        thickness: .2,
                      ),
                      SettingsTile(
                        icon: Icons.help_outline_rounded,
                        settingsName: 'Help',
                      ),
                      Divider(
                        color: BookStoreColors.darkBrown.withOpacity(.3),
                        height: 0.6,
                        indent: 10,
                        endIndent: 10,
                        thickness: .2,
                      ),
                      SettingsTile(
                        icon: Icons.info_outline_rounded,
                        settingsName: 'About',
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 25,
                    vertical: 10,
                  ),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                      colors: [
                        BookStoreColors.mediumRed,
                        BookStoreColors.lightRed,
                      ],
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Text(
                    'log out',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ))
            ],
          ),
        ],
      ),
    );
  }
}

class SettingsTile extends StatelessWidget {
  final IconData icon;
  final String settingsName;
  const SettingsTile({required this.icon, required this.settingsName, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      margin: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        children: [
          Expanded(
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Container(
                    color: BookStoreColors.mediumSand.withOpacity(.5),
                    padding: const EdgeInsets.all(10),
                    child: Icon(icon,
                        color: BookStoreColors.darkBrown.withOpacity(.7),
                        size: 23),
                  ),
                ),
                const SizedBox(width: 15),
                Text(
                  settingsName,
                  style: TextStyle(
                    color: BookStoreColors.darkBrown,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Icon(
            Icons.arrow_forward_ios_rounded,
            color: BookStoreColors.darkBrown.withOpacity(.7),
            size: 18,
          ),
        ],
      ),
    );
  }
}

import 'package:finances/pages/home_page.dart';
import 'package:finances/utils/finances_colors.dart';
import 'package:finances/widgets/horizontal_long_arrow_widget.dart';
import 'package:finances/widgets/titled_bar_widget.dart';
import 'package:flutter/material.dart';

class LaunchPage extends StatelessWidget {
  const LaunchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: GestureDetector(
          behavior: HitTestBehavior.translucent,
          onTap: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const HomePage(),
              ),
            );
          },
          child: Column(
            children: [
              const SizedBox(height: 120),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Your Best',
                      style: TextStyle(
                        fontSize: 60,
                        color: FinancesColors.purple,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Payment',
                      style: TextStyle(
                        fontSize: 60,
                        color: FinancesColors.purple,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Point',
                      style: TextStyle(
                        fontSize: 60,
                        color: FinancesColors.purple,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'App',
                      style: TextStyle(
                        fontSize: 60,
                        color: FinancesColors.purple,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 50),
              TiltedBarWidget(),
              const SizedBox(height: 30),
              HorizontalLongArrowWidget(),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}

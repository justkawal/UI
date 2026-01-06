import 'package:ev_dashboard/pages/config_page.dart';
import 'package:ev_dashboard/widgets/car_info_floating_widget.dart';
import 'package:ev_dashboard/widgets/custom_divider_widget.dart';
import 'package:ev_dashboard/widgets/header_widget.dart';
import 'package:ev_dashboard/widgets/vehicle_config_options_tile_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        padding: const EdgeInsets.all(0),
        children: [
          const SizedBox(height: 80),
          HeaderWidget(
            title: 'Model S',
            fontSize: 25,
          ),
          carViewIWdget(),
          Container(
            height: 250,
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                VehicleConfigOptionsTile(text: 'CONDITION'),
                CustomDividerWidget(),
                VehicleConfigOptionsTile(text: 'RIDES'),
                CustomDividerWidget(),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (context) => const ConfigPage(),
                      ),
                    );
                  },
                  child: VehicleConfigOptionsTile(
                    text: 'DRIVERS',
                    showAddIcon: true,
                  ),
                ),
                CustomDividerWidget(),
                VehicleConfigOptionsTile(text: 'HANDBOOK'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  SizedBox carViewIWdget() {
    return SizedBox(
      height: 330,
      child: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: SizedBox(
              height: 300,
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    child: Image.asset(
                      'assets/tesla1.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    bottom: 65,
                    left: 30,
                    child: SizedBox(
                      height: 35,
                      width: 145,
                      child: CarInfoFloatingWidget(
                        text1: '14,543',
                        text2: 'km\ndriven',
                      ),
                    ),
                  ),
                  Positioned(
                    top: 105,
                    right: 05,
                    child: SizedBox(
                      height: 35,
                      width: 115,
                      child: CarInfoFloatingWidget(
                        text1: '115',
                        text2: 'days\ntogether',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 80,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Colors.black,
                    Colors.black,
                    Colors.black.withOpacity(0.97),
                    Colors.black.withOpacity(0.75),
                    Colors.black.withOpacity(0),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

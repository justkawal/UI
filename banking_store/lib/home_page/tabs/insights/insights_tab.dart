import 'package:banking_store/home_page/tabs/insights/menus_model.dart';
import 'package:banking_store/utils/colors.dart';
import 'package:banking_store/utils/menu_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart' as cupertino;

class InsightsTab extends StatelessWidget {
  final TabController controller;
  const InsightsTab({required this.controller, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 35),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 70),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    controller.animateTo(0);
                  },
                  child: Icon(
                    Icons.clear_rounded,
                    color: StoreColors.darkGreen,
                    size: 28,
                  ),
                ),
                MenuWidget(),
              ],
            ),
            const SizedBox(height: 20),
            Center(
              child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(200),
                ),
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: CircularProgressIndicator(
                        value: .65,
                        strokeWidth: 8,
                        color: StoreColors.darkGreen,
                        strokeCap: StrokeCap.round,
                        backgroundColor: StoreColors.darkBrown.withOpacity(0.1),
                      ),
                    ),
                    Positioned.fill(
                      child: Center(
                        child: Icon(
                          cupertino.CupertinoIcons.wind_snow,
                          color: StoreColors.darkBrown,
                          size: 75,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 40),
            Text(
              'Palm Springs',
              style: TextStyle(
                color: Colors.black,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 9),
                  child: Text(
                    '\$',
                    style: TextStyle(
                      color: StoreColors.darkGreen,
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(width: 5),
                Text(
                  '52,238',
                  style: TextStyle(
                    color: StoreColors.darkGreen,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: Text(
                    ' of \$30,000',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            getInsightsColumn(MenuModel.goals),
            const SizedBox(height: 35),
            getInsightsColumn(MenuModel.utilities),
          ],
        ),
      ),
    );
  }

  Column getInsightsColumn(MenuModel model) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          model.title,
          style: TextStyle(
            color: StoreColors.darkTeal,
            fontSize: 27,
            fontWeight: FontWeight.bold,
          ),
        ),
        for (final subModels in model.subMenus) ...[
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                subModels.subtitle,
                style: TextStyle(
                  color: StoreColors.darkTeal,
                  fontSize: 18,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  if (subModels.hint != null)
                    Text(
                      subModels.hint!,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                    ),
                  const SizedBox(width: 10),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Colors.grey,
                    size: 16,
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 10),
          Container(
            height: .7,
            width: double.infinity,
            color: StoreColors.darkBrown.withOpacity(0.2),
          ),
        ],
      ],
    );
  }
}

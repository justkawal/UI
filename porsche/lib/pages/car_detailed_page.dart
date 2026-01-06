import 'package:flutter/material.dart';
import 'package:porsche/models/car_engine_details_models.dart';
import 'package:porsche/utilities/colors.dart';
import 'package:porsche/widgets/car_detailed_page_header_widget.dart';
import 'package:porsche/widgets/config_horizontal_list_view.dart';
import 'package:porsche/widgets/config_row_detail_widget.dart';
import 'package:porsche/widgets/details_and_features_tab.dart';
import 'package:porsche/widgets/divider_widget.dart';
import 'package:porsche/widgets/get_started_widget.dart';

class CarDetailedPage extends StatelessWidget {
  const CarDetailedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            child: Container(
              // 40% of height will do a verylightGreen
              height: MediaQuery.of(context).size.height * .4,
              color: PorscheColors.veryLightGreen,
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              // 40% of height will do a darkgreencolor
              height: MediaQuery.of(context).size.height * .6,
              color: PorscheColors.darkGreen,
            ),
          ),
          Positioned.fill(
            child: ListView(
              padding: const EdgeInsets.only(top: 0, bottom: 100),
              physics: const BouncingScrollPhysics(),
              children: [
                CarDetailedPageHeaderWidget(),
                Container(
                  color: PorscheColors.darkGreen,
                  child: Column(
                    children: [
                      const SizedBox(height: 20),
                      ConfigHorizontalListView(),
                      const SizedBox(height: 40),
                      DetailsAndFeaturesTab(),
                      const SizedBox(height: 30),
                      for (int index = 0;
                          index <
                              CarEngineDetailsModels.carEngineDetails.length;
                          index++) ...[
                        ConfigRowDetailWidget(
                          model: CarEngineDetailsModels.carEngineDetails[index],
                        ),
                        DividerWidget(),
                      ],
                      const SizedBox(height: 50),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: GetStartedWidget(),
          ),
        ],
      ),
    );
  }
}

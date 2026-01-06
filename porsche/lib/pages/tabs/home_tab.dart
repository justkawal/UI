import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:porsche/models/budget_models.dart';
import 'package:porsche/models/car_type_models.dart';
import 'package:porsche/utilities/colors.dart';
import 'package:porsche/widgets/extended_border_widget.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  int shopByCarTypeIndex = 0;
  int shopByBudgetIndex = 1;
  int selectedTabIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PorscheColors.skinColor,
      body: Column(
        children: [
          Container(
            height: 350,
            width: double.infinity,
            color: PorscheColors.darkGreen,
            child: Stack(
              children: [
                Positioned(
                  top: 90,
                  left: 20,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Winter Drift',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 34,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Save up to \$5k\non EV Tax Credits',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 20,
                  right: -3,
                  child: SizedBox(
                    width: 300,
                    child: Image.asset(
                      'assets/porsche1.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Shop by Car Type',
                      style: TextStyle(
                        color: PorscheColors.verydarkGreen,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    ExtendedBorderWidget(
                      padding: const EdgeInsets.all(5),
                      borderRadius: BorderRadius.circular(50),
                      isSelected: true,
                      selectedColor: PorscheColors.skinColor,
                      child: Icon(
                        CupertinoIcons.arrow_right,
                        color: PorscheColors.verydarkGreen,
                        size: 15,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 110,
                child: ListView.builder(
                  itemCount: CarTypes.dummyData.length,
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.only(left: 25),
                  itemBuilder: (context, index) {
                    final type = CarTypes.dummyData[index];
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          shopByCarTypeIndex = index;
                        });
                      },
                      child: Container(
                        margin: const EdgeInsets.only(right: 20),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 70,
                              width: 70,
                              child: ExtendedBorderWidget(
                                padding: const EdgeInsets.all(5),
                                borderRadius: BorderRadius.circular(50),
                                isSelected: shopByCarTypeIndex == index,
                                offset: const Offset(2, 2),
                                child: Icon(
                                  CupertinoIcons.bus,
                                  color: PorscheColors.verydarkGreen,
                                  size: 25,
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              type.brandName,
                              style: TextStyle(
                                color: PorscheColors.verydarkGreen,
                                fontSize: 19,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Text(
                  'Shop by Buget',
                  style: TextStyle(
                    color: PorscheColors.verydarkGreen,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 95,
                child: ListView.builder(
                  itemCount: BudgetModel.dummyData.length,
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.only(left: 25),
                  itemBuilder: (context, index) {
                    final budget = BudgetModel.dummyData[index];
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          shopByBudgetIndex = index;
                        });
                      },
                      child: Container(
                        margin: const EdgeInsets.only(right: 14, bottom: 10),
                        child: SizedBox(
                          height: 85,
                          width: 110,
                          child: ExtendedBorderWidget(
                              padding: const EdgeInsets.all(5),
                              borderRadius: BorderRadius.circular(14),
                              offset: const Offset(4, 4),
                              isSelected: shopByBudgetIndex == index,
                              child: Padding(
                                padding: const EdgeInsets.all(5),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      budget.name,
                                      style: TextStyle(
                                        color: PorscheColors.verydarkGreen
                                            .withOpacity(.8),
                                        fontSize: 19,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Text(
                                      budget.priceRange,
                                      style: TextStyle(
                                        color: PorscheColors.verydarkGreen,
                                        fontSize: 19,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                              )),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

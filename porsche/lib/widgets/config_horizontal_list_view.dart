import 'package:flutter/material.dart';
import 'package:porsche/models/car_config_models.dart';

class ConfigHorizontalListView extends StatefulWidget {
  const ConfigHorizontalListView({Key? key}) : super(key: key);

  @override
  State<ConfigHorizontalListView> createState() =>
      _ConfigHorizontalListViewState();
}

class _ConfigHorizontalListViewState extends State<ConfigHorizontalListView> {
  int _selectedConfigIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      width: double.infinity,
      child: ListView.builder(
        padding: const EdgeInsets.only(left: 25),
        scrollDirection: Axis.horizontal,
        itemCount: CarConfigModels.dummyData.length,
        itemBuilder: (context, index) {
          final configModel = CarConfigModels.dummyData[index];
          return GestureDetector(
            behavior: HitTestBehavior.translucent,
            onTap: () {
              setState(() {
                _selectedConfigIndex = index;
              });
            },
            child: AnimatedContainer(
              duration: Duration(milliseconds: 300),
              height: 100,
              margin: const EdgeInsets.only(right: 18),
              width: 110,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: _selectedConfigIndex == index
                      ? Colors.white
                      : Colors.white.withOpacity(0.1),
                  width: 1.3,
                ),
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 10,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(
                        configModel.iconData,
                        size: 25,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  Text(
                    configModel.configName,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

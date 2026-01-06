import 'package:flutter/material.dart';
import 'package:travel/model/activity_model.dart';
import 'package:travel/utils/colors.dart';

class ActivityTileListView extends StatefulWidget {
  const ActivityTileListView({super.key});

  @override
  State<ActivityTileListView> createState() => _ActivityTileListViewState();
}

class _ActivityTileListViewState extends State<ActivityTileListView> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 65,
      child: ListView.builder(
        itemCount: ActivityModel.dummyList.length,
        padding: const EdgeInsets.only(left: 20),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final model = ActivityModel.dummyList[index];
          return GestureDetector(
            onTap: () {
              setState(() {
                _selectedIndex = index;
              });
            },
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 350),
              height: 60,
              margin: const EdgeInsets.only(right: 15),
              decoration: BoxDecoration(
                color: TravelColors.lightGrey,
                border: _selectedIndex == index
                    ? Border.all(
                        color: Colors.black,
                        width: 1.1,
                      )
                    : null,
                borderRadius: BorderRadius.circular(50),
              ),
              padding:
                  const EdgeInsets.only(left: 5, right: 22, top: 5, bottom: 5),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    height: 66,
                    width: 53,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.asset(
                        'assets/activity/${model.assetName}',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(width: 15),
                  Text(
                    model.name,
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
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

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plants_ui/pages/login_page.dart';
import 'package:plants_ui/utils/plants_colors.dart';
import 'package:plants_ui/widgets/description_text_widget.dart';
import 'package:plants_ui/widgets/image_widget.dart';
import 'package:plants_ui/widgets/progress_container_widget.dart';
import 'package:plants_ui/widgets/progress_text_widget.dart';
import 'package:plants_ui/widgets/tip_text_widget.dart';

class QuestionsPage extends StatefulWidget {
  const QuestionsPage({super.key});

  @override
  State<QuestionsPage> createState() => _QuestionsPageState();
}

class _QuestionsPageState extends State<QuestionsPage> {
  bool isFirstPage = true;
  int optionsSelectedIndex = -1;

  /// The global key to access the animated list.
  final _animatedListKey = GlobalKey<AnimatedListState>();

  final List<String> _items = [];
  final List<String> list1 = [
    'Green Thumb Novice (Beginner):',
    'Floral Apprentice (Experienced):',
    'Botanical Wizard (Expert):',
  ];
  final List<String> list2 = [
    'Diagnose plant',
    'Identify plant',
    'Get treatment',
  ];
  String tipText1 =
      'I can keep a succulent ailve, but I\'m not a superhero... yet.';
  String tipText2 = '👋 Impressive ! We see potential.';
  String actionText = 'Next';
  String richText1 = 'How many ';
  String richText2 = 'varieties of plants do you have in your collection? ';
  String richText3 = 'Choose one of them!';

  @override
  void initState() {
    super.initState();
    listAdder(list1);
  }

  void listAdder(List<String> list) {
    Future.forEach(List.generate(_items.length, (_) => null), (_) async {
      await Future.delayed(Duration(milliseconds: 10));
      _items.removeAt(0);
      _animatedListKey.currentState?.removeItem(
          0, (context, animation) => Container(),
          duration: Duration.zero);
    }).then((_) {
      Future.forEach(list, (value) async {
        await Future.delayed(Duration(milliseconds: 200));
        _items.add(value);
        _animatedListKey.currentState?.insertItem(_items.length - 1);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PlantColors.backgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            const SizedBox(height: 40),
            ProgressTextWidget(isFirstPage: isFirstPage),
            const SizedBox(height: 5),
            ProgressContainerWidget(isFirstPage: isFirstPage),
            const SizedBox(height: 30),
            DescriptionTextWidget(
                richText1: richText1,
                richText2: richText2,
                richText3: richText3),
            ImageWidget(isFirstPage: isFirstPage),
            const SizedBox(height: 20),
            listOptions(),
            const SizedBox(height: 7),
            TipTextWidget(
                optionsSelectedIndex: optionsSelectedIndex,
                tipText1: tipText1,
                tipText2: tipText2),
            const SizedBox(height: 25),
            Row(
              children: [
                if (!isFirstPage) Expanded(child: back()),
                Expanded(child: bottomActionButton()),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget back() {
    return GestureDetector(
      onTap: () {
        if (!isFirstPage) {
          setState(() {
            isFirstPage = true;
            actionText = 'Next';
            optionsSelectedIndex = -1;
            tipText1 =
                'I can keep a succulent ailve, but I\'m not a superhero... yet.';
            tipText2 = '👋 Impressive ! We see potential.';
            actionText = 'Next';
            richText1 = 'How many ';
            richText2 = 'varieties of plants do you have in your collection? ';
            richText3 = 'Choose one of them!';
            listAdder(list1);
          });
        }
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        height: 50,
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          color: PlantColors.grey,
          borderRadius: BorderRadius.circular(25),
        ),
        alignment: Alignment.center,
        child: Text(
          'Back',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget bottomActionButton() {
    return GestureDetector(
      onTap: () {
        if (optionsSelectedIndex != -1) {
          if (!isFirstPage) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute<void>(
                builder: (BuildContext context) => const LoginPage(),
              ),
            );
          }
          setState(() {
            isFirstPage = false;
            actionText = 'Start';
            richText1 = 'Which feature ';
            richText2 =
                'is essential for our plant app to provide the best experience for users?';
            richText3 = '';
            optionsSelectedIndex = -1;
            tipText1 = 'Well sounds helpful to us!';
            tipText2 = '👋 Let\'s get started.';
            listAdder(list2);
          });
        }
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        height: 50,
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          color: optionsSelectedIndex == -1
              ? PlantColors.mediumGreen.withOpacity(.4)
              : PlantColors.mediumGreen,
          borderRadius: BorderRadius.circular(25),
        ),
        alignment: Alignment.center,
        child: Text(
          actionText,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget listOptions() {
    return Container(
      height: 210,
      padding: const EdgeInsets.symmetric(horizontal: 1),
      child: AnimatedList(
        key: _animatedListKey,
        padding: const EdgeInsets.all(0),
        initialItemCount: _items.length,
        itemBuilder: (context, index, animation) {
          final isSelected = index == optionsSelectedIndex;
          return GestureDetector(
            onTap: () {
              setState(() {
                optionsSelectedIndex = index;
              });
            },
            child: FadeTransition(
              opacity: Tween<double>(
                begin: 0.0,
                end: 1.0,
              ).animate(animation),
              child: AnimatedContainer(
                height: 55,
                duration: Duration(milliseconds: 100),
                margin: EdgeInsets.symmetric(
                    vertical: 5, horizontal: isSelected ? 0 : 2),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  border: isSelected
                      ? Border.all(
                          color: PlantColors.mediumGreen,
                          width: 1,
                        )
                      : null,
                  boxShadow: [
                    BoxShadow(
                      color: isSelected
                          ? PlantColors.mediumGreen.withOpacity(0.5)
                          : Colors.grey.shade400,
                      blurRadius: 5,
                      spreadRadius: 0,
                      offset: Offset(1, 2),
                    ),
                  ],
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(width: 15),
                    Container(
                      height: 22,
                      width: 22,
                      decoration: BoxDecoration(
                        color: isSelected
                            ? PlantColors.mediumGreen
                            : PlantColors.backgroundColor,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: PlantColors.mediumGreen,
                          width: 1,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: PlantColors.mediumGreen.withOpacity(0.5),
                            blurRadius: 5,
                            spreadRadius: 0,
                            offset: Offset(1, 2),
                          ),
                        ],
                      ),
                      child: isSelected
                          ? Icon(
                              CupertinoIcons.check_mark,
                              size: 20,
                              color: Colors.white,
                            )
                          : null,
                    ),
                    const SizedBox(width: 10),
                    Text(
                      _items[index],
                      style: TextStyle(
                        color: PlantColors.darkGreen,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: 15),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

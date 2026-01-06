import 'package:databest/utilities/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DataActionsWidget extends StatelessWidget {
  const DataActionsWidget({super.key});
  static final _icons = [
    CupertinoIcons.doc_on_clipboard_fill,
    CupertinoIcons.command,
    CupertinoIcons.refresh,
    CupertinoIcons.text_insert,
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 190,
      width: double.infinity,
      child: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 110,
              decoration: BoxDecoration(
                border: Border.all(
                  color: DatabestColors.lightGrey3,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(16),
              ),
              padding: const EdgeInsets.only(left: 18, top: 18, right: 18),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'DATA ACTIONS',
                    style: TextStyle(
                      color: DatabestColors.darkBlue,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      letterSpacing: -.1,
                    ),
                  ),
                  Icon(
                    Icons.more_horiz_rounded,
                    color: Colors.grey,
                    size: 30,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 50,
            left: 0,
            right: 0,
            child: SizedBox(
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  for (int i = 0; i < 4; i++)
                    Container(
                      height: 58,
                      width: 58,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(.3),
                            blurRadius: 15,
                            spreadRadius: 1,
                          ),
                        ],
                      ),
                      alignment: Alignment.center,
                      child: Icon(
                        _icons[i],
                        color: DatabestColors.darkBlue,
                        size: 27,
                      ),
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

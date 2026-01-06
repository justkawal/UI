import 'package:flutter/material.dart';
import 'package:porsche/utilities/colors.dart';

class DetailsAndFeaturesTab extends StatefulWidget {
  const DetailsAndFeaturesTab({Key? key}) : super(key: key);

  @override
  State<DetailsAndFeaturesTab> createState() => _DetailsAndFeaturesTabState();
}

class _DetailsAndFeaturesTabState extends State<DetailsAndFeaturesTab> {
  bool _detailsTabSelected = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          border: Border.all(
            color: Colors.white.withOpacity(0.3),
            width: 1.3,
          ),
        ),
        padding: const EdgeInsets.all(5),
        child: Stack(
          children: [
            AnimatedPositioned(
              duration: Duration(milliseconds: 150),
              left: _detailsTabSelected
                  ? 0
                  : (MediaQuery.of(context).size.width / 2) - 45,
              top: 0,
              bottom: 0,
              child: Container(
                width: (MediaQuery.of(context).size.width / 2) - 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.white,
                ),
              ),
            ),
            Positioned.fill(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: GestureDetector(
                      behavior: HitTestBehavior.translucent,
                      onTap: () {
                        setState(() {
                          _detailsTabSelected = true;
                        });
                      },
                      child: SizedBox(
                        child: Text(
                          'Details',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: _detailsTabSelected
                                ? PorscheColors.darkGreen
                                : Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      behavior: HitTestBehavior.translucent,
                      onTap: () {
                        setState(() {
                          _detailsTabSelected = false;
                        });
                      },
                      child: SizedBox(
                        child: Text(
                          'Features',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: _detailsTabSelected
                                ? Colors.white
                                : PorscheColors.darkGreen,
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

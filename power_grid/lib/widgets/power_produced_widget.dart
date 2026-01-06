import 'package:flutter/material.dart';
import 'package:power_grid/widgets/frosted_widget.dart';

class PowerProducedCard extends StatelessWidget {
  final int value;
  final String type;
  final IconData iconData;
  const PowerProducedCard({
    super.key,
    required this.value,
    required this.type,
    required this.iconData,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 2 - 7.5,
      height: 200,
      child: FrostedWidget(
        padding: EdgeInsets.only(left: 20, right: 5, top: 5, bottom: 20),
        borderRadius: BorderRadius.circular(40),
        color: Color(0xFF232527),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: SizedBox(
                width: 72,
                height: 72,
                child: FrostedWidget(
                  padding: EdgeInsets.all(10),
                  borderRadius: BorderRadius.circular(40),
                  showBorder: true,
                  child: Icon(
                    iconData,
                    color: Colors.white.withOpacity(0.8),
                    size: 18,
                  ),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      value.toString(),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 38,
                          fontWeight: FontWeight.w500,
                          height: 1.1),
                    ),
                    const SizedBox(width: 5),
                    Text(
                      'KW/H',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.8),
                        fontSize: 20,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                Text(
                  type,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.5),
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

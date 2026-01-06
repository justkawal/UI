import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:journeys/utilities/colors.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: SizedBox(
        height: 55,
        child: Row(
          children: [
            Icon(
              Icons.location_on_outlined,
              size: 30,
            ),
            const SizedBox(width: 5),
            Text(
              'Poland, AB 12XYZ',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Colors.black,
                decoration: TextDecoration.underline,
              ),
            ),
            const Spacer(),
            Container(
              height: 55,
              width: 55,
              decoration: BoxDecoration(
                color: JourneyColors.lightGreen,
                borderRadius: BorderRadius.circular(40),
              ),
              child: Icon(
                CupertinoIcons.search,
                size: 30,
              ),
            ),
            const SizedBox(width: 5),
            Container(
              height: 55,
              width: 55,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                border: Border.all(
                  color: JourneyColors.green.withOpacity(.4),
                  width: 2,
                ),
              ),
              padding: const EdgeInsets.all(3),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Image.asset('assets/profile.png', fit: BoxFit.cover)),
            ),
          ],
        ),
      ),
    );
  }
}

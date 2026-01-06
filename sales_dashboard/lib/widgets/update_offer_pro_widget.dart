import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sales_dashboard/utils/colors.dart';

class UpdateOfferProWidget extends StatelessWidget {
  const UpdateOfferProWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: SalesDashboardColors.lightGrey2,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.grey, width: .3),
        ),
        child: Stack(
          children: [
            Positioned(
              top: -75,
              right: -75,
              child: Image.asset(
                'assets/circular_logo.png',
                color: SalesDashboardColors.lightAccentGreen,
                height: 200,
              ),
            ),
            Positioned.fill(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 17, horizontal: 18),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        FaIcon(
                          FontAwesomeIcons.crown,
                          color: SalesDashboardColors.darkGreen2,
                          size: 25,
                        ),
                        const SizedBox(height: 4),
                        Text(
                          'Level up your sales managing to the next level.',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            letterSpacing: -.3,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          'An easy way to manage your sales with precision and care.',
                          style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey.shade700,
                            letterSpacing: -.3,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 30,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: SalesDashboardColors.darkGreen2,
                        border: Border.all(color: Colors.grey, width: .3),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        'Update to Pro+',
                        style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w400,
                            color: Colors.white.withOpacity(.8),
                            letterSpacing: .3),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

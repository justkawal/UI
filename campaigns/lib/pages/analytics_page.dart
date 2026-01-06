import 'dart:math';
import 'package:campaigns/utilities/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnalyticsPage extends StatelessWidget {
  const AnalyticsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0),
          child: Column(
            children: [
              Container(
                height: 360,
                padding: const EdgeInsets.only(
                    top: 60, left: 20, right: 20, bottom: 30),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            padding: const EdgeInsets.only(
                                left: 11, right: 12, top: 11, bottom: 11),
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(40),
                            ),
                            child: Icon(
                              CupertinoIcons.chevron_back,
                            ),
                          ),
                        ),
                        Text(
                          'My Campaign',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                            letterSpacing: -1.2,
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(
                              left: 11, right: 12, top: 11, bottom: 11),
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: Icon(
                            Icons.settings_rounded,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Overall campaign balance',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                            letterSpacing: -.3,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Icon(
                          CupertinoIcons.up_arrow,
                          size: 16,
                        )
                      ],
                    ),
                    Text(
                      '\$244,212.00',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 42,
                          fontWeight: FontWeight.w800,
                          height: 1.2),
                    ),
                    const SizedBox(height: 40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 60,
                          padding: const EdgeInsets.symmetric(horizontal: 40),
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(40),
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            'Withdraw Funds',
                            style: TextStyle(
                              color: CampaignsColors.yellow,
                              fontSize: 17,
                              fontWeight: FontWeight.w700,
                              height: 1.2,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 2),
              SizedBox(
                height: 620,
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Container(
                            height: 160,
                            decoration: BoxDecoration(
                              color: CampaignsColors.offWhite,
                              borderRadius: BorderRadius.circular(40),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 80,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  decoration: BoxDecoration(
                                    color: CampaignsColors.lightPurple,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(40),
                                      topRight: Radius.circular(40),
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: 40,
                                        width: 40,
                                        margin: const EdgeInsets.symmetric(
                                            horizontal: 3),
                                        alignment: Alignment.center,
                                        child: Image.asset(
                                          'assets/emoji/emoji2.png',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Container(
                                        height: 40,
                                        width: 40,
                                        margin: const EdgeInsets.symmetric(
                                            horizontal: 3),
                                        alignment: Alignment.center,
                                        child: Image.asset(
                                          'assets/emoji/emoji1.png',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Container(
                                        height: 40,
                                        width: 40,
                                        margin: const EdgeInsets.symmetric(
                                            horizontal: 3),
                                        decoration: BoxDecoration(
                                          color: CampaignsColors.mediumPurple,
                                          borderRadius:
                                              BorderRadius.circular(35),
                                        ),
                                        alignment: Alignment.center,
                                        child: Text(
                                          '+7',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 17,
                                            fontWeight: FontWeight.w700,
                                            height: 1.2,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  padding:
                                      const EdgeInsets.only(left: 20, top: 17),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Donation Jar',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                          fontWeight: FontWeight.w700,
                                          height: 1.2,
                                        ),
                                      ),
                                      const SizedBox(height: 4),
                                      Text(
                                        '\$135.00 left',
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          height: 1.2,
                                          letterSpacing: -.4,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 2),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(40),
                            child: Container(
                              height: 220,
                              width: double.infinity,
                              color: CampaignsColors.lightOffWhite,
                              child: Column(
                                children: [
                                  Container(
                                    height: 110,
                                    width: double.infinity,
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Campaign Goal',
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            height: 1.2,
                                            letterSpacing: -.4,
                                          ),
                                        ),
                                        const SizedBox(height: 10),
                                        Text(
                                          '\$185,000.00',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 23,
                                            fontWeight: FontWeight.w700,
                                            height: 1,
                                            letterSpacing: -.7,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            '',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 12,
                                              fontWeight: FontWeight.w700,
                                              height: 1,
                                              letterSpacing: -.7,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 13),
                                            child: Text(
                                              '50',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w700,
                                                height: 1,
                                                letterSpacing: -.7,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 1),
                                            child: Text(
                                              '150',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w700,
                                                height: 1,
                                                letterSpacing: -.7,
                                              ),
                                            ),
                                          ),
                                          Text(
                                            '250',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 12,
                                              fontWeight: FontWeight.w700,
                                              height: 1,
                                              letterSpacing: -.7,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(right: 5),
                                            child: Text(
                                              '350',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w700,
                                                height: 1,
                                                letterSpacing: -.7,
                                              ),
                                            ),
                                          ),
                                          Text(
                                            '',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 12,
                                              fontWeight: FontWeight.w700,
                                              height: 1,
                                              letterSpacing: -.7,
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 6),
                                      Container(
                                        height: 1,
                                        color: Colors.black,
                                      ),
                                      Container(
                                        color: Colors.grey.shade400,
                                        width: double.infinity,
                                        height: 91,
                                        child: Stack(
                                          children: [
                                            Positioned(
                                              left: 0,
                                              top: 0,
                                              right: 0,
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children:
                                                    List.generate(9, (index) {
                                                  if (index % 2 == 0) {
                                                    return Expanded(
                                                      child: Container(
                                                        height: 91,
                                                        width: double.infinity,
                                                        color: Colors.white,
                                                      ),
                                                    );
                                                  }
                                                  return Container(
                                                    height: 91,
                                                    width: .6,
                                                    color: index == 7
                                                        ? Colors.black
                                                        : Colors.grey.shade400,
                                                  );
                                                }),
                                              ),
                                            ),
                                            Positioned(
                                              left: 0,
                                              top: 0,
                                              right: .65 *
                                                  ((MediaQuery.of(context)
                                                              .size
                                                              .width /
                                                          2) -
                                                      2),
                                              child: Container(
                                                height: 91,
                                                width: (MediaQuery.of(context)
                                                            .size
                                                            .width /
                                                        2) -
                                                    2,
                                                color:
                                                    Colors.grey.withOpacity(.5),
                                              ),
                                            ),
                                            Positioned(
                                              right: 10,
                                              top: 10,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color:
                                                      CampaignsColors.darkGreen,
                                                  border: Border.all(
                                                    color: Colors.black,
                                                    width: 1,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(35),
                                                ),
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 10,
                                                        vertical: 8),
                                                child: Text(
                                                  '+${(Random.secure().nextInt(10) + 5)}.${Random.secure().nextInt(10)}%',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w600,
                                                    height: 1.2,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 2),
                          DonorSeparateWidget(
                            text: 'Megan',
                            amount: '\$44,252.00',
                            assetPath: 'assets/emoji/emoji1.png',
                          ),
                          const SizedBox(height: 2),
                          DonorSeparateWidget(
                            text: 'William',
                            amount: '\$252.00',
                            assetPath: 'assets/emoji/emoji0.png',
                            color: CampaignsColors.veryLightGreen,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 2),
                    Expanded(
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(40),
                            child: Container(
                              height: 230,
                              decoration: BoxDecoration(
                                color: CampaignsColors.lightGrey,
                                borderRadius: BorderRadius.circular(40),
                              ),
                              child: Stack(
                                children: [
                                  Positioned(
                                    top: 20,
                                    left: 20,
                                    right: 20,
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                              height: 20,
                                              width: 20,
                                              decoration: BoxDecoration(
                                                color: CampaignsColors.yellow,
                                                borderRadius:
                                                    BorderRadius.circular(35),
                                                border: Border.all(
                                                  color: Colors.black,
                                                  width: 2,
                                                ),
                                              ),
                                            ),
                                            const SizedBox(width: 8),
                                            Text(
                                              '\$21,212.22',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600,
                                                height: 1.2,
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 10),
                                        Row(
                                          children: [
                                            Container(
                                              height: 20,
                                              width: 20,
                                              decoration: BoxDecoration(
                                                color:
                                                    CampaignsColors.darkGreen,
                                                borderRadius:
                                                    BorderRadius.circular(35),
                                                border: Border.all(
                                                  color: Colors.black,
                                                  width: 2,
                                                ),
                                              ),
                                            ),
                                            const SizedBox(width: 8),
                                            Text(
                                              '\$30,178.42',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600,
                                                height: 1.2,
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 10),
                                        Row(
                                          children: [
                                            Container(
                                              height: 20,
                                              width: 20,
                                              decoration: BoxDecoration(
                                                color:
                                                    CampaignsColors.lightBlue,
                                                borderRadius:
                                                    BorderRadius.circular(35),
                                                border: Border.all(
                                                  color: Colors.black,
                                                  width: 2,
                                                ),
                                              ),
                                            ),
                                            const SizedBox(width: 8),
                                            Text(
                                              '\$18,623.05',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600,
                                                height: 1.2,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                    bottom: -10,
                                    left: 0,
                                    right: 0,
                                    child: Container(
                                      height: 100,
                                      color: CampaignsColors.lightBlue,
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 30,
                                    child: Image.asset(
                                      'assets/curves.png',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 2),
                          DonorSeparateWidget(
                            text: 'Hailey',
                            amount: '\$1,252.00',
                            assetPath: 'assets/emoji/emoji3.png',
                          ),
                          const SizedBox(height: 2),
                          Container(
                            height: 260,
                            width: double.infinity,
                            padding: const EdgeInsets.symmetric(horizontal: 7),
                            decoration: BoxDecoration(
                              color: CampaignsColors.lightOffWhite,
                              borderRadius: BorderRadius.circular(40),
                            ),
                            child: Column(
                              children: [
                                const SizedBox(height: 25),
                                Text(
                                  '8 cards ',
                                  style: TextStyle(
                                    color: Colors.grey.shade700,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    height: 1.2,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Text(
                                  'Added Cards',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 22,
                                    fontWeight: FontWeight.w700,
                                    height: .6,
                                  ),
                                ),
                                const SizedBox(height: 20),
                                for (int _ = 0; _ < 4; _++)
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 5, bottom: 17, right: 5),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          '*${(Random.secure().nextInt(8999) + 1000)}',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w700,
                                            height: .6,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 40,
                                          height: 20,
                                          child: Image.asset(
                                            'assets/sparkline.png',
                                            fit: BoxFit.fitWidth,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 70,
                                          child: Text(
                                            '+${(Random.secure().nextInt(10) + 5)}.01%',
                                            textAlign: TextAlign.end,
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15,
                                              fontWeight: FontWeight.w700,
                                              height: .6,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DonorSeparateWidget extends StatelessWidget {
  final String text;
  final String amount;
  final String assetPath;
  final Color color;
  const DonorSeparateWidget({
    required this.text,
    required this.amount,
    required this.assetPath,
    this.color = CampaignsColors.lightBlue,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(40),
      ),
      padding: const EdgeInsets.only(left: 20, top: 20, bottom: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 45,
            width: 45,
            child: Image.asset(
              assetPath,
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(width: 10),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                  fontWeight: FontWeight.w700,
                  height: 1.2,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                amount,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  height: 1.2,
                  letterSpacing: -.4,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

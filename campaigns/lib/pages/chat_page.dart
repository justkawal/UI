import 'package:campaigns/models/message_model.dart';
import 'package:campaigns/pages/analytics_page.dart';
import 'package:campaigns/utilities/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Positioned.fill(
              child: Container(
            color: Colors.black,
            child: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    reverse: true,
                    padding: const EdgeInsets.only(top: 150, bottom: 150),
                    itemCount: MessageModel.dummyList.length,
                    itemBuilder: (context, index) {
                      final isFirst = index == 0;
                      final currentModel = MessageModel.dummyList[index];
                      bool wasPreviousSame = false;
                      if (isFirst == false) {
                        wasPreviousSame = currentModel.userId ==
                            MessageModel.dummyList[index - 1].userId;
                      }
                      final isSent = currentModel.type == MessageType.sent;
                      if (currentModel.donation != null) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AnalyticsPage()),
                            );
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(30),
                                  child: Container(
                                    constraints: BoxConstraints(
                                      minWidth: 290,
                                      maxWidth: 290,
                                      minHeight: 230,
                                    ),
                                    decoration: BoxDecoration(
                                      color: CampaignsColors.veryLightGreen,
                                    ),
                                    child: Stack(
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              height: 140,
                                              padding: const EdgeInsets.only(
                                                left: 20,
                                                top: 15,
                                                right: 20,
                                                bottom: 10,
                                              ),
                                              decoration: BoxDecoration(
                                                gradient: LinearGradient(
                                                  colors: [
                                                    CampaignsColors.orange,
                                                    CampaignsColors.lightGreen,
                                                    CampaignsColors.darkGreen,
                                                  ],
                                                  begin: Alignment.topRight,
                                                  end: Alignment.bottomLeft,
                                                ),
                                              ),
                                              child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  SizedBox(
                                                    child: Text(
                                                      'VISA',
                                                      style: TextStyle(
                                                        color: CampaignsColors
                                                            .darkGreen2,
                                                        fontSize: 17,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    height: 115,
                                                    width: 115,
                                                    decoration: BoxDecoration(
                                                      border: Border.all(
                                                        color: Colors.black12,
                                                        width: 1.5,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              60),
                                                    ),
                                                    padding:
                                                        const EdgeInsets.all(
                                                            19),
                                                    child: Container(
                                                      height: 115,
                                                      width: 115,
                                                      decoration: BoxDecoration(
                                                        border: Border.all(
                                                          color: Colors.black,
                                                          width: 1.5,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(60),
                                                      ),
                                                      padding:
                                                          const EdgeInsets.all(
                                                              12),
                                                      alignment:
                                                          Alignment.center,
                                                      child: Image.asset(
                                                          'assets/emoji/emoji3.png'),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: 20,
                                                    height: 20,
                                                    decoration: BoxDecoration(
                                                      color: CampaignsColors
                                                          .yellow,
                                                      border: Border.all(
                                                        color: Colors.black,
                                                        width: 1.5,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              50),
                                                    ),
                                                    alignment: Alignment.center,
                                                    child: Text(
                                                      currentModel.donation!
                                                          .donatedCount
                                                          .toString(),
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 11,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              height: 1.4,
                                              color: Colors.black,
                                            ),
                                            Container(
                                              height: 95,
                                              width: double.infinity,
                                              color:
                                                  Colors.teal.withOpacity(0.1),
                                              padding: const EdgeInsets.only(
                                                  left: 20),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    'Total Donation',
                                                    style: TextStyle(
                                                      color: Colors.black45,
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                  ),
                                                  Text(
                                                    '${currentModel.donation!.currency}${currentModel.donation!.totalDonation}',
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 29,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        letterSpacing: -1),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        Positioned(
                                          bottom: 74,
                                          right: 30,
                                          child: Transform.rotate(
                                            angle: -math.pi / 14,
                                            child: Container(
                                              height: 42,
                                              width: 110,
                                              decoration: BoxDecoration(
                                                color:
                                                    CampaignsColors.darkGreen,
                                                border: Border.all(
                                                  color: Colors.black,
                                                  width: 1.5,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                              ),
                                              alignment: Alignment.center,
                                              child: Text(
                                                '\$121 left',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold,
                                                  letterSpacing: -.5,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      }
                      return Row(
                        mainAxisAlignment: isSent
                            ? MainAxisAlignment.end
                            : MainAxisAlignment.start,
                        children: [
                          Container(
                            constraints:
                                BoxConstraints(minWidth: 100, maxWidth: 290),
                            margin: EdgeInsets.only(top: 4),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 25, vertical: 22),
                            decoration: BoxDecoration(
                              color: isSent
                                  ? CampaignsColors.yellow
                                  : CampaignsColors.veryLightGreen,
                              borderRadius: BorderRadius.circular(35),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                if (isFirst || wasPreviousSame == false)
                                  Text(
                                    '${isSent ? 'Me' : currentModel.name}, 14:22',
                                    style: TextStyle(
                                      color: Colors.grey.shade600,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                Text(
                                  currentModel.message,
                                  maxLines: 3,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
          )),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 150,
              decoration: BoxDecoration(
                color: CampaignsColors.lightGrey,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(45),
                  bottomRight: Radius.circular(45),
                ),
              ),
              padding: const EdgeInsets.only(
                  left: 25, right: 25, bottom: 25, top: 70),
              alignment: Alignment.bottomCenter,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 55,
                      width: 55,
                      decoration: BoxDecoration(
                        color: CampaignsColors.mediumGrey,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Icon(
                        CupertinoIcons.chevron_back,
                        size: 25,
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        'Ella Doe',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'Online',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 65,
                    width: 65,
                    child: Stack(
                      children: [
                        Positioned(
                          bottom: 0,
                          left: 2,
                          child: Container(
                            height: 55,
                            width: 55,
                            decoration: BoxDecoration(
                              color: CampaignsColors.veryLightGreen,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            padding: const EdgeInsets.all(9),
                            child: Image.asset('assets/emoji/emoji2.png'),
                          ),
                        ),
                        Positioned(
                          top: 0,
                          right: 7,
                          child: Container(
                            height: 16,
                            width: 16,
                            decoration: BoxDecoration(
                              color: CampaignsColors.mediumGreen,
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(
                                color: Colors.black,
                                width: 2.5,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 140,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(.99),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(45),
                  topRight: Radius.circular(45),
                ),
              ),
              padding: const EdgeInsets.symmetric(vertical: 26, horizontal: 35),
              alignment: Alignment.bottomCenter,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    child: Container(
                      height: 85,
                      width: 85,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(60),
                      ),
                      child: Icon(
                        CupertinoIcons.trash_fill,
                        color: Colors.grey.shade500,
                        size: 35,
                      ),
                    ),
                  ),
                  Positioned(
                    right: 60,
                    child: Container(
                      height: 85,
                      width: 85,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        borderRadius: BorderRadius.circular(60),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 40,
                    child: Container(
                      height: 85,
                      width: 85,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(60),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 20,
                    child: Container(
                      height: 85,
                      width: 85,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(60),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 0,
                    child: Container(
                      height: 85,
                      width: 85,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade900,
                        borderRadius: BorderRadius.circular(60),
                      ),
                      child: Icon(
                        Icons.mic_rounded,
                        color: CampaignsColors.yellow,
                        size: 35,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Slide to cancel',
                          style: TextStyle(
                            color: Colors.grey.shade600,
                            fontSize: 14,
                            letterSpacing: -.6,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          '0:01:21',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 32,
                            letterSpacing: -1,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
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

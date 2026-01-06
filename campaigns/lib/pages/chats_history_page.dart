import 'dart:math';
import 'package:campaigns/models/chat_model.dart';
import 'package:campaigns/models/group_model.dart';
import 'package:campaigns/models/profile_model.dart';
import 'package:campaigns/pages/chat_page.dart';
import 'package:campaigns/utilities/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatsHistoryPage extends StatelessWidget {
  const ChatsHistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 315,
              padding: const EdgeInsets.only(top: 60, bottom: 30),
              decoration: BoxDecoration(
                color: CampaignsColors.lightGrey,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: const EdgeInsets.only(
                              left: 11, right: 12, top: 11, bottom: 11),
                          decoration: BoxDecoration(
                            color: CampaignsColors.mediumGrey,
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: Icon(CupertinoIcons.chevron_back),
                        ),
                        Text(
                          'Chats',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                            letterSpacing: -1.2,
                          ),
                        ),
                        Container(
                          height: 52,
                          width: 52,
                          margin: const EdgeInsets.only(right: 15),
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                bottom: 0,
                                child: Container(
                                  padding: const EdgeInsets.all(11),
                                  decoration: BoxDecoration(
                                    color: CampaignsColors.mediumGrey,
                                    borderRadius: BorderRadius.circular(40),
                                  ),
                                  child: Icon(Icons.person_rounded),
                                ),
                              ),
                              Positioned(
                                right: 1,
                                top: 3,
                                child: Container(
                                  height: 20,
                                  width: 20,
                                  decoration: BoxDecoration(
                                    color: CampaignsColors.yellow,
                                    border: Border.all(
                                      color: Colors.black,
                                      width: 1.5,
                                    ),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  alignment: Alignment.center,
                                  child: Text(
                                    '5',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
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
                  const SizedBox(height: 35),
                  SizedBox(
                    height: 122,
                    width: double.infinity,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.only(left: 20),
                      itemCount: ProfileModel.dummyList.length,
                      itemBuilder: (context, index) {
                        final model = ProfileModel.dummyList[index];
                        return Container(
                          width: 100,
                          margin: const EdgeInsets.only(right: 2),
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(.95),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Stack(
                            children: [
                              Positioned.fill(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const SizedBox(height: 10),
                                    SizedBox(
                                      height: 55,
                                      width: 55,
                                      child: Image.asset(
                                        'assets/emoji/${model.assetPath}',
                                        fit: BoxFit.contain,
                                        height: 50,
                                      ),
                                    ),
                                    const SizedBox(height: 6),
                                    SizedBox(
                                      height: 20,
                                      width: 70,
                                      child: Text(
                                        model.name,
                                        textAlign: TextAlign.center,
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                        style: TextStyle(
                                          color: Colors.grey.shade600,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              if (model.isOnline)
                                Positioned(
                                  right: 15,
                                  top: 15,
                                  child: Container(
                                    height: 15,
                                    width: 15,
                                    decoration: BoxDecoration(
                                      color: CampaignsColors.darkGreen,
                                      border: Border.all(
                                        color: Colors.black,
                                        width: 1.5,
                                      ),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    alignment: Alignment.center,
                                  ),
                                ),
                            ],
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 2),
            Container(
              height: 550,
              width: double.infinity,
              decoration: BoxDecoration(
                color: CampaignsColors.lightOffWhite,
                borderRadius: BorderRadius.circular(40),
              ),
              padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Text(
                      'Recent Chat',
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: TextStyle(
                        color: Colors.grey.shade700,
                        fontSize: 17,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                  for (final model in ChatModel.dummyList)
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ChatPage()),
                        );
                      },
                      child: Container(
                        height: 100,
                        margin: const EdgeInsets.only(bottom: 10),
                        width: double.infinity,
                        child: Row(
                          children: [
                            // Profile Icon in a circle
                            SizedBox(
                              height: 100,
                              width: 100,
                              child: Stack(
                                children: [
                                  Positioned.fill(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: model.color,
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                      padding: const EdgeInsets.all(18),
                                      child: Image.asset(
                                        'assets/emoji/${model.assetPath}',
                                        fit: BoxFit.fitHeight,
                                      ),
                                    ),
                                  ),
                                  if (model.isTyping || model.isOnline)
                                    Positioned(
                                      right: 9,
                                      top: 5,
                                      child: Container(
                                        height: 15,
                                        width: 15,
                                        decoration: BoxDecoration(
                                          color: CampaignsColors.darkGreen,
                                          border: Border.all(
                                            color: Colors.black,
                                            width: 1.7,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        alignment: Alignment.center,
                                      ),
                                    ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 15),
                            // Column of name and recent text from either party
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    model.name,
                                    textAlign: TextAlign.center,
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 22,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  Text(
                                    model.isTyping
                                        ? '${model.name.split(' ')[0]} is typing...'
                                        : model.lastMessage,
                                    textAlign: TextAlign.start,
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 10),
                            SizedBox(
                              width: 50,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    model.lastMessageTime,
                                    textAlign: TextAlign.center,
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  Container(
                                    height: 23,
                                    width: 23,
                                    decoration: model.unreadMessages == 0
                                        ? null
                                        : BoxDecoration(
                                            color: CampaignsColors.yellow,
                                            border: Border.all(
                                              color: Colors.black,
                                              width: 1.5,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                    alignment: Alignment.center,
                                    child: model.unreadMessages == 0
                                        ? null
                                        : Text(
                                            '${model.unreadMessages}',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 12,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
            const SizedBox(height: 2),
            Container(
              height: 320,
              width: double.infinity,
              decoration: BoxDecoration(
                color: CampaignsColors.lightOffWhite,
                borderRadius: BorderRadius.circular(40),
              ),
              padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Text(
                      'Group Chat',
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: TextStyle(
                        color: Colors.grey.shade700,
                        fontSize: 17,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                  for (final model in GroupModel.dummyList)
                    Container(
                      height: 100,
                      margin: const EdgeInsets.only(bottom: 10),
                      width: double.infinity,
                      child: Row(
                        children: [
                          SizedBox(
                            height: 100,
                            width: 100,
                            child: Stack(
                              children: [
                                Positioned.fill(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: CampaignsColors.lightPurple,
                                      borderRadius: BorderRadius.circular(26),
                                    ),
                                    margin: const EdgeInsets.all(9),
                                    padding: const EdgeInsets.all(10),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
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
                                            '+${Random.secure().nextInt(5) + 4}',
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
                                ),
                                Positioned(
                                  left: 0,
                                  bottom: 15,
                                  child: Transform.rotate(
                                    angle: pi * 1.7,
                                    child: SizedBox(
                                      height: 30,
                                      width: 30,
                                      child: Image.asset(
                                          'assets/emoji/${model.members[0].assetPath}'),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 14,
                                  top: 0,
                                  child: Transform.rotate(
                                    angle: pi * 1.9,
                                    child: SizedBox(
                                      height: 25,
                                      width: 25,
                                      child: Image.asset(
                                          'assets/emoji/${model.members[1].assetPath}'),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 27,
                                  top: 26,
                                  child: Transform.rotate(
                                    angle: pi * 1.9,
                                    child: SizedBox(
                                      height: 35,
                                      width: 35,
                                      child: Image.asset(
                                          'assets/emoji/${model.members[2].assetPath}'),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  right: 6,
                                  top: 0,
                                  child: Transform.rotate(
                                    angle: pi * 2.1,
                                    child: SizedBox(
                                      height: 32,
                                      width: 32,
                                      child: Image.asset(
                                          'assets/emoji/${model.members[1].assetPath}'),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 15),
                          // Column of name and recent text from either party
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  model.name,
                                  textAlign: TextAlign.center,
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 22,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  model.isTyping.isNotEmpty
                                      ? '${model.isTyping.map(
                                            (value) => value.split(' ')[0],
                                          ).join(' and ')} ${model.isTyping.length == 1 ? 'is' : 'are'} typing...'
                                      : '${model.lastMessageBy}: ${model.lastMessage}',
                                  textAlign: TextAlign.start,
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 10),
                          SizedBox(
                            width: 50,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  model.lastMessageTime,
                                  textAlign: TextAlign.center,
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Container(
                                  height: 23,
                                  width: 23,
                                  decoration: model.unreadMessages == 0
                                      ? null
                                      : BoxDecoration(
                                          color: CampaignsColors.yellow,
                                          border: Border.all(
                                            color: Colors.black,
                                            width: 1.5,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                  alignment: Alignment.center,
                                  child: model.unreadMessages == 0
                                      ? null
                                      : Text(
                                          '${model.unreadMessages}',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
            const SizedBox(height: 22),
          ],
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
            height: 40,
            width: 40,
            child: Image.asset(
              assetPath,
              fit: BoxFit.cover,
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

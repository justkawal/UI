import 'dart:math';
import 'package:campaigns/models/profile_model.dart';
import 'package:flutter/material.dart';

class GroupModel {
  final String name;
  final List<String> isTyping;
  final List<ProfileModel> members;
  final String lastMessageTime;
  final String lastMessageBy;
  final String lastMessage;
  final Color color;
  final int unreadMessages;

  const GroupModel({
    required this.name,
    required this.isTyping,
    required this.lastMessageTime,
    required this.lastMessage,
    required this.lastMessageBy,
    required this.members,
    required this.color,
    required this.unreadMessages,
  });

  static final dummyList = <GroupModel>[
    GroupModel(
      name: 'Family',
      color: Colors.red,
      isTyping: [],
      members: ProfileModel.dummyList,
      lastMessageBy: ProfileModel
          .dummyList[Random.secure().nextInt(ProfileModel.dummyList.length)]
          .name,
      lastMessage: 'On the way...',
      unreadMessages: 2,
      lastMessageTime:
          '${Random.secure().nextInt(25).clamp(10, 24)}:${Random.secure().nextInt(25).clamp(10, 59)}',
    ),
    GroupModel(
      name: 'Friends',
      color: Colors.red,
      isTyping: ['Ben', 'Mike'],
      members: ProfileModel.dummyList,
      lastMessageBy: ProfileModel
          .dummyList[Random.secure().nextInt(ProfileModel.dummyList.length)]
          .name,
      lastMessage: 'Hey, let\'s catch-up tomorrow morning?',
      unreadMessages: 2,
      lastMessageTime:
          '${Random.secure().nextInt(25).clamp(10, 24)}:${Random.secure().nextInt(25).clamp(10, 59)}',
    ),
  ];
}

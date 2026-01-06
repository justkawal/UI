import 'dart:math';
import 'package:campaigns/utilities/colors.dart';
import 'package:flutter/material.dart';

class ChatModel {
  final String name;
  final bool isOnline;
  final bool isTyping;
  final String assetPath;
  final String lastMessage;
  final String lastMessageTime;
  final Color color;
  final int unreadMessages;

  const ChatModel({
    required this.name,
    required this.isOnline,
    required this.isTyping,
    required this.assetPath,
    required this.lastMessage,
    required this.lastMessageTime,
    required this.color,
    required this.unreadMessages,
  });

  static final dummyList = <ChatModel>[
    ChatModel(
      name: 'Mike Gauzoski',
      isOnline: true,
      isTyping: true,
      color: CampaignsColors.mediumPurple,
      assetPath: 'emoji3.png',
      lastMessage: 'Hey, let\'s catch-up tomorrow morning?',
      unreadMessages: 2,
      lastMessageTime:
          '${Random.secure().nextInt(25).clamp(10, 24)}:${Random.secure().nextInt(25).clamp(10, 59)}',
    ),
    ChatModel(
      name: 'Mike Gauzoski',
      isOnline: true,
      isTyping: false,
      color: CampaignsColors.yellow,
      unreadMessages: 4,
      assetPath: 'emoji0.png',
      lastMessage: 'Hey, let\'s catch-up tomorrow morning?',
      lastMessageTime:
          '${Random.secure().nextInt(25).clamp(10, 24)}:${Random.secure().nextInt(25).clamp(10, 59)}',
    ),
    ChatModel(
      name: 'Mike Gauzoski',
      isOnline: false,
      isTyping: false,
      unreadMessages: 0,
      color: CampaignsColors.mediumGreen,
      assetPath: 'emoji2.png',
      lastMessage: 'Hey, let\'s catch-up tomorrow morning?',
      lastMessageTime:
          '${Random.secure().nextInt(25).clamp(10, 24)}:${Random.secure().nextInt(25).clamp(10, 59)}',
    ),
    ChatModel(
      name: 'Mike Gauzoski',
      isOnline: false,
      isTyping: false,
      color: CampaignsColors.lightPurple,
      unreadMessages: 0,
      assetPath: 'emoji1.png',
      lastMessage: 'Hey, let\'s catch-up tomorrow morning?',
      lastMessageTime:
          '${Random.secure().nextInt(25).clamp(10, 24)}:${Random.secure().nextInt(25).clamp(10, 59)}',
    ),
  ];
}

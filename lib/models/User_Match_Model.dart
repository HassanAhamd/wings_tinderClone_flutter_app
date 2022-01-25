

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:wings_dating_app_flutter/models/Users.dart';

import 'Chat_Model.dart';

class UserMatch extends Equatable{
  final int id;
  final int userId;
  final User matchedUser;
  final List<Chat>? chat;

  UserMatch({
    required this.id,
    required this.userId,
    required this.matchedUser,
    required this.chat,
  });

  @override
  List<Object?> get props => [id,userId,matchedUser];

  static List<UserMatch> matches = [
    UserMatch(
        id: 1,
        userId: 0,
      matchedUser: User.users[1],
        chat: Chat.chats
        .where((chat) => chat.userId == 0 && chat.matchedUserId == 1)
        .toList(),
    ),
    UserMatch(
      id: 2,
      userId: 0,
      matchedUser: User.users[2],
      chat: Chat.chats
          .where((chat) => chat.userId == 0 && chat.matchedUserId == 2)
          .toList(),
    ),
    UserMatch(
      id: 3,
      userId: 0,
      matchedUser: User.users[3],
      chat: Chat.chats
      .where((chat) => chat.userId == 0 && chat.matchedUserId == 3)
      .toList(),
    ),
    UserMatch(
      id: 4,
      userId: 0,
      matchedUser: User.users[4],
      chat: Chat.chats
          .where((chat) => chat.userId == 0 && chat.matchedUserId == 4)
          .toList(),
    ),
    UserMatch(
      id: 5,
      userId: 0,
      matchedUser: User.users[5],
      chat: Chat.chats
          .where((chat) => chat.userId == 0 && chat.matchedUserId == 5)
          .toList(),
    ),



    UserMatch(
      id: 6,
      userId: 0,
      matchedUser: User.users[0],
      chat: Chat.chats
          .where((chat) => chat.userId == 0 && chat.matchedUserId == 0)
          .toList(),
    ),
    UserMatch(
      id: 7,
      userId: 0,
      matchedUser: User.users[0],
      chat: Chat.chats
          .where((chat) => chat.userId == 0 && chat.matchedUserId == 0)
          .toList(),
    ),
    UserMatch(
      id: 8,
      userId: 0,
      matchedUser: User.users[0],
      chat: Chat.chats
          .where((chat) => chat.userId == 0 && chat.matchedUserId == 0)
          .toList(),
    ),
    UserMatch(
      id: 9,
      userId: 0,
      matchedUser: User.users[0],
      chat: Chat.chats
          .where((chat) => chat.userId == 0 && chat.matchedUserId == 0)
          .toList(),
    ),
    UserMatch(
      id: 10,
      userId: 0,
      matchedUser: User.users[0],
      chat: Chat.chats
          .where((chat) => chat.userId == 0 && chat.matchedUserId == 0)
          .toList(),
    ),
    UserMatch(
      id: 11,
      userId: 0,
      matchedUser: User.users[0],
      chat: Chat.chats
          .where((chat) => chat.userId == 0 && chat.matchedUserId == 0)
          .toList(),
    ),
    UserMatch(
      id: 12,
      userId: 0,
      matchedUser: User.users[0],
      chat: Chat.chats
          .where((chat) => chat.userId == 0 && chat.matchedUserId == 0)
          .toList(),
    ),
  ];

}
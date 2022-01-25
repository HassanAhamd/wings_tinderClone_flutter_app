import 'package:equatable/equatable.dart';
import 'package:wings_dating_app_flutter/models/Message_Model.dart';

class Chat extends Equatable{
  final int id;
  final int userId;
  final int matchedUserId;
  final List<Message> messages;


  Chat({
    required this.id,
    required this.userId,
    required this.matchedUserId,
    required this.messages,

});

  @override
  List<Object?> get props => [
    id,
    userId,
    matchedUserId,
    messages
  ];

  static List<Chat> chats = [
    Chat(
        id: 1,
        userId: 0,
      matchedUserId: 1,
        messages: Message.messages
            .where((message) =>
              (message.senderId == 0 && message.receiverId == 1) ||
              (message.senderId == 1 && message.receiverId == 0))
            .toList(),
        ),
    Chat(
      id: 2,
      userId: 0,
      matchedUserId: 2,
      messages: Message.messages
          .where((message) =>
      (message.senderId == 0 && message.receiverId == 2) ||
          (message.senderId == 2 && message.receiverId == 0))
          .toList(),
    ),
  ];

}
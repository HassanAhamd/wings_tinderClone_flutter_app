

import 'package:equatable/equatable.dart';
import 'package:intl/intl.dart';

class Message extends Equatable{
  final int id;
  final int senderId;
  final int receiverId;
  final String message;
  final DateTime dateTime;
  final String timeSting;


  Message({
    required this.id,
    required this.senderId,
    required this.receiverId,
    required this.message,
    required this.dateTime,
    required this.timeSting
});

  @override
  List<Object?> get props => [
    id,
    senderId,
    receiverId,
    message,
    dateTime,
    timeSting
  ];

  static List<Message> messages = [
    Message(id: 1,
        senderId: 0,
        receiverId: 1,
        message: 'Hi',
        dateTime: DateTime.now(),
        timeSting: DateFormat('jm').format(DateTime.now())),
    Message(id: 2,
        senderId: 1,
        receiverId: 0,
        message: 'Hello',
        dateTime: DateTime.now(),
        timeSting: DateFormat('jm').format(DateTime.now())),
    Message(id: 3,
        senderId: 0,
        receiverId: 1,
        message: 'How are You !',
        dateTime: DateTime.now(),
        timeSting: DateFormat('jm').format(DateTime.now())),
    Message(id: 4,
        senderId: 1,
        receiverId: 0,
        message: 'Am Good, You tell !',
        dateTime: DateTime.now(),
        timeSting: DateFormat('jm').format(DateTime.now())),
    Message(id: 5,
        senderId: 0,
        receiverId: 1,
        message: 'Am good too, Can you develop a app for me !',
        dateTime: DateTime.now(),
        timeSting: DateFormat('jm').format(DateTime.now())),
    Message(id: 6,
        senderId: 1,
        receiverId: 0,
        message: 'Sure Why not !',
        dateTime: DateTime.now(),
        timeSting: DateFormat('jm').format(DateTime.now())),





    Message(id: 7,
        senderId: 0,
        receiverId: 2,
        message: 'Ali Kesa hai ?',
        dateTime: DateTime.now(),
        timeSting: DateFormat('jm').format(DateTime.now())),
    Message(id: 8,
        senderId: 2,
        receiverId: 0,
        message: 'Thk tu Suna !',
        dateTime: DateTime.now(),
        timeSting: DateFormat('jm').format(DateTime.now())),
    Message(id: 9,
        senderId: 0,
        receiverId: 2,
        message: 'Main bhe thk',
        dateTime: DateTime.now(),
        timeSting: DateFormat('jm').format(DateTime.now())),
    Message(id: 10,
        senderId: 2,
        receiverId: 0,
        message: 'Good',
        dateTime: DateTime.now(),
        timeSting: DateFormat('jm').format(DateTime.now())),



  ];

}
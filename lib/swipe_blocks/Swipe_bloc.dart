import 'package:equatable/equatable.dart';
import 'package:wings_dating_app_flutter/models/Users.dart';


abstract class SwipeEvent extends Equatable{
  const SwipeEvent();

  @override
  List<Object> get props => [];
}

class LoadUsersEvent extends SwipeEvent{
  final List<User> users;

  const LoadUsersEvent({required this.users});

  @override
  List<Object> get props => [users];
}


class SwipeLeftEvent extends SwipeEvent{
  final User user;

  SwipeLeftEvent({required this.user});

  @override
  List<Object> get props => [user];
}


class SwipeRightEvent extends SwipeEvent{
  final User user;

  SwipeRightEvent({required this.user});

  @override
  List<Object> get props => [user];
}
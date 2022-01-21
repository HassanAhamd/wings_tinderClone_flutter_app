import 'package:equatable/equatable.dart';
import 'package:wings_dating_app_flutter/models/Users.dart';

abstract class SwipeState extends Equatable{
  const SwipeState();

  @override
  List<Object> get props => [];
}

class SwipeLoading extends SwipeState{}


class SwipeLoaded extends SwipeState{
  final List<User> users;

  const SwipeLoaded({required this.users});
  @override
  List<Object> get props => [users];
}


class SwipeError extends SwipeState{}
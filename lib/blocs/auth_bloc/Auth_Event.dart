
import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:equatable/equatable.dart';

class AuthEvent extends Equatable{
  @override
  List<Object?> get props => throw UnimplementedError();

}

class AuthUserChanged extends AuthEvent{
  final auth.User user;


  AuthUserChanged({required this.user});

  @override
  List<Object?> get props => [user];
}
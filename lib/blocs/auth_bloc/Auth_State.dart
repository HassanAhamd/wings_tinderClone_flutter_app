import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;

enum AuthStatus{unknown,authenticated,unauthenticated}

class AuthState extends Equatable{
final AuthStatus  authStatus;
final auth.User? user;


const AuthState._({
  this.authStatus = AuthStatus.unknown,
    this.user
});


const AuthState.unknown(): this._();


const AuthState.authenticated({required auth.User user}): this._(
    authStatus: AuthStatus.authenticated,
    user: user,
);

const AuthState.unauthenticated(): this._(authStatus: AuthStatus.unauthenticated);

  @override
  List<Object?> get props => [authStatus,user];
}
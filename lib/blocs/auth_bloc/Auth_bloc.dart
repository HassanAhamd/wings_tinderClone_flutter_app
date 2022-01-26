import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wings_dating_app_flutter/blocs/auth_bloc/Auth_State.dart';
import 'package:wings_dating_app_flutter/models/Users.dart';
import 'package:wings_dating_app_flutter/repo/auth_repo.dart';

import 'Auth_Event.dart';
import 'Auth_State.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;

class AuthBloc extends Bloc<AuthEvent, AuthState>{
  final AuthRepo  _authRepo;
  StreamSubscription<auth.User?>? _userSubscription;

  AuthBloc({
    required AuthRepo authRepo
}): _authRepo = authRepo,
  super(AuthState.unknown()){
    _userSubscription = _authRepo.user.listen((user) => add(AuthUserChanged(user: user!)));
  }

  @override
  Stream<AuthState> mapEventtoState(
      AuthEvent authEvent,) async* {
    if(authEvent is AuthUserChanged){
      yield* _mapAuthUserChangedToState(authEvent);
    }
  }

  Stream<AuthState> _mapAuthUserChangedToState(AuthUserChanged event) async*{
    yield AuthState.authenticated(user:  event.user);
  }

  @override
  Future<void> close(){
    _userSubscription?.cancel();
    return super.close();
  }
}


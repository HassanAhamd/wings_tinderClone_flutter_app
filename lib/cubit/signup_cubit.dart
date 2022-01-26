

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wings_dating_app_flutter/cubit/signup_state.dart';
import 'package:wings_dating_app_flutter/repo/auth_repo.dart';

class SignUpCubit extends Cubit<SignUpState> {
  final AuthRepo _authRepo;

  SignUpCubit({required AuthRepo authRepo})
      :
        _authRepo = authRepo,
        super(SignUpState.initial());


  void emailChanged(String value) {
    emit(state.copyWith(email: value, signUpStatus: SignUpStatus.intial));
  }

  void passwordChanged(String value) {
    emit(state.copyWith(password: value, signUpStatus: SignUpStatus.intial));
  }

  void signupWithCredentials() async {
    if(!state.isValid) return;
   try{
     await _authRepo.signUp(email: state.email, password: state.password);
     emit(state.copyWith(signUpStatus: SignUpStatus.sucess));
   }catch(e){}
  }
}


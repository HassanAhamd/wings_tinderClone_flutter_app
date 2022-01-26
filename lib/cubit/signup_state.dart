

import 'package:equatable/equatable.dart';

enum SignUpStatus{intial, submitting, sucess, error}
class SignUpState extends Equatable{
  final String email;
  final String password;
  final SignUpStatus signUpStatus;

  SignUpState({
    required this.email,
    required this.password,
    required this.signUpStatus,
});

  factory SignUpState.initial(){
    return SignUpState(email: '', password: '', signUpStatus: SignUpStatus.intial);
  }

  SignUpState copyWith({
    String? email,
  String? password,
  SignUpStatus? signUpStatus,
}){
    return SignUpState(email: email ?? this.email, password: password ?? this.password, signUpStatus: signUpStatus ?? this.signUpStatus);
  }

  bool get isValid => email.isNotEmpty && password.isNotEmpty;

@override
  List<Object?> get props => [email,password,signUpStatus];
}
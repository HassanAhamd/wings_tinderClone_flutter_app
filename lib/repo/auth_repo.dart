
import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:wings_dating_app_flutter/repo/base_auth_repo.dart';

class AuthRepo extends BaseAuthRepo{
   final auth.FirebaseAuth _firebaseAuth;


   AuthRepo({auth.FirebaseAuth? firebaseAuth})
   : _firebaseAuth = firebaseAuth ?? auth.FirebaseAuth.instance;

  @override
  Future<auth.User?> signUp({required String email, required String password})
  async {
    try{
      final credential = await _firebaseAuth.createUserWithEmailAndPassword(
          email: email,
          password: password);
      final user = credential.user;
      return user;
    }catch(e){

    }
  }

  @override
  Stream<auth.User?> get user => _firebaseAuth.userChanges();

}
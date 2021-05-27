import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';

class AuthenticationService {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Future loginwithEmail(
      {required String email, required String password}) async {
    try {
      var user = await _firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
      return user;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for this email');
      } else if (e.code == 'wrong-password') {
        print('Wrong password');
      }
    }
  }

  Future signUpWithEmail(
      {required String email, required String password}) async {
    try {
      var authResult = await _firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);
      return authResult;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print(
            'The password provided is too weak, it must be 6 characters long or more.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }
}

import 'package:firebase_auth/firebase_auth.dart';
import 'package:friendlinus/models/models.dart';

class AuthRepo {
  FirebaseAuth _auth = FirebaseAuth.instance;

  AuthRepo();

  Future<void> signInWithEmailAndPassword(
      {required String email, required String password}) async {
    await _auth.signInWithEmailAndPassword(email: email, password: password);
  }

  Future<UserModel> getUser() async {
    final firebaseUser = _auth.currentUser;
    return UserModel(firebaseUser!.uid, displayName: firebaseUser.displayName);
  }
}

import 'dart:html';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:friendlinus/domain/auth/user_profile.dart';
import 'package:friendlinus/infrastructure/core/firestore_helpers.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class UserFirestore {
  final FirebaseFirestore _firestore;
  UserFirestore(this._firestore);

  Future<void> createUser(UserProfile userProfile) async {
    final DocumentReference usersDoc =
        await _firestore.usersDocument();
    usersDoc.set(userProfile.toJson());
  }
}

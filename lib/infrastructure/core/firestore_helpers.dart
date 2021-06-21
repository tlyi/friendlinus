import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:friendlinus/domain/auth/i_auth_facade.dart';
import 'package:friendlinus/domain/core/errors.dart';
import 'package:friendlinus/injection.dart';

extension FirestoreX on FirebaseFirestore {
  Future<DocumentReference> userDocument() async {
    final userOption = await getIt<IAuthFacade>().getSignedInUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    return FirebaseFirestore.instance
        .collection('users')
        .doc(user.id.getOrCrash());
  }

  Future<DocumentReference> userDocumentById(String otherId) async {
    return FirebaseFirestore.instance.collection('users').doc(otherId);
  }

  Future<CollectionReference> chatsRef() async {
    return FirebaseFirestore.instance.collection('chats');
  }

  Future<CollectionReference> usersRef() async {
    return FirebaseFirestore.instance.collection('users');
  }
}

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:friendlinus/domain/auth/i_auth_facade.dart';
import 'package:friendlinus/domain/core/errors.dart';
import 'package:friendlinus/injection.dart';

extension FirestoreX on FirebaseFirestore {
  //For Profiles
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

  Future<DocumentReference> chatDocumentById(String convoId) async {
    return FirebaseFirestore.instance.collection('chats').doc(convoId);
  }

  Future<DocumentReference> messageDocumentById(
      String convoId, String messageId) async {
    return FirebaseFirestore.instance
        .collection('messages')
        .doc(convoId)
        .collection('messages')
        .doc(messageId);
  }

  Future<CollectionReference> convoMessagesRef(String convoId) async {
    return FirebaseFirestore.instance
        .collection('messages')
        .doc(convoId)
        .collection('messages');
  }

  //For Forums
  Future<CollectionReference> forumsRef() async {
    return FirebaseFirestore.instance.collection('forums');
  }

  Future<DocumentReference> forumDocument(String forumId) async {
    return FirebaseFirestore.instance.collection('forums').doc(forumId);
  }

  Future<DocumentReference> pollDocument(String forumId) async {
    return FirebaseFirestore.instance.collection('polls').doc(forumId);
  }

  Future<DocumentReference> commentsDoc(String forumId) async {
    return FirebaseFirestore.instance.collection('comments').doc(forumId);
  }

  Future<CollectionReference> commentsForumRef(String forumId) async {
    return FirebaseFirestore.instance
        .collection('comments')
        .doc(forumId)
        .collection('comments');
  }

  Future<CollectionReference> modulesRef() async {
    return FirebaseFirestore.instance.collection('modules');
  }
}

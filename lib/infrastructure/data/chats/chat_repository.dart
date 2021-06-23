import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:friendlinus/domain/core/value_objects.dart';
import 'package:friendlinus/domain/data/chats/chat_message/chat_message.dart';
import 'package:friendlinus/domain/data/chats/value_objects.dart';
import 'package:friendlinus/domain/data/data_failure.dart';
import 'package:friendlinus/domain/data/chats/chat.dart';
import 'package:friendlinus/domain/data/profile/profile.dart';
import 'package:friendlinus/infrastructure/data/chats/chat_dtos.dart';
import 'package:friendlinus/infrastructure/data/profile/profile_dtos.dart';
import 'package:injectable/injectable.dart';
import 'package:friendlinus/domain/data/chats/i_chat_repository.dart';
import 'package:friendlinus/infrastructure/core/firestore_helpers.dart';

import 'chat_message/chat_message_dtos.dart';

@LazySingleton(as: IChatRepository)
class ChatRepository implements IChatRepository {
  final FirebaseFirestore _firestore;
  final FirebaseStorage _firebaseStorage;

  ChatRepository(this._firestore, this._firebaseStorage);

  @override
  Future<String> getOwnId() async {
    final userDoc = await _firestore.userDocument();
    return userDoc.id;
  }

  @override
  Future<Either<DataFailure, Chat>> createChat(
      Chat chat, String userIdsCombined, String otherId) async {
    try {
      final chatsRef = await _firestore.chatsRef();
      final chatDto = ChatDto.fromDomain(chat);
      final userDoc = await _firestore.userDocument();
      final otherUserDoc = await _firestore.userDocumentById(otherId);
      final ownId = await getOwnId();

      DocumentSnapshot doc = await chatsRef.doc(userIdsCombined).get();

      if (!doc.exists) {
        try {
          //If chat does not exist, create chat
          await chatsRef.doc(userIdsCombined).set(chatDto.toJson());
          await userDoc.update({
            'chatsImIn': FieldValue.arrayUnion([otherId])
          });
          print('supposed to add to userdoc');
          await otherUserDoc.update({
            'chatsImIn': FieldValue.arrayUnion([ownId])
          });

          print('chat created');
          return right(chat);
        } on FirebaseException catch (e) {
          if (e.message!.contains('PERMISSION_DENIED')) {
            return left(const DataFailure.insufficientPermission());
          } else {
            return left(const DataFailure.unexpected());
          }
        }
      } else {
        //If chat exists, just return
        print('chat alr exists');
        return right(ChatDto.fromFirestore(doc).toDomain());
      }
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const DataFailure.insufficientPermission());
      } else {
        return left(const DataFailure.unexpected());
      }
    }
  }

  @override
  Stream<Either<DataFailure, List<Chat>>> retrieveUserChats(
      String userId) async* {
    final chatsRef = await _firestore.chatsRef();
    print("here");
    yield* chatsRef
        .orderBy('timestamp', descending: true)
        .where('userIds', arrayContains: userId)
        .snapshots()
        .map(
          (snapshot) => right<DataFailure, List<Chat>>(
            snapshot.docs
                .map((doc) => ChatDto.fromFirestore(doc).toDomain())
                .toList(),
          ),
        )
        .handleError((e) {
      if (e is FirebaseException && e.message!.contains('PERMISSION_DENIED')) {
        return left(const DataFailure.insufficientPermission());
      } else {
        print(e);
        return left(const DataFailure.unexpected());
      }
    });
  }

  @override
  Future<Either<DataFailure, Profile>> searchProfileByUuid(String uuid) async {
    try {
      final usersRef = await _firestore.usersRef();
      return usersRef.doc(uuid).get().then((DocumentSnapshot doc) =>
          right(ProfileDto.fromFirestore(doc).toDomain()));
    } on FirebaseException catch (e) {
      print(e);
      return left(const DataFailure.unexpected());
    }
  }

  @override
  Future<Either<DataFailure, Unit>> createMessage(
      {required String convoId,
      required String messageId,
      required ChatMessage chatMessage}) async {
    try {
      final convoMessagesRef = await _firestore.convoMessagesRef(convoId);
      final chatMessageDto = ChatMessageDto.fromDomain(chatMessage);
      await convoMessagesRef.doc(messageId).set(chatMessageDto.toJson());
      await _firestore.runTransaction((transaction) async {
        final chatDoc = await _firestore.chatDocumentById(convoId);
        transaction.update(
          chatDoc,
          {
            'lastMessage': chatMessageDto.messageBody,
            'lastSenderId': chatMessageDto.senderId,
            'lastMessageRead': false,
            'timestamp': chatMessageDto.timeSent,
          },
        );
      }); //update last message in chat
      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const DataFailure.insufficientPermission());
      } else {
        return left(const DataFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<DataFailure, String>> uploadPhoto(
      File photo, String convoId, String messageId) async {
    UploadTask storageUploadTask;
    storageUploadTask = _firebaseStorage
        .ref()
        .child('forumPictures')
        .child(convoId)
        .child(messageId)
        .putFile(photo);

    try {
      final String url = await storageUploadTask.then((ref) async {
        return ref.ref.getDownloadURL();
      });
      return right(url);
    } on FirebaseException catch (e) {
      print(e.code);
      return left(const DataFailure.unexpected());
    }
  }

  @override
  Future<Either<DataFailure, Unit>> deleteChat(Chat chat) {
    // TODO: implement deleteChat
    throw UnimplementedError();
  }

  @override
  Future<Either<DataFailure, Unit>> deleteMessage(ChatMessage chatMessage) {
    // TODO: implement deleteMessage
    throw UnimplementedError();
  }

  @override
  Future<Either<DataFailure, Chat>> getChatIfExists(String userIds) async {
    try {
      final chatsRef = await _firestore.chatsRef();
      QuerySnapshot query =
          await chatsRef.where('userIds', isEqualTo: userIds).get();
      if (query.docs.isNotEmpty) {
        return right(ChatDto.fromFirestore(query.docs[0]).toDomain());
      } else {
        return right(Chat.empty());
      }
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const DataFailure.insufficientPermission());
      } else {
        return left(const DataFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<DataFailure, Unit>> updateMessage(ChatMessage chatMessage) {
    // TODO: implement updateMessage
    throw UnimplementedError();
  }

  @override
  Stream<Either<DataFailure, List<ChatMessage>>> getConvo(
      String convoId) async* {
    final convoMessagesRef = await _firestore.convoMessagesRef(convoId);
    print("retrieving messages");
    yield* convoMessagesRef
        .orderBy('timesent', descending: true)
        .snapshots()
        .map(
          (snapshot) => right<DataFailure, List<ChatMessage>>(
            snapshot.docs
                .map((doc) => ChatMessageDto.fromFirestore(doc).toDomain())
                .toList(),
          ),
        )
        .handleError((e) {
      if (e is FirebaseException && e.message!.contains('PERMISSION_DENIED')) {
        return left(const DataFailure.insufficientPermission());
      } else {
        print(e);
        return left(const DataFailure.unexpected());
      }
    });
  }
}

/*   try {
      final chatsRef = await _firestore.chatsRef();
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const DataFailure.insufficientPermission());
      } else {
        return left(const DataFailure.unexpected());
      }
*/

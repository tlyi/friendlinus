import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:friendlinus/domain/core/value_objects.dart';
import 'package:friendlinus/domain/data/data_failure.dart';
import 'package:friendlinus/domain/data/chats/chat_message.dart';
import 'package:friendlinus/domain/data/chats/chat.dart';
import 'package:friendlinus/infrastructure/data/chats/chat_dtos.dart';
import 'package:injectable/injectable.dart';
import 'package:friendlinus/domain/data/chats/i_chat_repository.dart';
import 'package:friendlinus/infrastructure/core/firestore_helpers.dart';

@LazySingleton(as: IChatRepository)
class ChatRepository implements IChatRepository {
  final FirebaseFirestore _firestore;

  ChatRepository(this._firestore);

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

      QuerySnapshot query = await chatsRef
          .where('userIdsCombined', isEqualTo: userIdsCombined)
          .get();

      print(query.docs.length);
      if (query.docs.isEmpty) {
        try {
          //If chat does not exist, create chat
          await chatsRef.add(chatDto.toJson());
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
        return right(ChatDto.fromFirestore(query.docs[0]).toDomain());
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
    yield* chatsRef
        .orderBy('timestamp', descending: true)
        .where('users', arrayContains: userId)
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
  Future<Either<DataFailure, Unit>> createMessage(ChatMessage chatMessage) {
    // TODO: implement createMessage
    throw UnimplementedError();
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
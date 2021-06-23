import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:friendlinus/domain/core/value_objects.dart';
import 'package:friendlinus/domain/data/chats/chat.dart';
import 'package:friendlinus/domain/data/chats/chat_message/chat_message.dart';
import 'package:friendlinus/domain/data/chats/value_objects.dart';
import 'package:friendlinus/domain/data/data_failure.dart';
import 'package:friendlinus/domain/data/profile/profile.dart';

abstract class IChatRepository {
  Future<String> getOwnId();

  Future<Either<DataFailure, Chat>> createChat(
      Chat chat, String userIdsCombined, String otherId);

  Stream<Either<DataFailure, List<Chat>>> retrieveUserChats(String userId);

  Future<Either<DataFailure, Profile>> searchProfileByUuid(String uuid);

  Future<Either<DataFailure, Unit>> deleteChat(Chat chat); //to be implemented

  Stream<Either<DataFailure, List<ChatMessage>>> getConvo(String convoId);

  Future<Either<DataFailure, Unit>> createMessage(
      {required String convoId,
      required String messageId,
      required ChatMessage chatMessage});

  Future<Either<DataFailure, String>> uploadPhoto(
      File photo, String convoId, String messageId);

  Future<Either<DataFailure, Unit>> updateMessage(
      ChatMessage chatMessage); //to be implemented

  Future<Either<DataFailure, Unit>> deleteMessage(
      ChatMessage chatMessage); //to be implemented
}

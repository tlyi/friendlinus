import 'package:dartz/dartz.dart';
import 'package:friendlinus/domain/core/value_objects.dart';
import 'package:friendlinus/domain/data/chats/chat.dart';
import 'package:friendlinus/domain/data/chats/chat_message.dart';
import 'package:friendlinus/domain/data/data_failure.dart';

abstract class IChatRepository {
  Future<String> getOwnId();

  Future<Either<DataFailure, Chat>> createChat(
      Chat chat, String userIdsCombined, String otherId);

  Stream<Either<DataFailure, List<Chat>>> retrieveUserChats(String userId);

  Future<Either<DataFailure, Unit>> deleteChat(Chat chat); //to be implemented

  Future<Either<DataFailure, Chat>> getChatIfExists(String userIds);

  Future<Either<DataFailure, Unit>> createMessage(ChatMessage chatMessage);

  Future<Either<DataFailure, Unit>> updateMessage(ChatMessage chatMessage);

  Future<Either<DataFailure, Unit>> deleteMessage(ChatMessage chatMessage);
}

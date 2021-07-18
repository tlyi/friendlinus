import 'dart:io';
import 'package:friendlinus/domain/data/chats/location_failure.dart';
import 'package:geolocator/geolocator.dart';
import 'package:dartz/dartz.dart';
import 'package:friendlinus/domain/core/value_objects.dart';
import 'package:friendlinus/domain/data/chats/chat.dart';
import 'package:friendlinus/domain/data/chats/chat_message/chat_message.dart';
import 'package:friendlinus/domain/data/chats/location_chat.dart';
import 'package:friendlinus/domain/data/chats/value_objects.dart';
import 'package:friendlinus/domain/data/data_failure.dart';
import 'package:friendlinus/domain/data/profile/profile.dart';

abstract class IChatRepository {
  Future<String> getOwnId();

  Stream<Either<DataFailure, List<Chat>>> retrieveUserChats(String userId);

  Future<Either<DataFailure, Profile>> searchProfileByUuid(String uuid);

  Future<Either<DataFailure, Unit>> deleteChat(Chat chat); //to be implemented

  Stream<Either<DataFailure, List<ChatMessage>>> getConvo(String convoId);

  Future<Either<DataFailure, Unit>> createMessage(
      {required String receiverId,
      required String convoId,
      required String messageId,
      required ChatMessage chatMessage});

  Future<Either<DataFailure, String>> uploadPhoto(
      File photo, String convoId, String messageId);

  Future<Either<DataFailure, Unit>> updateMessageRead(
      {required String convoId, required String messageId});

  Future<Either<DataFailure, Unit>> updateLastMessageRead(
      {required String convoId});

  Future<Either<DataFailure, Unit>> deleteMessage(
      ChatMessage chatMessage); //to be implemented

  Future<Either<LocationFailure, Position>> getLastKnownLocation();

  Future<Either<LocationFailure, Position>> getCurrentLocation();

  Future<Either<DataFailure, Unit>> createLocationChat(
      LocationChat locationChat);

  Future<Either<DataFailure, Map<String, double>>> getNearestChatIds(
      Position position);

  Stream<Either<DataFailure, List<LocationChat>>> retrieveLocationChats(
      List<String> nearestChatIds);

  Future<Either<DataFailure, Unit>> createLocationMessage(
      {required String convoId,
      required String messageId,
      required ChatMessage chatMessage});

  Stream<Either<DataFailure, List<ChatMessage>>> getLocationConvo(
      String convoId);

  Future<Either<DataFailure, List<LocationChat>>> searchLocationChatByTitle(
      String locationChatTitle);
}

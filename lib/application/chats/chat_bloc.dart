import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:friendlinus/domain/data/chats/chat.dart';
import 'package:friendlinus/domain/data/chats/i_chat_repository.dart';
import 'package:friendlinus/domain/data/data_failure.dart';
import 'package:injectable/injectable.dart';

part 'chat_event.dart';
part 'chat_state.dart';
part 'chat_bloc.freezed.dart';

@injectable
class ChatBloc extends Bloc<ChatEvent, ChatState> {
  final IChatRepository _chatRepository;

  ChatBloc(this._chatRepository, this._userChatsStreamSubscription)
      : super(ChatState.initial());

  StreamSubscription<Either<DataFailure, List<Chat>>>
      _userChatsStreamSubscription;

  @override
  Stream<ChatState> mapEventToState(
    ChatEvent event,
  ) async* {
    yield* event.map(chatStarted: (e) async* {
      final ownId = await _chatRepository.getOwnId();

      final userIdsCombined = ownId.compareTo(e.otherId) > 0
          ? '${ownId}_${e.otherId}'
          : '${e.otherId}_$ownId';

      yield state.copyWith(
        userIds: [ownId, e.otherId],
        isLoading: true,
        failureOrChat: right(Chat.empty()),
      );

      Either<DataFailure, Chat> failureOrChat;
      failureOrChat = await _chatRepository.createChat(
          state.chat.copyWith(
              userIdsCombined: userIdsCombined, userIds: [ownId, e.otherId]),
          userIdsCombined,
          e.otherId);

      yield state.copyWith(
        isLoading: false,
        chat: failureOrChat.getOrElse(() => Chat.empty()),
        failureOrChat: failureOrChat,
      );
    }, retrievedUserChats: (e) async* {
      final ownId = await _chatRepository.getOwnId();
      yield state.copyWith(isLoading: true);
      await _userChatsStreamSubscription.cancel();
      Either<DataFailure, List<Chat>> failureOrChats = right([]);
      _userChatsStreamSubscription = _chatRepository
          .retrieveUserChats(ownId)
          .listen((failureOrChats) => failureOrChats = failureOrChats);
      yield state.copyWith(
        isLoading: false,
        userChats: failureOrChats,
      );
    });
  }
}

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

  ChatBloc(this._chatRepository) : super(const ChatState.initial());

  @override
  Stream<ChatState> mapEventToState(
    ChatEvent event,
  ) async* {
    yield* event.map(
      chatStarted: (e) async* {
        print("creating chat");
        yield const ChatState.loadInProgress();

        String ownId = await _chatRepository.getOwnId();

        String userIdsCombined = ownId.compareTo(e.otherId) > 0
            ? '${ownId}_${e.otherId}'
            : '${e.otherId}_$ownId';

        Chat chat = Chat.empty().copyWith(
          userIdsCombined: userIdsCombined,
          userIds: [ownId, e.otherId],
        );

        print(chat);

        final failureOrChat =
            await _chatRepository.createChat(chat, userIdsCombined, e.otherId);
        print("created chat");
        yield failureOrChat.fold((failure) => ChatState.loadFailure(failure),
            (chat) => ChatState.loadSuccess(chat));
      },
    );
  }
}

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_watcher_event.dart';
part 'chat_watcher_state.dart';
part 'chat_watcher_bloc.freezed.dart';

class ChatWatcherBloc extends Bloc<ChatWatcherEvent, ChatWatcherState> {
  ChatWatcherBloc() : super(_Initial());

  @override
  Stream<ChatWatcherState> mapEventToState(
    ChatWatcherEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}

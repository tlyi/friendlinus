import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'forum_watcher_event.dart';
part 'forum_watcher_state.dart';
part 'forum_watcher_bloc.freezed.dart';

class ForumWatcherBloc extends Bloc<ForumWatcherEvent, ForumWatcherState> {
  ForumWatcherBloc() : super(_Initial());

  @override
  Stream<ForumWatcherState> mapEventToState(
    ForumWatcherEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}

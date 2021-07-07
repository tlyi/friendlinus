import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:friendlinus/domain/data/data_failure.dart';
import 'package:friendlinus/domain/data/forum/i_forum_repository.dart';
import 'package:friendlinus/domain/data/notifications/notification.dart';

part 'notification_watcher_event.dart';
part 'notification_watcher_state.dart';
part 'notification_watcher_bloc.freezed.dart';

class NotificationWatcherBloc
    extends Bloc<NotificationWatcherEvent, NotificationWatcherState> {
  final IForumRepository _forumRepository;
  NotificationWatcherBloc(this._forumRepository): super(NotificationWatcherState.initial());

  @override
  Stream<NotificationWatcherState> mapEventToState(
    NotificationWatcherEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}

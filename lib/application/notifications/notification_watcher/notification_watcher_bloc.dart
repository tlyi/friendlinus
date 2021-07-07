import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:friendlinus/domain/data/data_failure.dart';
import 'package:friendlinus/domain/data/notifications/i_notification_repository.dart';
import 'package:friendlinus/domain/data/notifications/notification.dart';
import 'package:friendlinus/domain/data/profile/profile.dart';
import 'package:injectable/injectable.dart';

part 'notification_watcher_event.dart';
part 'notification_watcher_state.dart';
part 'notification_watcher_bloc.freezed.dart';

@injectable
class NotificationWatcherBloc
    extends Bloc<NotificationWatcherEvent, NotificationWatcherState> {
  INotificationRepository _notificationRepository;
  NotificationWatcherBloc(this._notificationRepository)
      : super(const NotificationWatcherState.initial());

  StreamSubscription<Either<DataFailure, List<Notification>>>?
      _notificationStreamSubscription;

  @override
  Stream<NotificationWatcherState> mapEventToState(
    NotificationWatcherEvent event,
  ) async* {
    yield* event.map(
      retrieveNotificationsStarted: (e) async* {
        yield const NotificationWatcherState.loadInProgress();
        String userId = await _notificationRepository.getOwnId();
        await _notificationStreamSubscription?.cancel();
        _notificationStreamSubscription = _notificationRepository
            .retrieveNotifications(userId)
            .listen((failureOrNotifications) => add(
                NotificationWatcherEvent.notificationsReceived(
                    failureOrNotifications)));
      },
      notificationsReceived: (e) async* {
        DataFailure? failure;
        List<Notification>? notifications;

        e.failureOrNotifications
            .fold((f) => failure = f, (n) => notifications = n);
        if (failure != null) {
          yield NotificationWatcherState.loadFailure(failure!);
        } else {
          add(NotificationWatcherEvent.retrieveProfilesStarted(notifications!));
        }
      },
      retrieveProfilesStarted: (e) async* {
        final List<Profile> profileList = [];

        for (final notif in e.notifs) {
          final Either<DataFailure, Profile> failureOrProfile =
              await _notificationRepository.searchProfileByUuid(notif.senderId);
          DataFailure? failure;
          Profile? profile;

          failureOrProfile.fold((f) => failure = f, (p) => profile = p);

          if (failure != null) {
            yield NotificationWatcherState.loadFailure(failure!);
          } else {
            profileList.add(profile!);
          }
        }
        yield NotificationWatcherState.loadSuccess(e.notifs, profileList);
      },
    );
  }

  @override
  Future<void> close() async {
    await _notificationStreamSubscription?.cancel();
    return super.close();
  }
}

part of 'notification_watcher_bloc.dart';

@freezed
class NotificationWatcherEvent with _$NotificationWatcherEvent {
  const factory NotificationWatcherEvent.retrieveNotificationsStarted() =
      _RetrieveNotificationsStarted;
  const factory NotificationWatcherEvent.notificationsReceived(
          Either<DataFailure, List<Notification>> failureOrNotifications) =
      _NotificationsReceived;
}

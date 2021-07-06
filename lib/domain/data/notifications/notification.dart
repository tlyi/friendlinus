import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification.freezed.dart';

@freezed
abstract class Notification implements _$Notification {
  const Notification._();

  const factory Notification(
      {required String senderId,
      required bool isRead,
      required String
          notificationType, //newFollower, forumLike, commentLike, newComment
      required String timestamp,
      required String postId,
      required String title,
      required String details //contains comment for preview
      }) = _Notification;

  factory Notification.empty() => Notification(
      senderId: '',
      isRead: false,
      notificationType: '',
      timestamp: '',
      postId: '',
      title: '',
      details: '');
}

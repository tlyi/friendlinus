import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:friendlinus/application/notifications/notification_watcher/notification_watcher_bloc.dart';
import 'package:friendlinus/presentation/core/get_time.dart';
import 'package:friendlinus/presentation/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:friendlinus/domain/core/constants.dart' as constants;

class Notifications extends StatelessWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotificationWatcherBloc, NotificationWatcherState>(
        builder: (context, state) {
      return state.map(
          initial: (_) => Container(),
          loadInProgress: (_) => const Center(
                child: CircularProgressIndicator(),
              ),
          loadSuccess: (state) {
            return ListView.builder(
              itemCount: state.notifications.length,
              itemBuilder: (context, index) {
                final notification = state.notifications[index];
                final notificationType = notification.notificationType;
                final profile = state.profiles[index];
                String notificationTitle = '';
                if (notificationType == 'forumLike') {
                  notificationTitle =
                      'Your post "${notification.title}" got a new like';
                } else if (notificationType == 'commentLike') {
                  notificationTitle =
                      'Your comment on "${notification.title}" got a new like';
                } else if (notificationType == 'newComment') {
                  notificationTitle =
                      '@${profile.username.getOrCrash()} left a comment on "${notification.title}"';
                } else if (notificationType == 'newFollower') {
                  notificationTitle =
                      '@${profile.username.getOrCrash()} just followed you';
                }
                return Card(
                  child: ListTile(
                    leading: (notificationType == 'newComment' ||
                            notificationType == 'newFollower')
                        ? CircleAvatar(
                            radius: 20,
                            backgroundImage: NetworkImage(profile.photoUrl),
                            backgroundColor: Colors.white,
                          )
                        : (notificationType == 'forumLike')
                            ? const Padding(
                                padding: EdgeInsets.only(left: 8.0, top: 8.0),
                                child: Icon(Icons.view_list_rounded),
                              )
                            : (notificationType == 'commentLike')
                                ? const Padding(
                                    padding:
                                        EdgeInsets.only(left: 8.0, top: 8.0),
                                    child: Icon(Icons.comment_bank),
                                  )
                                : Container(),
                    title: Text(notificationTitle),
                    subtitle: (notificationType == 'newComment' ||
                            notificationType == 'commentLike')
                        ? Text(
                            notification.details,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          )
                        : Container(),
                    trailing: Text(getTime(notification.timestamp)),
                    onTap: () {
                      if (notificationType == 'newFollower') {
                        context
                            .pushRoute(OtherProfileRoute(userProfile: profile));
                      } else if (profile.uuid != constants.anonUserId) {
                        context.pushRoute(ForumRoute(
                            forumId: notification.postId,
                            pollAdded: notification.pollAdded));
                      }
                    },
                  ),
                );
              },
            );
          },
          loadFailure: (state) {
            FlushbarHelper.createError(
              message: state.dataFailure.map(
                  unexpected: (_) => 'Unexpected error',
                  insufficientPermission: (_) => 'Insufficient permission',
                  unableToUpdate: (_) => 'Unable to update'),
            ).show(context);
            return Container();
          });
    });
  }
}

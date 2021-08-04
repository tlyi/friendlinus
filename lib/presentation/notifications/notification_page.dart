import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:friendlinus/application/notifications/notification_watcher/notification_watcher_bloc.dart';
import 'package:friendlinus/injection.dart';
import 'package:friendlinus/presentation/core/app_bar.dart';
import 'package:friendlinus/presentation/core/nav_bar.dart';
import 'package:friendlinus/presentation/notifications/widgets/notifications.dart';

class NotificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => getIt<NotificationWatcherBloc>()
          ..add(const NotificationWatcherEvent.retrieveNotificationsStarted()),
        child: Scaffold(
            appBar: appBar(
                context: context,
                header: 'Notifications',
                canClose: true,
                notifications: false),
            bottomNavigationBar: const NavigationBar(),
            body: const Notifications()));
  }
}

import 'package:flutter/material.dart';
import 'package:friendlinus/presentation/core/app_bar.dart';
import 'package:friendlinus/presentation/core/nav_bar.dart';
import 'package:friendlinus/presentation/notifications/widgets/notifications.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:
            appBar(context: context, header: 'Notifications', canClose: true),
        bottomNavigationBar: NavigationBar(),
        body: Notifications());
  }
}

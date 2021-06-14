import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:friendlinus/presentation/routes/router.gr.dart';

/// Scaffold -> appBar:

AppBar appBar({
  required BuildContext context,
  required String header,
  bool canGoBack = false,
  bool canClose = false,
  bool notifications = true,
}) {
  return AppBar(
    leading: canGoBack
        ? IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.grey),
            onPressed: () {
              context.popRoute();
            },
          )
        : canClose
        ? IconButton(
              icon: const Icon(Icons.close, color: Colors.grey),
            onPressed: () {
              context.popRoute();
            },
          )
        : Container(),
    title: Text(
      header,
      style: const TextStyle(color: Colors.black),
    ),
    backgroundColor: Colors.white,
    centerTitle: true,
    actions: notifications
      ? [IconButton(
        icon: const Icon(Icons.notifications_none, color: Colors.grey),
        onPressed: () => print('notifs button clicked'),
        padding: const EdgeInsets.only(right: 20),
      ),]
      : [],
  );
}

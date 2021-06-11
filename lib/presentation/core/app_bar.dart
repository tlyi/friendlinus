import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:friendlinus/presentation/routes/router.gr.dart';

/// Scaffold -> appBar:

AppBar appBar({
  required BuildContext context,
  required String header,
  bool canGoBack = false,
}) {
  return AppBar(
    leading: canGoBack
        ? IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.grey),
            onPressed: () {
              print('Should go back');
              context.popRoute();
            },
          )
        : Container(),
    title: Text(
      header,
      style: TextStyle(color: Colors.black),
    ),
    backgroundColor: Colors.white,
    centerTitle: true,
    actions: [
      IconButton(
        icon: const Icon(Icons.notifications_none, color: Colors.grey),
        onPressed: () => print('notifs button clicked'),
        padding: const EdgeInsets.only(right: 20),
      ),
    ],
  );
}
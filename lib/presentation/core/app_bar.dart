import 'package:flutter/material.dart';

/// Scaffold -> appBar:
AppBar appBar(String header) {
  return AppBar(
    title: Text(
      header,
      style: TextStyle(color: Colors.black),
    ),
    backgroundColor: Colors.white,
    centerTitle: true,
    actions: [
      IconButton(
        icon: const Icon(Icons.notifications_none),
        onPressed: () => print('notifs button clicked'),
      ),
    ],
  );
}

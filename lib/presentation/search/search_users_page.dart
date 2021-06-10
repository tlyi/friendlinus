import 'package:flutter/material.dart';
import 'package:friendlinus/presentation/core/app_bar.dart';
import 'package:friendlinus/presentation/core/nav_bar.dart';

class SearchUsersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context: context, header: 'Search Users', canGoBack: true),
      bottomNavigationBar: const NavigationBar(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:friendlinus/presentation/routes/router.gr.dart';

/// Add the line 'bottomNavigationBar: const NavigationBar(),' within a Scaffold Block
class NavigationBar extends StatelessWidget {
  const NavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      padding: EdgeInsets.only(top: 10, bottom: 10,),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          IconButton(
            icon: const Image(image: AssetImage('images/logo.png'), color: null,),
            onPressed: () {
              print('Nav to home');
              context.replaceRoute(const HomeRoute());
            },
          ),
          IconButton(
            icon: const Icon(Icons.forum, size: 35,),
            onPressed: () {
              print('Nav to chats');
            },
          ),
          IconButton(
            icon: const Icon(Icons.near_me, size: 35,),
            onPressed: () {
              print('Nav to location chats');
            },
          ),
          IconButton(
            icon: const Icon(Icons.view_list_rounded, size: 35,),
            onPressed: () {
              print('Nav to forums');
            },
          ),
          IconButton(
            icon: const Icon(Icons.account_circle, size: 35,),
            onPressed: () {
              print('Nav to profile');
              context.replaceRoute(const ProfileRoute());
            },
          ),
        ],
      ),
    );
  }
}

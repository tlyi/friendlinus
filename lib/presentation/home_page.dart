import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:friendlinus/application/auth/auth_bloc.dart';
import 'package:friendlinus/application/forum/module_watcher/module_watcher_bloc.dart';
import 'package:friendlinus/presentation/core/app_bar.dart';
import 'package:friendlinus/presentation/core/nav_bar.dart';
import 'package:friendlinus/presentation/routes/router.gr.dart';
import 'package:friendlinus/domain/core/constants.dart' as constants;
import 'package:intl/intl.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return DefaultTabController(
    //   length: 2,
    return Scaffold(
      appBar: appBar(context: context, header: 'Welcome'),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            alignment: Alignment.topLeft,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(DateFormat('d MMMM').format(DateTime.now()),
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.black87,
                    )),
                Text(DateFormat('EEEE').format(DateTime.now()),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.grey[600],
                    )),
              ],
            ),
          ),
          // const TabBar(tabs: [
          //   const Tab(icon: Icon(Icons.view_list_rounded)),
          //   const Tab(icon: Icon(Icons.people_rounded))
          // ]),
          // Expanded(
          //     child:
          //         TabBarView(children: [Text('modules'), Text('friends')])),
        ],
      ),
      bottomNavigationBar: const NavigationBar(),
      //),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:friendlinus/application/auth/auth_bloc.dart';
import 'package:friendlinus/application/feed/feed_bloc.dart';

import 'package:friendlinus/application/forum/forum_actor/forum_actor_bloc.dart';
import 'package:friendlinus/application/forum/module_watcher/module_watcher_bloc.dart';
import 'package:friendlinus/injection.dart';
import 'package:friendlinus/presentation/core/app_bar.dart';
import 'package:friendlinus/presentation/core/nav_bar.dart';
import 'package:friendlinus/presentation/home/widgets/feed.dart';

import 'package:friendlinus/presentation/routes/router.gr.dart';
import 'package:friendlinus/domain/core/constants.dart' as constants;
import 'package:intl/intl.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              getIt<ForumActorBloc>()..add(const ForumActorEvent.started()),
        ),
        BlocProvider(
          create: (context) =>
              getIt<FeedBloc>()..add(const FeedEvent.refreshModuleFeed()),
        )
      ],
      child: Scaffold(
        appBar: appBar(context: context, header: 'FriendliNUS'),
        bottomNavigationBar: const NavigationBar(),
        body: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
          Expanded(child: HomeFeedView()),
        ]),
      ),
    );
  }
}

class HomeFeedView extends StatefulWidget {
  @override
  _HomeFeedViewState createState() => _HomeFeedViewState();
}

class _HomeFeedViewState extends State<HomeFeedView>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);

    _tabController.addListener(() {
      setState(() {
        _selectedIndex = _tabController.index;
      });

      if (_tabController.index == 0) {
        context.read<FeedBloc>().add(const FeedEvent.refreshModuleFeed());
      }
      if (_tabController.index == 1) {
        context.read<FeedBloc>().add(const FeedEvent.refreshFriendFeed());
      }
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        TabBar(
            controller: _tabController,
            indicatorColor: constants.THEME_BLUE,
            labelColor: Colors.black87,
            unselectedLabelColor: Colors.grey,
            tabs: const [
              Tab(icon: Icon(Icons.library_books)),
              Tab(icon: Icon(Icons.people_rounded)),
            ]),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: const [
              ClipRRect(
                  child: Feed(
                feedType: "module",
              )),
              ClipRRect(
                  child: Feed(
                feedType: "friend",
              )),
            ],
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:friendlinus/application/forum/forum_actor/forum_actor_bloc.dart';
import 'package:friendlinus/application/forum/forum_watcher/forum_watcher_bloc.dart';
import 'package:friendlinus/injection.dart';
import 'package:friendlinus/presentation/core/app_bar.dart';
import 'package:friendlinus/presentation/core/nav_bar.dart';
import 'package:friendlinus/presentation/forum/forum_overview/widgets/forum_overview_body.dart';
import 'package:friendlinus/presentation/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';

class ForumOverviewPage extends StatelessWidget {
  const ForumOverviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<ForumWatcherBloc>()
            ..add(const ForumWatcherEvent.retrieveForumsStarted()),
        ),
        BlocProvider(
            create: (context) =>
                getIt<ForumActorBloc>()..add(const ForumActorEvent.started())),
      ],
      child: Scaffold(
        appBar: appBar(context: context, header: 'Forums'),
        bottomNavigationBar: const NavigationBar(),
        floatingActionButton: FloatingActionButton(
          tooltip: 'Post a Forum',
          onPressed: () {
            context.pushRoute(const ForumFormRoute());
          },
          backgroundColor: const Color(0xFF7BA5BB),
          child: const Icon(Icons.create),
        ),
        body: Container(
          alignment: Alignment.topCenter,
          child: SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxHeight: MediaQuery.of(context).size.height -
                    (MediaQuery.of(context).padding.top + kToolbarHeight),
              ),
              child: ForumOverviewBody(),
            ),
          ),
        ),
      ),
    );
  }
}

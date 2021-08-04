import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:friendlinus/application/forum/module_watcher/module_watcher_bloc.dart';
import 'package:friendlinus/application/forum/search_forum/search_forum_bloc.dart';
import 'package:friendlinus/injection.dart';
import 'package:friendlinus/presentation/core/app_bar.dart';
import 'package:friendlinus/presentation/core/nav_bar.dart';
import 'package:friendlinus/presentation/forum/forum_tab/widgets/module_overview.dart';
import 'package:friendlinus/presentation/forum/forum_tab/widgets/search_module.dart';
import 'package:friendlinus/presentation/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:friendlinus/domain/core/constants.dart' as constants;

class ForumTabPage extends StatelessWidget {
  const ForumTabPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<ModuleWatcherBloc>()
            ..add(const ModuleWatcherEvent.retrieveModulesStarted()),
        ),
        BlocProvider(
          create: (context) => getIt<SearchForumBloc>(),
        ),
      ],
      child: Scaffold(
        appBar: appBar(context: context, header: 'Forums'),
        bottomNavigationBar: const NavigationBar(),
        floatingActionButton: BlocBuilder<SearchForumBloc, SearchForumState>(
          builder: (context, state) {
            if (!state.displayResults) {
              return FloatingActionButton(
                tooltip: 'Post a Forum',
                onPressed: () {
                  context.pushRoute(const ForumFormRoute());
                },
                backgroundColor: constants.THEME_BLUE,
                child: const Icon(Icons.create),
              );
            } else {
              return Container();
            }
          },
        ),
        body: Stack(children: [
          const ModuleOverviewPage(),
          BuildFloatingSearchBar(),
        ]),
      ),
    );
  }
}

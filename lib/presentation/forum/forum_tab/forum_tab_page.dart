import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:friendlinus/application/forum/module_watcher/module_watcher_bloc.dart';
import 'package:friendlinus/application/forum/search_forum/search_forum_bloc.dart';
import 'package:friendlinus/domain/data/forum/forum_post/forum_post.dart';
import 'package:friendlinus/domain/mods/mod.dart';
import 'package:friendlinus/injection.dart';
import 'package:friendlinus/presentation/core/app_bar.dart';
import 'package:friendlinus/presentation/core/nav_bar.dart';
import 'package:friendlinus/presentation/forum/forum_tab/widgets/module_overview.dart';
import 'package:friendlinus/presentation/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:friendlinus/domain/core/constants.dart' as constants;
import 'package:material_floating_search_bar/material_floating_search_bar.dart';

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
            floatingActionButton:
                BlocBuilder<SearchForumBloc, SearchForumState>(
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
                } else
                  return Container();
              },
            ),
            body: Stack(children: [
              ModuleOverviewPage(),
              _BuildFloatingSearchBar(),
            ])));
  }
}

class _BuildFloatingSearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingSearchBar(
      backdropColor: constants.THEME_BLUE,
      automaticallyImplyBackButton: false,
      scrollPadding: const EdgeInsets.only(top: 16, bottom: 56),
      progress: context.read<SearchForumBloc>().state.isSearching,
      elevation: 10,
      transitionDuration: const Duration(milliseconds: 800),
      transitionCurve: Curves.easeInOut,
      physics: const BouncingScrollPhysics(),
      hint: 'Search forum by title...',
      transition: CircularFloatingSearchBarTransition(),
      actions: [
        FloatingSearchBarAction(
          showIfOpened: false,
          child: CircularButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
        ),
        FloatingSearchBarAction.searchToClear(
          showIfClosed: false,
        ),
      ],
      debounceDelay: const Duration(milliseconds: 500),
      onQueryChanged: (query) {
        context
            .read<SearchForumBloc>()
            .add(SearchForumEvent.searchChanged(query));
      },
      builder: (BuildContext context, Animation<double> transition) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: _BuildSearchResults(),
        );
      },
    );
  }
}

class _BuildSearchResults extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchForumBloc, SearchForumState>(
      builder: (context, state) {
        if (state.isSearching) {
          return Container();
        } else if (state.displayResults) {
          final searchResults = context
              .read<SearchForumBloc>()
              .state
              .searchForumResults
              .getOrElse(() {
            FlushbarHelper.createError(message: 'Server error').show(context);
            return <ForumPost>[];
          });

          return FloatingSearchBarScrollNotifier(
            child: ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: searchResults.length,
              itemBuilder: (context, index) {
                final forum = searchResults[index];
                return Card(
                  child: ListTile(
                    contentPadding: const EdgeInsets.only(
                        top: 10, left: 14, right: 8, bottom: 5),
                    title: Text(forum.title.getOrCrash()),
                    subtitle: Align(
                        alignment: Alignment.centerLeft,
                        child: Chip(
                            label: Text(forum.tag,
                                style: TextStyle(fontSize: 10)))),
                    onTap: () {
                      context.pushRoute(ForumRoute(
                          forumId: forum.forumId, pollAdded: forum.pollAdded));
                    },
                  ),
                );
              },
            ),
          );
        }

        return Container(color: Colors.white);
      },
    );
  }
}

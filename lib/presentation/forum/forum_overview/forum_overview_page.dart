import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:friendlinus/application/forum/forum_actor/forum_actor_bloc.dart';
import 'package:friendlinus/application/forum/forum_watcher/forum_watcher_bloc.dart';
import 'package:friendlinus/application/forum/module_watcher/module_watcher_bloc.dart';
import 'package:friendlinus/injection.dart';
import 'package:friendlinus/presentation/core/app_bar.dart';
import 'package:friendlinus/presentation/core/get_time.dart';
import 'package:friendlinus/presentation/core/nav_bar.dart';
import 'package:friendlinus/presentation/forum/forum_overview/widgets/forum_overview_body.dart';
import 'package:friendlinus/presentation/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:friendlinus/domain/core/constants.dart' as constants;

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
          create: (context) => getIt<ModuleWatcherBloc>()
            ..add(const ModuleWatcherEvent.retrieveModulesStarted()),
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
          backgroundColor: constants.THEME_BLUE,
          child: const Icon(Icons.create),
        ),
        body: ClipRRect(
          //child: ForumOverviewBody(),
          child: ModuleOverview(),
        ),
      ),
    );
  }
}

class ModuleOverview extends StatelessWidget {
  const ModuleOverview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ModuleWatcherBloc, ModuleWatcherState>(
      builder: (context, state) {
        return state.map(
            initial: (_) => Container(),
            loadInProgress: (_) => const Center(
                  child: CircularProgressIndicator(),
                ),
            loadSuccess: (state) {
              return ListView.builder(
                  physics: const ScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: state.modules.length,
                  itemBuilder: (context, index) {
                    final module = state.modules[index];
                    return Card(
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                            color: constants.THEME_BLUE, width: 2.0),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: ListTile(
                          title: Text(
                              '${module.moduleCode} ${module.moduleTitle}',
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold)),
                          subtitle: Text(
                              'Last post ${getTime(module.lastPosted)}...')),
                    );
                  });
            },
            loadFailure: (state) {
              print(state.dataFailure.toString());
              // FlushbarHelper.createError(
              //   message: state.dataFailure.map(
              //       unexpected: (_) => 'Unexpected error',
              //       insufficientPermission: (_) => 'Insufficient permission',
              //       unableToUpdate: (_) => 'Unable to update'),
              // ).show(context);
              return Container();
            });
      },
    );
  }
}

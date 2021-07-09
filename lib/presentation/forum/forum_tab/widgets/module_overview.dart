import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:friendlinus/application/forum/forum_watcher/forum_watcher_bloc.dart';
import 'package:friendlinus/application/forum/module_watcher/module_forum_watcher/module_forum_watcher_bloc.dart';
import 'package:friendlinus/application/forum/module_watcher/module_watcher_bloc.dart';
import 'package:auto_route/auto_route.dart';
import 'package:friendlinus/presentation/routes/router.gr.dart';
import 'package:friendlinus/domain/core/constants.dart' as constants;
import 'package:friendlinus/injection.dart';
import 'package:friendlinus/presentation/core/get_time.dart';

class ModuleOverviewPage extends StatelessWidget {
  const ModuleOverviewPage({Key? key}) : super(key: key);

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
              print(state.modules.map((e) => e.moduleCode));
              return Column(
                children: [
                  const SizedBox(height: 60),
                  Expanded(
                    child: ListView.builder(
                        physics: const ScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: state.modules.length,
                        itemBuilder: (context, index) {
                          final module = state.modules[index];
                          final time = module.lastPosted == '0'
                              ? 'No posts yet :('
                              : 'Last post ${getTime(module.lastPosted)}...';
                          return Card(
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                  color: constants.THEME_BLUE, width: 2.0),
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: ListTile(
                              title: Text(
                                  (module.moduleCode == "Anonymous" ||
                                          module.moduleCode == "General")
                                      ? module.moduleTitle
                                      : '${module.moduleCode} ${module.moduleTitle}',
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold)),
                              subtitle: Text(time),
                              onTap: () async {
                                await context.pushRoute(ModuleForumRoute(
                                    moduleCode: module.moduleCode));
                                context.read<ModuleWatcherBloc>().add(
                                    ModuleWatcherEvent
                                        .retrieveModulesStarted());
                              },
                            ),
                          );
                        }),
                  ),
                ],
              );
            },
            loadFailure: (state) {
              FlushbarHelper.createError(
                message: state.dataFailure.map(
                    unexpected: (_) => 'Unexpected error',
                    insufficientPermission: (_) => 'Insufficient permission',
                    unableToUpdate: (_) => 'Unable to update'),
              ).show(context);
              return Container();
            });
      },
    );
  }
}

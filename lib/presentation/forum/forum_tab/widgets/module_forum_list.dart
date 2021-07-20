import 'dart:math';

import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:friendlinus/application/forum/forum_actor/forum_actor_bloc.dart';
import 'package:friendlinus/application/forum/module_watcher/module_forum_watcher/module_forum_watcher_bloc.dart';
import 'package:friendlinus/presentation/core/get_time.dart';
import 'package:tap_debouncer/tap_debouncer.dart';
import 'package:auto_route/auto_route.dart';
import 'package:friendlinus/presentation/routes/router.gr.dart';
import 'package:friendlinus/domain/core/constants.dart' as constants;

class ModuleForumList extends StatelessWidget {
  final String moduleCode;
  const ModuleForumList({Key? key, required this.moduleCode}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Padding(
        padding: const EdgeInsets.only(top: 10.0, left: 12),
        child: _BuildSortForumsOption(moduleCode: moduleCode),
      ),
      Expanded(child: _BuildForumList())
    ]);
  }
}

class _BuildSortForumsOption extends StatefulWidget {
  final String moduleCode;
  const _BuildSortForumsOption({Key? key, required this.moduleCode})
      : super(key: key);

  @override
  __BuildSortForumsOptionState createState() => __BuildSortForumsOptionState();
}

class __BuildSortForumsOptionState extends State<_BuildSortForumsOption> {
  String selected = 'Recent';
  @override
  Widget build(BuildContext context) {
    List<String> sortingOptions = ['Recent', 'Oldest', 'Most Liked'];
    return Row(
      children: <Widget>[
        const Text('Sort forums by'),
        const SizedBox(width: 8),
        DropdownButton<String>(
          value: selected,
          items: sortingOptions.map((String value) {
            return DropdownMenuItem<String>(value: value, child: Text(value));
          }).toList(),
          onChanged: (String? newValue) {
            setState(() {
              selected = newValue!;
            });
            context.read<ModuleForumWatcherBloc>().add(
                ModuleForumWatcherEvent.retrieveForumsStarted(
                    widget.moduleCode, newValue!));
          },
        ),
      ],
    );
  }
}

class _BuildForumList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ModuleForumWatcherBloc, ModuleForumWatcherState>(
      listener: (context, state) {
        state.maybeMap(
            loadFailure: (state) => FlushbarHelper.createError(
                  message: state.dataFailure.map(
                      unexpected: (_) => 'Unexpected error',
                      insufficientPermission: (_) => 'Insufficient permission',
                      unableToUpdate: (_) => 'Unable to update'),
                ).show(context),
            orElse: () {});
      },
      builder: (context, state) {
        final userId = context.read<ForumActorBloc>().state.userId;
        return state.map(
            initial: (_) => Container(),
            loadInProgress: (_) => const Center(
                  child: CircularProgressIndicator(),
                ),
            loadSuccess: (state) {
              if (state.forums.isEmpty) {
                return const Center(child: Text('No posts yet :('));
              } else {
                return ListView.builder(
                    padding:
                        const EdgeInsets.only(top: 15.0, left: 0, right: 0),
                    physics: const ScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: state.forums.length,
                    itemBuilder: (context, index) {
                      final forum = state.forums[index];
                      return Card(
                        margin: EdgeInsets.only(
                            bottom: 5, top: 5, left: 8, right: 8),
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                              color: constants.THEME_BLUE, width: 2.0),
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: ListTile(
                          contentPadding: EdgeInsets.only(
                              left: 15, right: 15, top: 10, bottom: 10),
                          //isThreeLine: true,
                          leading: Column(
                            //DO NOT ADJUST SPACING :')
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Stack(
                                children: [
                                  TapDebouncer(
                                      cooldown:
                                          const Duration(milliseconds: 400),
                                      onTap: () async {
                                        if (forum.likedUserIds
                                            .contains(userId)) {
                                          context.read<ForumActorBloc>().add(
                                              ForumActorEvent.forumUnliked(
                                                  forum.forumId));
                                        } else {
                                          context.read<ForumActorBloc>().add(
                                              ForumActorEvent.forumLiked(
                                                  forum));
                                        }
                                      },
                                      builder: (BuildContext context,
                                          TapDebouncerFunc? onTap) {
                                        return IconButton(
                                          padding: const EdgeInsets.all(0),
                                          onPressed: onTap,
                                          icon: Icon(
                                            Icons.arrow_drop_up,
                                            color: forum.likedUserIds
                                                    .contains(userId)
                                                ? Colors.grey[800]
                                                : Colors.grey[400],
                                            size: 35,
                                          ),
                                        );
                                      }),
                                  if (forum.likes < 10)
                                    Positioned(
                                        left: 20,
                                        bottom: -1,
                                        child: Text(forum.likes.toString()))
                                  else
                                    Positioned(
                                        left: 16,
                                        bottom: -1,
                                        child: Text(forum.likes.toString())),
                                ],
                              ),
                            ],
                          ),
                          title: Text(forum.title.getOrCrash()),
                          subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                if (forum.body.getOrCrash() != '')
                                  Text(
                                    forum.body.getOrCrash(),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                Chip(
                                  label: Text(
                                    forum.tag,
                                    style: TextStyle(fontSize: 10),
                                  ),
                                  labelPadding: EdgeInsets.only(
                                      top: 0, bottom: 0, left: 4, right: 4),
                                )
                              ]),
                          trailing: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              Text(getTime(forum.timestamp)),
                              if (forum.pollAdded)
                                Column(
                                  children: <Widget>[
                                    const SizedBox(height: 10),
                                    Transform.rotate(
                                      angle: 90 * pi / 180,
                                      child: const Icon(
                                        Icons.poll_outlined,
                                        color: constants.THEME_BLUE,
                                        size: 20,
                                      ),
                                    ),
                                  ],
                                ),
                            ],
                          ),
                          isThreeLine: true,

                          onTap: () {
                            context.pushRoute(ForumRoute(
                                forumId: forum.forumId,
                                pollAdded: forum.pollAdded));
                          },
                        ),
                      );
                    });
              }
            },
            loadFailure: (state) {
              return Container();
            });
      },
    );
  }
}

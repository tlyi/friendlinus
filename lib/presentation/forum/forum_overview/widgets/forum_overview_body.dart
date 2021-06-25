import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:friendlinus/application/forum/forum_actor/forum_actor_bloc.dart';
import 'package:friendlinus/application/forum/forum_watcher/forum_watcher_bloc.dart';
import 'package:friendlinus/presentation/core/get_time.dart';
import 'package:auto_route/auto_route.dart';
import 'package:friendlinus/presentation/routes/router.gr.dart';

class ForumOverviewBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ForumWatcherBloc, ForumWatcherState>(
      builder: (context, state) {
        final userId = context.read<ForumActorBloc>().state.userId;
        return state.map(
            initial: (_) => Container(),
            loadInProgress: (_) => const Scaffold(
                  body: Center(
                    child: CircularProgressIndicator(),
                  ),
                ),
            loadSuccess: (state) {
              return ListView.builder(
                  itemCount: state.forums.length,
                  itemBuilder: (context, index) {
                    final forum = state.forums[index];
                    return Card(
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                            color: Color(0xFF7BA5BB), width: 2.0),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: ListTile(
                        //isThreeLine: true,
                        leading: Column(
                          //DO NOT ADJUST SPACING :')
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Stack(
                              children: [
                                IconButton(
                                  padding: const EdgeInsets.all(0),
                                  onPressed: () {
                                    if (forum.likedUserIds.contains(userId)) {
                                      context.read<ForumActorBloc>().add(
                                          ForumActorEvent.unliked(
                                              forum.forumId));
                                    } else {
                                      context.read<ForumActorBloc>().add(
                                          ForumActorEvent.liked(forum.forumId));
                                    }
                                  },
                                  icon: Icon(
                                    Icons.arrow_drop_up,
                                    color: forum.likedUserIds.contains(userId)
                                        ? Colors.grey[800]
                                        : Colors.grey[400],
                                    size: 35,
                                  ),
                                ),
                                Positioned(
                                    left: 20,
                                    bottom: -1,
                                    child: Text(forum.likes.toString())),
                              ],
                            ),
                          ],
                        ),
                        title: Text(forum.title.getOrCrash()),
                        subtitle: Text(
                          forum.body.getOrCrash(),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        trailing: Text(getTime(forum.timestamp)),
                        isThreeLine: true,

                        onTap: () {
                          context.pushRoute(ForumRoute(forumId: forum.forumId));
                        },
                      ),
                    );
                  });
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


/*
leading: SizedBox(
                          //DO NOT ADJUST SPACING :')
                          height: 40,
                          width: 40,
                          child: Stack(
                            children: <Widget>[
                              SizedBox(
                                height: 30,
                                width: 30,
                                child: IconButton(
                                  padding: const EdgeInsets.all(0),
                                  onPressed: () {
                                    if (forum.likedUserIds.contains(userId)) {
                                      context.read<ForumActorBloc>().add(
                                          ForumActorEvent.unliked(
                                              forum.forumId));
                                    } else {
                                      context.read<ForumActorBloc>().add(
                                          ForumActorEvent.liked(forum.forumId));
                                    }
                                  },
                                  icon: Icon(
                                    Icons.arrow_drop_up,
                                    color: forum.likedUserIds.contains(userId)
                                        ? Colors.grey[800]
                                        : Colors.grey[400],
                                    size: 26,
                                  ),
                                ),
                              ),
                              Positioned(
                                  left: 8,
                                  bottom: 3,
                                  child: Text(forum.likes.toString())),
                            ],
                          ),

                          */
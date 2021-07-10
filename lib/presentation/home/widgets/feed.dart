import 'dart:math';

import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:friendlinus/application/feed/feed_bloc.dart';

import 'package:friendlinus/application/forum/forum_actor/forum_actor_bloc.dart';
import 'package:friendlinus/domain/core/constants.dart' as constants;
import 'package:friendlinus/presentation/core/get_time.dart';
import 'package:friendlinus/presentation/routes/router.gr.dart';
import 'package:tap_debouncer/tap_debouncer.dart';
import 'package:auto_route/auto_route.dart';

class Feed extends StatelessWidget {
  final String feedType; //module/friend
  const Feed({Key? key, required this.feedType}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeedBloc, FeedState>(
      builder: (context, state) {
        final userId = context.read<ForumActorBloc>().state.userId;

        return state.map(
            initial: (_) => Container(),
            loadInProgress: (_) => const Center(
                  child: CircularProgressIndicator(),
                ),
            loadSuccess: (state) {
              return ListView.builder(
                  padding: EdgeInsets.all(10),
                  physics: const ScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: state.forums.length,
                  itemBuilder: (context, index) {
                    final forum = state.forums[index];
                    bool isLiked = forum.likedUserIds.contains(userId);
                    int likes = forum.likes;
                    return Card(
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                            color: constants.THEME_BLUE, width: 2.0),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: ListTile(
                        leading: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            TapDebouncer(
                                cooldown: const Duration(milliseconds: 400),
                                onTap: () async {
                                  if (isLiked) {
                                    likes--;
                                    context.read<ForumActorBloc>().add(
                                        ForumActorEvent.forumUnliked(
                                            forum.forumId));
                                    isLiked = false;
                                  } else {
                                    likes++;
                                    isLiked = true;
                                    context
                                        .read<ForumActorBloc>()
                                        .add(ForumActorEvent.forumLiked(forum));
                                  }
                                },
                                builder: (BuildContext context,
                                    TapDebouncerFunc? onTap) {
                                  return Stack(
                                    children: [
                                      IconButton(
                                        padding: const EdgeInsets.all(0),
                                        onPressed: onTap,
                                        icon: Icon(
                                          Icons.arrow_drop_up,
                                          color: isLiked
                                              ? Colors.grey[800]
                                              : Colors.grey[400],
                                          size: 35,
                                        ),
                                      ),
                                      if (likes < 10)
                                        Positioned(
                                            left: 20,
                                            bottom: -1,
                                            child: Text(likes.toString()))
                                      else
                                        Positioned(
                                            left: 16,
                                            bottom: -1,
                                            child: Text(likes.toString())),
                                    ],
                                  );
                                }),
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
                                  style: const TextStyle(fontSize: 10),
                                ),
                                labelPadding: const EdgeInsets.only(
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
                        onTap: () async {
                          await context.pushRoute(ForumRoute(
                              forumId: forum.forumId,
                              pollAdded: forum.pollAdded));
                          if (feedType == "module") {
                            context
                                .read<FeedBloc>()
                                .add(const FeedEvent.refreshModuleFeed());
                          } else {
                            if (feedType == "friend") {
                              context
                                  .read<FeedBloc>()
                                  .add(const FeedEvent.refreshFriendFeed());
                            }
                          }
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

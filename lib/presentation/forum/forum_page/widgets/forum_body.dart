import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:friendlinus/application/forum/comment_watcher/comment_watcher_bloc.dart';
import 'package:friendlinus/application/forum/forum_actor/forum_actor_bloc.dart';
import 'package:friendlinus/application/forum/forum_post_watcher/forum_post_watcher_bloc.dart';
import 'package:friendlinus/application/forum/forum_post_watcher/poll_watcher/poll_watcher_bloc.dart';
import 'package:friendlinus/domain/data/forum/comment/comment.dart';
import 'package:friendlinus/domain/data/forum/forum_post/forum_post.dart';
import 'package:friendlinus/domain/data/forum/poll/poll.dart';
import 'package:friendlinus/domain/data/profile/profile.dart';
import 'package:friendlinus/injection.dart';
import 'package:friendlinus/presentation/core/app_bar.dart';
import 'package:friendlinus/presentation/core/get_time.dart';
import 'package:friendlinus/presentation/core/nav_bar.dart';
import 'package:polls/polls.dart';
import 'package:friendlinus/presentation/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';

class ForumBody extends StatelessWidget {
  const ForumBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ForumPostWatcherBloc, ForumPostWatcherState>(
        builder: (context, state) {
      return state.map(
        initial: (_) => Container(),
        loadInProgress: (_) => const Scaffold(
          body: Center(
            child: CircularProgressIndicator(),
          ),
        ),
        loadSuccess: (state) {
          ForumPost forum = state.forum;

          String header;
          if (forum.isAnon) {
            header = 'Posted by anonymous ${getTimeForum(forum.timestamp)}';
          } else {
            header =
                'Posted by ${state.posterUsername} ${getTimeForum(forum.timestamp)}';
          }
          return Scaffold(
              appBar: appBar(
                  context: context,
                  header: header,
                  canGoBack: true,
                  fontSize: 16),
              bottomNavigationBar: const NavigationBar(),
              body: Column(
                children: <Widget>[
                  _BuildPost(forum: forum),
                  _BuildCommentButton(forumId: forum.forumId),
                  Expanded(
                      child: ClipRRect(
                          child: _BuildComments(forumId: forum.forumId))),
                ],
              ));
        },
        loadFailure: (state) {
          FlushbarHelper.createError(
            message: state.dataFailure.map(
                unexpected: (_) => 'Unexpected error',
                insufficientPermission: (_) => 'Insufficient permission',
                unableToUpdate: (_) => 'Unable to update'),
          ).show(context);
          return Container();
        },
      );
    });
  }
}

class _BuildPost extends StatelessWidget {
  final ForumPost forum;
  const _BuildPost({Key? key, required this.forum}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String userId = context.read<ForumActorBloc>().state.userId;
    print(userId);
    return Padding(
      padding: const EdgeInsets.only(top: 20.0, left: 8.0, right: 8),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(color: const Color(0xFF7BA5BB)),
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Row(children: <Widget>[
              Column(
                //DO NOT ADJUST SPACING :')
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Stack(
                    children: [
                      IconButton(
                        padding: const EdgeInsets.all(0),
                        onPressed: () {
                          if (forum.likedUserIds.contains(userId)) {
                            context
                                .read<ForumActorBloc>()
                                .add(ForumActorEvent.unliked(forum.forumId));
                          } else {
                            context
                                .read<ForumActorBloc>()
                                .add(ForumActorEvent.liked(forum.forumId));
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
              const SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(height: 15),
                  Text(forum.title.getOrCrash(),
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 17)),
                  const SizedBox(height: 15),
                  Text(forum.body.getOrCrash(),
                      style: const TextStyle(fontSize: 15)),
                ],
              )
            ]),
            const SizedBox(height: 30),
            if (forum.photoAdded) _BuildPhoto(photoUrl: forum.photoUrl),
            if (forum.pollAdded) _BuildPoll(forumId: forum.forumId),
          ],
        ),
      ),
    );
  }
}

class _BuildPhoto extends StatelessWidget {
  final String photoUrl;
  const _BuildPhoto({
    Key? key,
    required this.photoUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
            height: MediaQuery.of(context).size.height * 0.5,
            child: Image(
              fit: BoxFit.contain,
              image: NetworkImage(photoUrl),
            )),
        const SizedBox(height: 10),
      ],
    );
  }
}

class _BuildPoll extends StatelessWidget {
  final String forumId;
  const _BuildPoll({Key? key, required this.forumId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<PollWatcherBloc>()
        ..add(PollWatcherEvent.retrievePollStarted(forumId)),
      child: BlocBuilder<PollWatcherBloc, PollWatcherState>(
        builder: (context, state) {
          return state.map(
            initial: (_) => Container(),
            loadInProgress: (_) => const Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            ),
            loadSuccess: (state) {
              Poll poll = state.poll;
              return Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width * 0.80,
                child: Column(
                  children: <Widget>[
                    Polls(
                      children: [
                        for (int i = 0; i < poll.numOptions; i++)
                          Polls.options(
                              title: poll.optionList[i].getOrCrash(),
                              value: poll.voteList[i])
                      ],
                      question: Text('Question: ${poll.title.getOrCrash()}',
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15)),
                      voteData: poll.usersWhoVoted,
                      currentUser: context.read<ForumActorBloc>().state.userId,
                      creatorID: poll.creatorUuid,
                      allowCreatorVote: true,
                      onVoteBackgroundColor: const Color(0xFF97b8c9),
                      leadingBackgroundColor: const Color(0xFF7BA5BB),
                      backgroundColor: Colors.white,
                      onVote: (choice) {
                        //choice enums starts from 1
                        context
                            .read<ForumActorBloc>()
                            .add(ForumActorEvent.voted(forumId, choice - 1));
                      },
                    ),
                    const SizedBox(height: 10),
                  ],
                ),
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
            },
          );
        },
      ),
    );
  }
}

class _BuildCommentButton extends StatelessWidget {
  final String forumId;
  const _BuildCommentButton({Key? key, required this.forumId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      margin: const EdgeInsets.all(10.0),
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all(const Color(0xFF7BA5BB))),
        child: const Text('Add Comment'),
        onPressed: () => context.pushRoute(CommentRoute(forumId: forumId)),
      ),
    );
  }
}

class _BuildComments extends StatelessWidget {
  final String forumId;
  const _BuildComments({Key? key, required this.forumId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => getIt<CommentWatcherBloc>()
          ..add(CommentWatcherEvent.retrieveCommentsStarted(forumId)),
        child: BlocBuilder<CommentWatcherBloc, CommentWatcherState>(
          builder: (context, state) {
            return state.map(
                initial: (_) => Container(),
                loadInProgress: (_) => const Scaffold(
                      body: Center(
                        child: CircularProgressIndicator(),
                      ),
                    ),
                loadSuccess: (state) {
                  return ListView.builder(
                      itemCount: state.comments.length,
                      itemBuilder: (context, index) {
                        final Comment comment = state.comments[index];
                        final Profile profile = state.profileList[index];
                        return Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Card(
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(color: Color(0xFF7BA5BB)),
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: ListTile(
                              /*leading: Column(
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
                              */
                              leading: CircleAvatar(
                                radius: 20,
                                backgroundImage: NetworkImage(profile.photoUrl),
                              ),
                              title: Text(comment.commentText.getOrCrash()),
                              subtitle: Text(comment.isAnon
                                  ? 'Anonymous'
                                  : profile.username.getOrCrash()),
                              trailing: Text(getTime(comment.timestamp)),
                              isThreeLine: true,
                            ),
                          ),
                        );
                      });
                },
                loadFailure: (state) {
                  FlushbarHelper.createError(
                    message: state.dataFailure.map(
                        unexpected: (_) => 'Unexpected error',
                        insufficientPermission: (_) =>
                            'Insufficient permission',
                        unableToUpdate: (_) => 'Unable to update'),
                  ).show(context);
                  return Container();
                });
          },
        ));
  }
}

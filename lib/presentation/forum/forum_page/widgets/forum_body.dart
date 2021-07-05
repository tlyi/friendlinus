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
    final ownId = context.read<ForumActorBloc>().state.userId;

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
          Profile posterProfile = state.posterProfile;
          String header;
          if (forum.isAnon) {
            header = 'Posted by anonymous ${getTimeForum(forum.timestamp)}';
          } else {
            header =
                'Posted by ${posterProfile.username.getOrCrash()} ${getTimeForum(forum.timestamp)}';
          }
          return Scaffold(
              appBar: AppBar(
                  centerTitle: true,
                  backgroundColor: Colors.white,
                  leading: IconButton(
                    icon: const Icon(Icons.arrow_back, color: Colors.grey),
                    onPressed: () {
                      context.popRoute();
                    },
                  ),
                  title: GestureDetector(
                    onTap: () {
                      if (!forum.isAnon) {
                        ownId == forum.posterUserId
                            ? context.pushRoute(ProfileRoute(canGoBack: true))
                            : context.pushRoute(
                                OtherProfileRoute(userProfile: posterProfile));
                      }
                    },
                    child: Text(
                      header,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                  actions: [
                    GestureDetector(
                      onTap: () async {
                        if (!forum.isAnon) {
                          ownId == forum.posterUserId
                              ? context.pushRoute(ProfileRoute(canGoBack: true))
                              : context.pushRoute(OtherProfileRoute(
                                  userProfile: posterProfile));
                        }
                      },
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                          posterProfile.photoUrl,
                        ),
                        backgroundColor: Colors.white,
                        radius: 23.0,
                      ),
                    ),
                    const SizedBox(width: 10),
                  ]),
              bottomNavigationBar: const NavigationBar(),
              body: SingleChildScrollView(
                physics: const ScrollPhysics(),
                child: Column(
                  children: <Widget>[
                    _BuildPost(forum: forum),
                    Row(children: <Widget>[
                      Expanded(
                        child: _BuildCommentButton(forumId: forum.forumId),
                      ),
                      _BuildSortCommentsOption(),
                    ]),
                    _BuildComments(forumId: forum.forumId),
                  ],
                ),
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
    return BlocBuilder<ForumActorBloc, ForumActorState>(
      builder: (context, state) {
        final String userId = context.read<ForumActorBloc>().state.userId;
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
                    const SizedBox(width: 8),
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
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
                      ),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Stack(
                          children: [
                            IconButton(
                              padding: const EdgeInsets.all(0),
                              onPressed: () {
                                if (forum.likedUserIds.contains(userId)) {
                                  context.read<ForumActorBloc>().add(
                                      ForumActorEvent.unliked(forum.forumId));
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
                  ]),
                  const SizedBox(height: 30),
                  if (forum.photoAdded) _BuildPhoto(photoUrl: forum.photoUrl),
                  if (forum.pollAdded) _BuildPoll(forumId: forum.forumId),
                  _BuildDeleteButton(forum: forum),
                ],
              ),
            ));
      },
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
    return BlocBuilder<PollWatcherBloc, PollWatcherState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => Container(),
          loadInProgress: (_) => const Center(
            child: CircularProgressIndicator(),
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
                    outlineColor: const Color(0xFFC8C8C8),
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

class _BuildDeleteButton extends StatelessWidget {
  final ForumPost forum;
  const _BuildDeleteButton({Key? key, required this.forum}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (context.read<ForumActorBloc>().state.userId == forum.posterUserId) {
      return Container(
        alignment: Alignment.centerLeft,
        margin: const EdgeInsets.all(10.0),
        child: ElevatedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.red[300])),
          child:
              const Text('Delete Forum', style: TextStyle(color: Colors.white)),
          onPressed: () => showDialog(
              context: context,
              builder: (BuildContext innerContext) => AlertDialog(
                    title: const Text('Delete Forum?'),
                    content:
                        const Text('Press OK to delete the forum permanently.'),
                    actions: <Widget>[
                      TextButton(
                          onPressed: () => Navigator.pop(innerContext),
                          child: const Text('Cancel')),
                      TextButton(
                          onPressed: () {
                            // context
                            //     .read<ForumFormBloc>()
                            //     .add(const ForumFormEvent.pollAdded());

                            Navigator.pop(innerContext);
                          },
                          child: const Text('OK'))
                    ],
                  )),
        ),
      );
    } else {
      return Container();
    }
  }
}

class _BuildSortCommentsOption extends StatelessWidget {
  const _BuildSortCommentsOption({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> sortingOptions = ['Latest', 'Oldest', 'Most Liked'];
    String selected = 'Latest'; //context.read<ForumPostWatcherBloc>...
    return Row(
      children: <Widget>[
        const Text('Sort Comments by'),
        const SizedBox(width: 8),
        DropdownButton<String>(
          value: selected,
          items: sortingOptions.map((String value) {
            return DropdownMenuItem<String>(value: value, child: Text(value));
          }).toList(),
          onChanged: (String? newValue) {
            //update state
          },
        ),
      ],
    );
  }
}

class _BuildComments extends StatelessWidget {
  final String forumId;
  const _BuildComments({Key? key, required this.forumId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ownId = context.read<ForumActorBloc>().state.userId;
    return BlocBuilder<CommentWatcherBloc, CommentWatcherState>(
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
                  primary: false,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: state.comments.length,
                  itemBuilder: (context, index) {
                    final Comment comment = state.comments[index];
                    final Profile profile = state.profileList[index];
                    int commentLikes = 0;
                    return Padding(
                      padding: const EdgeInsets.only(
                          left: 8, right: 8, top: 10, bottom: 10),
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: const BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              width: 0.7,
                              color: Color(0xFFC8C8C8),
                            ),
                          ),
                        ),
                        alignment: Alignment.topLeft,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                GestureDetector(
                                    onTap: () {
                                      if (!comment.isAnon) {
                                        ownId == comment.userId
                                            ? context.pushRoute(
                                                ProfileRoute(canGoBack: true))
                                            : context.pushRoute(
                                                OtherProfileRoute(
                                                    userProfile: profile));
                                      }
                                    },
                                    child: CircleAvatar(
                                      radius: 20,
                                      backgroundImage:
                                          NetworkImage(profile.photoUrl),
                                      backgroundColor: Colors.white,
                                    )),
                                const SizedBox(width: 10),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const SizedBox(height: 2),
                                      GestureDetector(
                                          onTap: () {
                                            if (!comment.isAnon) {
                                              ownId == comment.userId
                                                  ? context.pushRoute(
                                                      ProfileRoute(
                                                          canGoBack: true))
                                                  : context.pushRoute(
                                                      OtherProfileRoute(
                                                          userProfile:
                                                              profile));
                                            }
                                          },
                                          child: Text(
                                              comment.isAnon
                                                  ? 'Anonymous'
                                                  : '@${profile.username.getOrCrash()}',
                                              style: const TextStyle(
                                                  fontWeight:
                                                      FontWeight.w600))),
                                      const SizedBox(height: 2),
                                      Text(getTime(comment.timestamp)),
                                    ],
                                  ),
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    Stack(
                                      children: [
                                        IconButton(
                                          padding: const EdgeInsets.all(0),
                                          onPressed: () {
                                            commentLikes++;
                                            /*if (comment.likedUserIds
                                                .contains(userId)) {
                                              context
                                                  .read<ForumActorBloc>()
                                                  .add(ForumActorEvent.unliked(
                                                      forum.forumId));
                                            } else {
                                              context
                                                  .read<ForumActorBloc>()
                                                  .add(ForumActorEvent.liked(
                                                      forum.forumId));
                                            }*/
                                          },
                                          icon: Icon(
                                            Icons.arrow_drop_up,
                                            color: Colors.grey[800],
                                            /*forum.likedUserIds
                                                    .contains(userId)
                                                ? Colors.grey[800]
                                                : Colors.grey[400],*/
                                            size: 35,
                                          ),
                                        ),
                                        if (commentLikes < 10)
                                          Positioned(
                                              left: 20,
                                              bottom: -1,
                                              child:
                                                  Text(commentLikes.toString()))
                                        else
                                          Positioned(
                                              left: 16,
                                              bottom: -1,
                                              child: Text(
                                                  commentLikes.toString())),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(height: 8),
                            Padding(
                              padding: const EdgeInsets.only(left: 2.0),
                              child: Text(comment.commentText.getOrCrash(),
                                  style: const TextStyle(fontSize: 16)),
                            ),
                            const SizedBox(height: 5),
                          ],
                        ),
                      ),
                    );

                    /* Card(
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(color: Color(0xFF7BA5BB)),
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: ListTile(
                              leading: CircleAvatar(
                                radius: 20,
                                backgroundImage: NetworkImage(profile.photoUrl),
                              ),
                              title: Text(comment.commentText.getOrCrash()),
                              subtitle: Text(comment.isAnon
                                  ? 'Anonymous'
                                  : '@${profile.username.getOrCrash()}'),
                              trailing: Text(getTime(comment.timestamp)),
                              isThreeLine: true,
                            ),
                          ), */
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

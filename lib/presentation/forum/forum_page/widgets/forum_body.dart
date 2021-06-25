import 'package:flutter/material.dart';
import 'package:friendlinus/domain/data/forum/forum_post.dart';
import 'package:friendlinus/domain/data/forum/poll.dart';
import 'package:polls/polls.dart';

class ForumBody extends StatelessWidget {
  final ForumPost forum;
  const ForumBody({Key? key, required this.forum}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        _BuildPost(forum: forum),
      ],
    );
  }
}

class _BuildPost extends StatelessWidget {
  final ForumPost forum;
  const _BuildPost({Key? key, required this.forum}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0, left: 8.0, right: 8),
      child: Card(
        color: const Color(0xFF7BA5BB),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Column(
          children: <Widget>[
            Row(children: <Widget>[
              SizedBox(
                //DO NOT ADJUST SPACING :')
                height: 40,
                width: 40,
                child: Stack(
                  children: <Widget>[
                    SizedBox(
                      height: 24,
                      width: 24,
                      child: IconButton(
                        padding: const EdgeInsets.all(0),
                        onPressed: () {
                          //Implement LIKE and UNLIKE
                        },
                        icon: const Icon(Icons.arrow_drop_up),
                      ),
                    ),
                    Positioned(
                        left: 8,
                        bottom: 3,
                        child: Text(forum.likes.toString())),
                  ],
                ),
              ),
              Column(
                children: <Widget>[
                  Text(
                    forum.title.getOrCrash(),
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 15),
                  Text(forum.body.getOrCrash()),
                ],
              )
            ]),
            if (forum.photoAdded) _BuildPhoto(photoUrl: forum.photoUrl),
            if (forum.pollAdded) _BuildPoll(forumId: forum.forumId)
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
    return SizedBox(
        height: MediaQuery.of(context).size.height * 0.5,
        child: Image(
          fit: BoxFit.contain,
          image: NetworkImage(photoUrl),
        ));
  }
}

class _BuildPoll extends StatelessWidget {
  final String forumId;
  _BuildPoll({Key? key, required this.forumId}) : super(key: key);

  final Poll poll = Poll.empty();
  @override
  Widget build(BuildContext context) {
    return Polls(
      children: [
        for (int i = 0; i < poll.numOptions; i++)
          Polls.options(
              title: poll.optionList[i].getOrCrash(), value: poll.voteList[i])
      ],
      question: Text(poll.title.getOrCrash()),
      voteData: poll.usersWhoVoted,
      currentUser: '',
      creatorID: poll.creatorUuid,
      allowCreatorVote: true,
      onVote: (choice) { //choice enums starts from 1
        //context.read<ForumWatcherBloc>().add(ForumWatcherEvent.voted)
      },
    );
  }
}

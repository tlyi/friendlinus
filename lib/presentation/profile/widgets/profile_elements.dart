import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tags/flutter_tags.dart';
import 'package:friendlinus/application/chats/chat_bloc.dart';
import 'package:friendlinus/application/forum/forum_actor/forum_actor_bloc.dart';
import 'package:friendlinus/application/forum/forum_watcher/forum_watcher_bloc.dart';
import 'package:friendlinus/application/profile/profile_actor/profile_actor_bloc.dart';
import 'package:friendlinus/application/profile/profile_form/profile_form_bloc.dart';
import 'package:friendlinus/domain/data/data_failure.dart';
import 'package:friendlinus/domain/data/forum/forum_post/forum_post.dart';
import 'package:friendlinus/domain/data/profile/profile.dart';
import 'package:friendlinus/injection.dart';
import 'package:friendlinus/presentation/core/get_time.dart';
import 'package:friendlinus/presentation/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:friendlinus/domain/core/constants.dart' as constants;

class ProfileElements extends StatelessWidget {
  final Profile userProfile;
  final bool isOwnProfile;
  const ProfileElements(
      {Key? key, required this.userProfile, required this.isOwnProfile})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topLeft,
      children: [
        WaveHeader(),
        Container(
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.only(
            left: 40,
            right: 40,
            bottom: 50,
          ),
          child: Column(
            children: <Widget>[
              ProfileHeader(
                  userProfile: userProfile, isOwnProfile: isOwnProfile),
              ModulesOfInterest(userProfile: userProfile),
              FollowersList(
                  userProfile: userProfile, isOwnProfile: isOwnProfile),
              FollowingList(
                  userProfile: userProfile, isOwnProfile: isOwnProfile),
              RecentPosts(userProfile: userProfile, isOwnProfile: isOwnProfile),
            ],
          ),
        ),
      ],
    );
  }
}

class ProfileHeader extends StatelessWidget {
  final Profile userProfile;
  final bool isOwnProfile;

  const ProfileHeader({
    Key? key,
    required this.userProfile,
    required this.isOwnProfile,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.3,
      padding: EdgeInsets.only(top: 50),
      alignment: Alignment.topLeft,
      child: Row(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width * 0.4,
            alignment: Alignment.topLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                  radius: MediaQuery.of(context).size.width * 0.15,
                  backgroundImage: NetworkImage(userProfile.photoUrl),
                  backgroundColor: Colors.white,
                ),
                const SizedBox(height: 10),
                if (isOwnProfile)
                  UpdateProfileButton(userProfile: userProfile)
                else
                  Row(
                    //mainAxisSize: MainAxisSize.min,
                    children: [
                      MessageProfileButton(userProfile: userProfile),
                      const Padding(padding: EdgeInsets.only(left: 5)),
                      FollowProfileButton(userProfile: userProfile),
                    ],
                  )
              ],
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  userProfile.username.getOrCrash(),
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 5),
                Text(
                  userProfile.course.getOrCrash().toLowerCase(),
                  style: const TextStyle(
                      fontSize: 15, fontStyle: FontStyle.italic),
                ),
                const SizedBox(height: 10),
                Flexible(
                    child: Text(userProfile.bio.getOrCrash(),
                        style: const TextStyle(fontSize: 15))),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class UpdateProfileButton extends StatelessWidget {
  final Profile userProfile;

  const UpdateProfileButton({Key? key, required this.userProfile})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        padding: MaterialStateProperty.all<EdgeInsets>(const EdgeInsets.only(
          left: 15,
          right: 15,
        )),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
            side: const BorderSide(color: constants.THEME_BLUE),
          ),
        ),
      ),
      onPressed: () {
        context.pushRoute(const UpdateProfileRoute());
      },
      child: const Text('Update Profile',
          style: TextStyle(color: constants.THEME_BLUE)),
    );
  }
}

class MessageProfileButton extends StatelessWidget {
  final Profile userProfile;

  const MessageProfileButton({Key? key, required this.userProfile})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
            side: const BorderSide(color: constants.THEME_BLUE),
          ),
        ),
      ),
      onPressed: () {
        context.pushRoute(ConvoSplashRoute(senderProfile: userProfile));
      },
      child:
          const Icon(Icons.chat_rounded, color: constants.THEME_BLUE, size: 20),
    );
  }
}

class FollowProfileButton extends StatelessWidget {
  final Profile userProfile;

  const FollowProfileButton({Key? key, required this.userProfile})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileActorBloc, ProfileActorState>(
      builder: (context, state) {
        bool isFollowing = context.read<ProfileActorBloc>().state.isFollowing;
        return TextButton(
          style: ButtonStyle(
            padding:
                MaterialStateProperty.all<EdgeInsets>(const EdgeInsets.only(
              left: 15,
              right: 15,
            )),
            backgroundColor: isFollowing
                ? MaterialStateProperty.all<Color>(Colors.white)
                : MaterialStateProperty.all<Color>(constants.THEME_BLUE),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
                side: BorderSide(
                    color: isFollowing ? Colors.grey : constants.THEME_BLUE),
              ),
            ),
          ),
          onPressed: () {
            isFollowing
                ? context
                    .read<ProfileActorBloc>()
                    .add(const ProfileActorEvent.removedFollower())
                : context
                    .read<ProfileActorBloc>()
                    .add(const ProfileActorEvent.addedFollower());
          },
          child: isFollowing
              ? const Text('Unfollow', style: TextStyle(color: Colors.grey))
              : const Text('Follow', style: TextStyle(color: Colors.white)),
        );
      },
    );
  }
}

class ModulesOfInterest extends StatelessWidget {
  final Profile userProfile;

  const ModulesOfInterest({Key? key, required this.userProfile})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Modules Of Interest',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
          if (userProfile.modules.isEmpty)
            const Padding(
                padding: EdgeInsets.only(top: 10.0, bottom: 15.0),
                child: Text('No modules indicated yet :('))
          else
            Align(
              alignment: Alignment.topLeft,
              child: Wrap(
                  alignment: WrapAlignment.start,
                  spacing: 6.0,
                  runSpacing: -5,
                  children: List<Widget>.generate(
                      context
                          .read<ProfileFormBloc>()
                          .state
                          .profile
                          .modules
                          .length, (int index) {
                    final module = context
                        .read<ProfileFormBloc>()
                        .state
                        .profile
                        .modules[index];
                    return Chip(
                      key: Key(index.toString()),
                      label: Text(module),
                    );
                  })),
            )
        ],
      ),
    );
  }
}

class FollowersList extends StatelessWidget {
  final Profile userProfile;
  final bool isOwnProfile;

  const FollowersList(
      {Key? key, required this.userProfile, required this.isOwnProfile})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileActorBloc, ProfileActorState>(
      builder: (context, state) {
        String ownId = context.read<ProfileActorBloc>().state.ownId;
        List<Profile> followers = [];
        DataFailure? failure;
        context.read<ProfileActorBloc>().state.failureOrFollowers.fold(
              (f) => failure = f,
              (list) => followers = list,
            );

        return Align(
          alignment: Alignment.topLeft,
          child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Followers',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                if (failure != null)
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0, bottom: 15.0),
                    child: Text(failure!.maybeMap(
                        unexpected: (_) => 'Unexpected Error',
                        orElse: () => '')),
                  )
                else if (followers.isEmpty)
                  const Padding(
                    padding: EdgeInsets.only(top: 10.0, bottom: 15.0),
                    child: Text('No followers yet :('),
                  )
                else
                  SizedBox(
                    height: 120,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: ListView.builder(
                                    shrinkWrap: true,
                                    physics: const ScrollPhysics(),
                                    padding: const EdgeInsets.only(top: 15.0),
                                    scrollDirection: Axis.horizontal,
                                    itemCount: followers.length,
                                    itemBuilder: (context, index) {
                                      final Profile profile = followers[index];
                                      return GestureDetector(
                                        onTap: () async {
                                          await context.pushRoute(
                                              OtherProfileRoute(
                                                  userProfile: profile));
                                          isOwnProfile
                                              ? context
                                                  .read<ProfileActorBloc>()
                                                  .add(const ProfileActorEvent
                                                      .loadingOwnProfile())
                                              : context
                                                  .read<ProfileActorBloc>()
                                                  .add(ProfileActorEvent
                                                      .loadingOtherProfile(
                                                          userProfile.uuid));
                                        },
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              left: 5.0, right: 5.0),
                                          child: Column(children: [
                                            ClipOval(
                                              child: Image.network(
                                                profile.photoUrl,
                                                width: 60.0,
                                                height: 60.0,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            Text(profile.username.getOrCrash()),
                                          ]),
                                        ),
                                      );
                                    }),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
              ]),
        );
      },
    );
  }
}

class FollowingList extends StatelessWidget {
  final Profile userProfile;
  final bool isOwnProfile;

  const FollowingList(
      {Key? key, required this.userProfile, required this.isOwnProfile})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileActorBloc, ProfileActorState>(
      builder: (context, state) {
        String ownId = context.read<ProfileActorBloc>().state.ownId;
        List<Profile> following = [];
        DataFailure? failure;
        context.read<ProfileActorBloc>().state.failureOrFollowing.fold(
              (f) => failure = f,
              (list) => following = list,
            );
        return Align(
          alignment: Alignment.topLeft,
          child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Following',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                if (failure != null)
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0, bottom: 15.0),
                    child: Text(failure!.maybeMap(
                        unexpected: (_) => 'Unexpected Error',
                        orElse: () => '')),
                  )
                else if (following.isEmpty)
                  const Padding(
                    padding: EdgeInsets.only(top: 10.0, bottom: 15.0),
                    child: Text('Not following anyone yet :('),
                  )
                else
                  SizedBox(
                    height: 120,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (isOwnProfile)
                          Padding(
                            padding: EdgeInsets.only(top: 25, right: 10),
                            child: GestureDetector(
                              onTap: () async {
                                await context.pushRoute(SearchUsersRoute());
                                context.read<ProfileActorBloc>().add(
                                    const ProfileActorEvent
                                        .loadingOwnProfile());
                              },
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Container(
                                  padding: EdgeInsets.only(),
                                  height: 40,
                                  width: 40,
                                  child: Icon(Icons.person_add_rounded),
                                  color: Colors.grey[400],
                                ),
                              ),
                            ),
                          ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: ListView.builder(
                                    shrinkWrap: true,
                                    physics: const ScrollPhysics(),
                                    padding: const EdgeInsets.only(top: 15.0),
                                    scrollDirection: Axis.horizontal,
                                    itemCount: following.length,
                                    itemBuilder: (context, index) {
                                      final Profile profile = following[index];
                                      return GestureDetector(
                                        onTap: () async {
                                          ownId == profile.uuid
                                              ? await context.pushRoute(
                                                  ProfileRoute(canGoBack: true))
                                              : await context.pushRoute(
                                                  OtherProfileRoute(
                                                      userProfile: profile));
                                          isOwnProfile
                                              ? context
                                                  .read<ProfileActorBloc>()
                                                  .add(const ProfileActorEvent
                                                      .loadingOwnProfile())
                                              : context
                                                  .read<ProfileActorBloc>()
                                                  .add(ProfileActorEvent
                                                      .loadingOtherProfile(
                                                          userProfile.uuid));
                                        },
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              left: 5.0, right: 5.0),
                                          child: Column(children: [
                                            ClipOval(
                                              child: Image.network(
                                                profile.photoUrl,
                                                width: 60.0,
                                                height: 60.0,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            Text(profile.username.getOrCrash()),
                                          ]),
                                        ),
                                      );
                                    }),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
              ]),
        );
      },
    );
  }
}

class RecentPosts extends StatelessWidget {
  final Profile userProfile;
  final bool isOwnProfile;

  const RecentPosts(
      {Key? key, required this.userProfile, required this.isOwnProfile})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<ForumPost> forums = [];
    DataFailure? failure;
    context.read<ProfileActorBloc>().state.failureOrForumsPosted.fold(
          (f) => failure = f,
          (list) => forums = list,
        );
    return Align(
        alignment: Alignment.topLeft,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
            Widget>[
          const Text('Recent Posts',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
          if (failure != null)
            Padding(
              padding: const EdgeInsets.only(top: 10.0, bottom: 15.0),
              child: Text(failure!.maybeMap(
                  unexpected: (_) => 'Unexpected Error',
                  orElse: () => 'Error')),
            )
          else if (forums.isEmpty)
            const Padding(
              padding: EdgeInsets.only(top: 10.0, bottom: 15.0),
              child: Text('No forums posted yet :('),
            )
          else
            ListView.builder(
                physics: const AlwaysScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: forums.length,
                itemBuilder: (context, index) {
                  final forum = forums[index];

                  if (isOwnProfile || (!isOwnProfile && !forum.isAnon)) {
                    return Card(
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                              color: Color(0xFF7BA5BB), width: 2.0),
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: ListTile(
                          trailing: Text(getTime(forum.timestamp)),
                          isThreeLine: true,
                          onTap: () async {
                            await context.pushRoute(ForumRoute(
                                forumId: forum.forumId,
                                pollAdded: forum.pollAdded));
                            isOwnProfile
                                ? context.read<ProfileActorBloc>().add(
                                    const ProfileActorEvent.loadingOwnProfile())
                                : context.read<ProfileActorBloc>().add(
                                    ProfileActorEvent.loadingOtherProfile(
                                        userProfile.uuid));
                          },
                        ));
                  } else {
                    return Container();
                  }
                })
        ]));
  }
}

class WaveHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: WaveClipper(),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.3,
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Color(0xFF3E90A4),
            constants.THEME_BLUE,
            Color(0xFFCEF2FA),
          ], begin: Alignment.topLeft, end: Alignment.topRight),
        ),
      ),
    );
  }
}

class WaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0.0, size.height - 65);

    final firstControlPoint = Offset(size.width / 4.3, size.height - 80);
    final firstEndPoint = Offset(size.width / 2.4, size.height - 120);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    final secondControlPoint =
        Offset(size.width - (size.width / 3.1), size.height - 165);
    final secondEndPoint = Offset(size.width, size.height - 125);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);

    path.lineTo(size.width, size.height - 40);
    path.lineTo(size.width, 0.0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

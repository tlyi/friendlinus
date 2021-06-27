import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:friendlinus/application/chats/chat_bloc.dart';
import 'package:friendlinus/application/profile/profile_actor/profile_actor_bloc.dart';
import 'package:friendlinus/application/profile/profile_form/profile_form_bloc.dart';
import 'package:friendlinus/domain/data/profile/profile.dart';
import 'package:friendlinus/injection.dart';
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
    return Stack(alignment: Alignment.topLeft, children: [
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
            ProfileHeader(userProfile: userProfile, isOwnProfile: isOwnProfile),
            ModulesOfInterest(userProfile: userProfile),
            FriendList(userProfile: userProfile),
            RecentPosts(userProfile: userProfile),
          ],
        ),
      ),
    ]);
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
                  backgroundColor: Colors.transparent,
                ),
                const SizedBox(height: 10),
                if (isOwnProfile)
                  UpdateProfileButton(userProfile: userProfile)
                else
                  Row(
                    //mainAxisSize: MainAxisSize.min,
                    children: [
                      MessageProfileButton(userProfile: userProfile),
                      const Padding(padding: const EdgeInsets.only(left: 5)),
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
    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: const Text('Modules Of Interest',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
    );
  }
}

class FriendList extends StatelessWidget {
  final Profile userProfile;

  const FriendList({Key? key, required this.userProfile}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileActorBloc, ProfileActorState>(
      builder: (context, state) {
        return SizedBox(
          height: 150,
          width: MediaQuery.of(context).size.width,
          child: Align(
            alignment: Alignment.topLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Following',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                Expanded(
                  child: ListView.builder(
                      shrinkWrap: true,
                      physics: const ScrollPhysics(),
                      padding: const EdgeInsets.only(top: 20),
                      scrollDirection: Axis.horizontal,
                      itemCount: context
                          .read<ProfileActorBloc>()
                          .state
                          .following
                          .length,
                      itemBuilder: (context, index) {
                        final Profile profile = context
                            .read<ProfileActorBloc>()
                            .state
                            .following[index];
                        return GestureDetector(
                          onTap: () async {
                            await context.pushRoute(
                                OtherProfileRoute(userProfile: profile));
                            context.read<ProfileActorBloc>().add(
                                const ProfileActorEvent.loadingOwnProfile());
                          },
                          child: Padding(
                            padding:
                                const EdgeInsets.only(left: 5.0, right: 5.0),
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
        );
      },
    );
  }
}

class RecentPosts extends StatelessWidget {
  final Profile userProfile;

  const RecentPosts({Key? key, required this.userProfile}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width * 0.8,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: const Text('Recent Posts',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
    );
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
    final firstEndPoint = Offset(size.width / 2.7, size.height - 120);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    final secondControlPoint =
        Offset(size.width - (size.width / 3.1), size.height - 160);
    final secondEndPoint = Offset(size.width, size.height - 120);
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

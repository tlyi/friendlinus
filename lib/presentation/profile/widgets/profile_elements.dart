import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:friendlinus/application/profile/profile_form/profile_form_bloc.dart';
import 'package:friendlinus/domain/data/profile/profile.dart';
import 'package:friendlinus/presentation/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:friendlinus/domain/core/constants.dart' as constants;

class ProfileElements extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileFormBloc, ProfileFormState>(
        builder: (context, state) {
      if (state.isLoading) {
        context
            .read<ProfileFormBloc>()
            .add(const ProfileFormEvent.getProfile());
        return const CircularProgressIndicator();
      }
      return Column(
        children: <Widget>[
          UserProfile(),
          const SizedBox(height: 15),
          FriendList(),
          const SizedBox(height: 15),
          ModulesOfInterest(),
          const SizedBox(height: 15),
          RecentPosts(),
        ],
      );
    });
  }
}

class UserProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Profile userProfile =
        context.read<ProfileFormBloc>().state.currentProfile.getOrElse(() {
      FlushbarHelper.createError(message: 'Server error').show(context);
      return Profile.empty();
    });
    String dbPhotoUrl = userProfile.photoUrl;
    return Container(
      padding: const EdgeInsets.all(50),
      child: Row(
        children: <Widget>[
          Column(
            children: <Widget>[
              CircleAvatar(
                radius: 60,
                backgroundImage: dbPhotoUrl == ''
                    ? const NetworkImage(constants.DEFAULT_PHOTO_URL)
                    : NetworkImage(dbPhotoUrl),
                backgroundColor: Colors.transparent,
              ),
              TextButton(
                // ignore: sort_child_properties_last
                child: const Text('Update Profile'),
                onPressed: () {
                  context.pushRoute(const UpdateProfileRoute());
                },
              ),
            ],
          ),
          const SizedBox(width: 40),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            verticalDirection: VerticalDirection.down,
            children: <Widget>[
              Text(
                userProfile.username.getOrCrash(),
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5),
              Text(
                userProfile.course.getOrCrash(),
                style: const TextStyle(fontSize: 15),
              ),
              const SizedBox(height: 10),
              Text(userProfile.bio.getOrCrash(),
                  style: const TextStyle(
                      fontSize: 15, fontStyle: FontStyle.italic)),
                                    const SizedBox(height: 60),

            ],
          ),
        ],
      ),
    );
  }
}

class FriendList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: MediaQuery.of(context).size.width * 0.8,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: const Text('Friend List'),
    );
  }
}

class ModulesOfInterest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: MediaQuery.of(context).size.width * 0.8,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: const Text('Modules Of Interest'),
    );
  }
}

class RecentPosts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: MediaQuery.of(context).size.width * 0.8,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: const Text('RecentPosts'),
    );
  }
}

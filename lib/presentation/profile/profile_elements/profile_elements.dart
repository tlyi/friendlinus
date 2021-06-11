import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:friendlinus/application/profile/profile_form/profile_form_bloc.dart';
import 'package:friendlinus/domain/data/profile/profile.dart';
import 'package:friendlinus/presentation/profile/update_profile_page.dart';
import 'package:friendlinus/presentation/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';

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
      padding: EdgeInsets.all(20),
      child: Row(
        children: <Widget>[
          Column(
            children: <Widget>[
              dbPhotoUrl == ''
                  ? ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.asset(
                        'images/placeholder_dp.png',
                        width: 100,
                        height: 100,
                        fit: BoxFit.fitHeight,
                      ),
                    )
                  : CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage(dbPhotoUrl),
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
          SizedBox(
            width: 20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            verticalDirection: VerticalDirection.down,
            children: <Widget>[
              Text(userProfile.username.getOrCrash()),
              Text(userProfile.course.getOrCrash()),
              Text(userProfile.bio.getOrCrash()),
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

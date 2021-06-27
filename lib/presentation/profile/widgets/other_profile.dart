import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:friendlinus/application/profile/profile_actor/profile_actor_bloc.dart';
import 'package:friendlinus/domain/data/profile/profile.dart';
import 'package:friendlinus/presentation/profile/widgets/profile_elements.dart';

class OtherProfile extends StatelessWidget {
  final Profile userProfile;
  const OtherProfile({Key? key, required Profile this.userProfile})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileActorBloc, ProfileActorState>(
      builder: (context, state) {
        if (state.isLoading) {
          return const Center(
            heightFactor: 18,
            child: CircularProgressIndicator(),
          );
        } else {
          return ProfileElements(userProfile: userProfile, isOwnProfile: false);
        }
      },
    );
  }
}

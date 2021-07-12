import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:friendlinus/application/profile/profile_actor/profile_actor_bloc.dart';
import 'package:friendlinus/domain/data/profile/profile.dart';
import 'package:friendlinus/injection.dart';
import 'package:friendlinus/presentation/core/app_bar.dart';
import 'package:friendlinus/presentation/core/nav_bar.dart';
import 'package:friendlinus/presentation/profile/widgets/other_profile.dart';

class OtherProfilePage extends StatelessWidget {
  final Profile userProfile;

  const OtherProfilePage({Key? key, required this.userProfile})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ProfileActorBloc>()
        ..add(ProfileActorEvent.loadingOtherProfile(userProfile.uuid)),
      child: Scaffold(
        appBar: appBar(
          context: context,
          header: userProfile.username.getOrCrash(),
          canGoBack: true,
        ),
        bottomNavigationBar: const NavigationBar(),
        body: SingleChildScrollView(
          child: OtherProfile(),
        ),
      ),
    );
  }
}

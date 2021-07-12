import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:friendlinus/application/profile/profile_actor/profile_actor_bloc.dart';
import 'package:friendlinus/presentation/core/app_bar.dart';
import 'package:friendlinus/presentation/core/nav_bar.dart';
import 'package:friendlinus/injection.dart';
import 'package:friendlinus/presentation/profile/widgets/own_profile.dart';

class ProfilePage extends StatelessWidget {
  final bool canGoBack;

  const ProfilePage({Key? key, required this.canGoBack}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<ProfileActorBloc>()
            ..add(const ProfileActorEvent.loadingOwnProfile()),
        ),
      ],
      child: Scaffold(
        appBar: appBar(
          context: context,
          header: 'Profile',
          canGoBack: canGoBack,
          canSignOut: true,
        ),
        bottomNavigationBar: const NavigationBar(),
        body: SingleChildScrollView(child: OwnProfile()),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:friendlinus/application/profile/profile_form/profile_form_bloc.dart';
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
    return Scaffold(
      appBar: appBar(
        context: context,
        header: userProfile.username.getOrCrash(),
        canGoBack: true,
      ),
      bottomNavigationBar: const NavigationBar(),
      body: Container(
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: ConstrainedBox(
            constraints:
                BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
            child: BlocProvider(
              create: (context) =>
                  getIt<ProfileFormBloc>(), //to revisit: what bloc to give
              child: OtherProfile(userProfile: userProfile),
            ),
          ),
        ),
      ),
    );
  }
}

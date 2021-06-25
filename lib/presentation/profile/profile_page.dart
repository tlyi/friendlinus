import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:friendlinus/application/profile/profile_form/profile_form_bloc.dart';
import 'package:friendlinus/presentation/core/app_bar.dart';
import 'package:friendlinus/presentation/core/nav_bar.dart';
import 'package:friendlinus/injection.dart';
import 'package:friendlinus/presentation/profile/widgets/profile_elements.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ProfileFormBloc>(),
      child: Scaffold(
        appBar: appBar(
          context: context,
          header: 'Profile',
        ),
        bottomNavigationBar: const NavigationBar(),
        body: Container(
          alignment: Alignment.center,
          child: SingleChildScrollView(
            child: ProfileElements(),
          ),
        ),
      ),
    );
  }
}

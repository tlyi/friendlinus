import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:friendlinus/application/profile/profile_form/profile_form_bloc.dart';
import 'package:friendlinus/injection.dart';
import 'package:friendlinus/presentation/core/app_bar.dart';
import 'package:friendlinus/presentation/profile/widgets/update_profile_form.dart';

class UpdateProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ProfileFormBloc>(),
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        appBar:
            appBar(context: context, header: 'Update Profile', canGoBack: true),
        body: SingleChildScrollView(
          child: Container(
            child: UpdateProfileForm(),
          ),
        ),
      ),
    );
  }
}

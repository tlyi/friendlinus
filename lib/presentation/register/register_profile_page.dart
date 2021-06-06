import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:friendlinus/application/profile/profile_form/bloc/profile_form_bloc.dart';
import 'package:friendlinus/injection.dart';
import 'package:friendlinus/presentation/register/widgets/register_profile_form.dart';

class RegisterProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: BlocProvider(
          create: (context) => getIt<ProfileFormBloc>(),
          child: RegisterProfileForm(),
        ),
      ),
    );
  }
}

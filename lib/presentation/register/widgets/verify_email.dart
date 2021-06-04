import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:friendlinus/application/auth/auth_bloc.dart';
import 'package:friendlinus/presentation/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';

class VerifyEmail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is Authenticated) {
          context.replaceRoute(const HomeRoute());
          print('Supposed to be second register page');
        } else if (state is Unverified) {
          context
              .read<AuthBloc>()
              .add(const AuthEvent.verifiedCheckRequested());
          print('Rechecking verification');
        }
      },
      child: const Scaffold(
        body: Center(
          child: Text(
              "An email has been sent. Please click on the link in the email to verify your account!"),
        ),
      ),
    );
  }
}

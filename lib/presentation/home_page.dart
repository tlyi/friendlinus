import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:friendlinus/application/auth/auth_bloc.dart';
import 'package:auto_route/auto_route.dart';
import 'package:friendlinus/presentation/core/app_bar.dart';
import 'package:friendlinus/presentation/core/nav_bar.dart';
import 'package:friendlinus/presentation/routes/router.gr.dart';
import 'package:friendlinus/domain/core/constants.dart' as constants;

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.maybeMap(
          unauthenticated: (_) => context.replaceRoute(const SignInRoute()),
          orElse: () {},
        );
      },
      child: Scaffold(
        appBar: appBar(context: context, header: 'Welcome'),
        body: Container(
          alignment: Alignment.center,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                _BuildSearchUsersButton(),
                _BuildSignOutButton(),
              ],
            ),
          ),
        ),
        bottomNavigationBar: const NavigationBar(),
      ),
    );
  }
}

class _BuildSignOutButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20.0),
      width: MediaQuery.of(context).size.width * 0.62,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(constants.THEME_BLUE),
        ),
        child: const Text("Sign Out"),
        onPressed: () {
          context.read<AuthBloc>().add(
                const AuthEvent.signedOut(),
              );
        },
      ),
    );
  }
}

class _BuildSearchUsersButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20.0),
      width: MediaQuery.of(context).size.width * 0.62,
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(constants.THEME_BLUE)),
        child: const Text("Search Users"),
        onPressed: () {
          context.pushRoute(const SearchUsersRoute());
        },
      ),
    );
  }
}

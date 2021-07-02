import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:friendlinus/application/auth/auth_bloc.dart';
import 'package:auto_route/auto_route.dart';
import 'package:friendlinus/domain/mods/i_mod_repository.dart';
import 'package:friendlinus/presentation/core/app_bar.dart';
import 'package:friendlinus/presentation/core/nav_bar.dart';
import 'package:friendlinus/presentation/routes/router.gr.dart';
import 'package:friendlinus/domain/core/constants.dart' as constants;
import 'package:intl/intl.dart';

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
          alignment: Alignment.topCenter,
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: <Widget>[
                Container(
                  alignment: Alignment.topLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(DateFormat('d MMMM').format(DateTime.now()),
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Colors.black87,
                          )),
                      Text(DateFormat('EEEE').format(DateTime.now()),
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Colors.grey[600],
                          )),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    SizedBox(height: 50),
                    Image(
                      image: const AssetImage('images/logo.png'),
                      height: MediaQuery.of(context).size.height * 0.3,
                    ),
                    _BuildSearchUsersButton(),
                    _BuildSignOutButton(),
                  ],
                ),
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

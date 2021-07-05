import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:friendlinus/application/auth/auth_bloc.dart';
import 'package:friendlinus/presentation/routes/router.gr.dart';

/// Scaffold -> appBar:

AppBar appBar({
  required BuildContext context,
  required String header,
  bool canGoBack = false,
  bool canClose = false,
  bool canSignOut = false,
  bool notifications = true,
  double fontSize = 20.0,
}) {
  return AppBar(
    leading: canGoBack
        ? IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.grey),
            onPressed: () {
              context.popRoute();
            },
          )
        : canClose
            ? IconButton(
                icon: const Icon(Icons.close, color: Colors.grey),
                onPressed: () {
                  context.popRoute();
                },
              )
            : canSignOut
                ? BlocConsumer<AuthBloc, AuthState>(listener: (context, state) {
                    state.maybeMap(
                      unauthenticated: (_) =>
                          context.replaceRoute(const SignInRoute()),
                      orElse: () {},
                    );
                  }, builder: (context, state) {
                    return IconButton(
                      icon: const Icon(Icons.logout, color: Colors.grey),
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (BuildContext innerContext) => AlertDialog(
                                  title: const Text('Sign Out?'),
                                  content: const Text(
                                      'Press OK to confirm sign out.'),
                                  actions: <Widget>[
                                    TextButton(
                                        onPressed: () =>
                                            Navigator.pop(innerContext),
                                        child: const Text('Cancel')),
                                    TextButton(
                                        onPressed: () {
                                          Navigator.pop(innerContext);
                                          context
                                              .read<AuthBloc>()
                                              .add(const AuthEvent.signedOut());
                                        },
                                        child: const Text('OK'))
                                  ],
                                ));
                      },
                    );
                  })
                : Container(),
    title: Text(header,
        style: TextStyle(
          color: Colors.black,
          fontSize: fontSize,
        )),
    backgroundColor: Colors.white,
    centerTitle: true,
    actions: notifications
        ? [
            IconButton(
              icon: const Icon(Icons.notifications_none, color: Colors.grey),
              onPressed: () => print('notifs button clicked'),
              padding: const EdgeInsets.only(right: 20),
            ),
          ]
        : [],
  );
}

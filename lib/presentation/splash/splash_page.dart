import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:friendlinus/application/auth/auth_bloc.dart';
import 'package:friendlinus/application/notifications/chat_counter_watcher/chat_counter_watcher_bloc.dart';
import 'package:friendlinus/application/notifications/notif_counter_watcher/notif_counter_watcher_bloc.dart';
import 'package:friendlinus/presentation/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:friendlinus/domain/core/constants.dart' as constants;

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(listener: (context, state) {
      state.map(
          initial: (_) {},
          authenticated: (_) {
            context
                .read<AuthBloc>()
                .add(const AuthEvent.verifiedCheckRequested());
          },
          unauthenticated: (_) {
            context.replaceRoute(const SignInRoute());
          },
          unverified: (_) {
            context.replaceRoute(const VerifyEmailRoute());
          },
          verifying: (_) {},
          verified: (_) {
            context
                .read<AuthBloc>()
                .add(const AuthEvent.registeredCheckRequested());
          },
          unregistered: (_) {
            context.replaceRoute(const RegisterProfileRoute());
          },
          registered: (state) {
            context.read<NotifCounterWatcherBloc>().add(
                NotifCounterWatcherEvent.retrieveUnreadNotifsStarted(
                    userId: state.userId));
            context.read<ChatCounterWatcherBloc>().add(
                ChatCounterWatcherEvent.retrieveUnreadChatsStarted(
                    userId: state.userId));

            context.replaceRoute(const HomeRoute());
          });
    }, builder: (context, state) {
      if (state is Authenticated) {
        context.read<AuthBloc>().add(const AuthEvent.verifiedCheckRequested());
      }
      return Scaffold(
        backgroundColor: constants.THEME_BLUE,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('images/logo.png', height: 150),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                    width: 200,
                    child: LinearProgressIndicator(
                      color: constants.THEME_LIGHT_BLUE,
                      backgroundColor: Colors.white,
                    )),
              ],
            ),
          ],
        ),
      );
    });
  }
}

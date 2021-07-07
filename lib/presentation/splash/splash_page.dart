import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:friendlinus/application/auth/auth_bloc.dart';
import 'package:friendlinus/application/notifications/chat_counter_watcher/chat_counter_watcher_bloc.dart';
import 'package:friendlinus/application/notifications/notif_counter_watcher/notif_counter_watcher_bloc.dart';
import 'package:friendlinus/presentation/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';

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
            print('SPLASH: user is logged in but verifying');
          },
          unauthenticated: (_) {
            print('SPLASH: hooboo');
            context.replaceRoute(const SignInRoute());
          },
          unverified: (_) {
            print(
                'SPLASH: user is logged in but unverified, gg to verify email page');
            context.replaceRoute(const VerifyEmailRoute());
          },
          verifying: (_) {},
          verified: (_) {
            print(
                'SPLASH: user is logged in and verified. Checking if registered');
            context
                .read<AuthBloc>()
                .add(const AuthEvent.registeredCheckRequested());
          },
          unregistered: (_) {
            print('SPLASH: user has not registered profile.');
            context.replaceRoute(const RegisterProfileRoute());
          },
          registered: (state) {
            context.read<NotifCounterWatcherBloc>().add(
                NotifCounterWatcherEvent.retrieveUnreadNotifsStarted(
                    userId: state.userId));
            context.read<ChatCounterWatcherBloc>().add(
                ChatCounterWatcherEvent.retrieveUnreadChatsStarted(
                    userId: state.userId));
            ;
            print('SPLASH: user is registered. Gg home page.');
            context.replaceRoute(const HomeRoute());
          });
    }, builder: (context, state) {
      if (state is Authenticated) {
        context.read<AuthBloc>().add(const AuthEvent.verifiedCheckRequested());
        print('SPLASH BUILD: user is logged in but verifying');
      }
      return const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    });
  }
}

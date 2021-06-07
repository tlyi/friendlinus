import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:friendlinus/application/auth/auth_bloc.dart';
import 'package:friendlinus/presentation/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';

class VerifyEmail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(listener: (context, state) {
      if (state is Verified) {
        context.replaceRoute(const RegisterProfileRoute());
        print('VERIFY: GG to register profile');
      } else if (state is Unverified) {
        context.read<AuthBloc>().add(const AuthEvent.verifiedCheckRequested());
        print('VERIFY: Rechecking verification');
      }
    }, builder: (context, state) {
      if (state is Unverified) {
        context.read<AuthBloc>().add(const AuthEvent.verifiedCheckRequested());
        print('VERIFY BUILD: Rechecking verification from unverified acct');
      }
      return WillPopScope(
        onWillPop: () async {
          print("Going back, signing out");
          //TODO: Fix this
          //  context.read<AuthBloc>().add(const AuthEvent.signedOut());
          return true;
        },
        child: Scaffold(
          body: Container(
            margin: const EdgeInsets.all(30.0),
            alignment: Alignment.center,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const Icon(Icons.email_rounded),
                const SizedBox(height: 15),
                const Text(
                  "An email has been sent. Please click on the link in the email to verify your account!",
                  textAlign: TextAlign.center,
                ),
                _BuildResendEmailButton(),
              ],
            ),
          ),
        ),
      );
    });
  }
}

class _BuildResendEmailButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        return Container(
          margin: const EdgeInsets.only(top: 10.0),
          child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Color(0xFF7BA5BB))),
              child: const Text('Resend Email Verification'),
              onPressed: () {
                context
                    .read<AuthBloc>()
                    .add(const AuthEvent.sentEmailVerification());
              }),
        );
      },
    );
  }
}

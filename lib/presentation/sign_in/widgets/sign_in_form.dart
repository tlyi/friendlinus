import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:friendlinus/application/auth/auth_bloc.dart';
import 'package:friendlinus/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:friendlinus/presentation/home_page.dart';
import 'package:another_flushbar/flushbar.dart';
import 'package:another_flushbar/flushbar_helper.dart';
import 'package:another_flushbar/flushbar_route.dart';
import 'package:auto_route/auto_route.dart';
import 'package:friendlinus/presentation/routes/router.gr.dart';

import '../../register/register_page1.dart';

//on log in: check if user is verified, if is not go to verify email page
class SignInForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFormBloc, SignInFormState>(
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
          () {},
          (either) => either.fold(
            (failure) {
              FlushbarHelper.createError(
                message: failure.map(
                  serverError: (_) => 'Server error',
                  emailAlreadyInUse: (_) => 'Email already in use',
                  invalidEmailAndPasswordCombi: (_) =>
                      'Invalid email and password combination',
                ),
              ).show(context);
            },
            (_) {
              context.replaceRoute(const SplashRoute());
              context
                  .read<AuthBloc>()
                  .add(const AuthEvent.authCheckRequested());
            },
          ),
        );
      },
      builder: (context, state) {
        return Form(
          autovalidateMode: state.showErrorMessages
              ? AutovalidateMode.always
              : AutovalidateMode.disabled,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              _BuildID(),
              const SizedBox(height: 20),
              _BuildPassword(),
              _BuildLogInButton(),
              _BuildRegisterButton(),
            ],
          ),
        );
      },
    );
  }
}

class _BuildID extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInFormBloc, SignInFormState>(
      builder: (context, state) {
        return TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              labelText: 'NUSNET ID',
            ),
            autocorrect: false,
            onChanged: (value) {
              final String emailString = '$value@u.nus.edu';
              context
                  .read<SignInFormBloc>()
                  .add(SignInFormEvent.emailChanged(emailString));
              print(context.read<SignInFormBloc>().state.emailAddress.value);
            },
            validator: (_) =>
                context.read<SignInFormBloc>().state.emailAddress.value.fold(
                      (f) => f.maybeMap(
                        invalidEmail: (_) => 'Invalid NUSNET ID',
                        orElse: () => null,
                      ),
                      (_) => null,
                    ),
            inputFormatters: [
              FilteringTextInputFormatter.deny(
                  RegExp(r"\s\b|\b\s")) //Prevents whitespace
            ]);
      },
    );
  }
}

class _BuildPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInFormBloc, SignInFormState>(
      builder: (context, state) {
        return TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              labelText: "Password",
            ),
            obscureText: true,
            autocorrect: false,
            onChanged: (value) => context
                .read<SignInFormBloc>()
                .add(SignInFormEvent.passwordChanged(value)),
            validator: (_) =>
                context.read<SignInFormBloc>().state.password.value.fold(
                      (f) => f.maybeMap(
                        shortPassword: (_) => 'Short Password',
                        orElse: () => null,
                      ),
                      (_) => null,
                    ),
            inputFormatters: [
              FilteringTextInputFormatter.deny(
                  RegExp(r"\s\b|\b\s")) //Prevents whitespace
            ]);
      },
    );
  }
}

class _BuildLogInButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInFormBloc, SignInFormState>(
      builder: (context, state) {
        return Container(
          margin: const EdgeInsets.only(top: 20.0),
          width: MediaQuery.of(context).size.width * 0.62,
          child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Color(0xFF7BA5BB))),
              child: const Text("Sign In"),
              onPressed: () {
                context.read<SignInFormBloc>().add(
                      const SignInFormEvent.signInWithEmailAndPasswordPressed(),
                    );
              }),
        );
      },
    );
  }
}

class _BuildRegisterButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInFormBloc, SignInFormState>(
      builder: (context, state) {
        return Container(
          margin: const EdgeInsets.only(top: 10.0),
          child: TextButton(
              child: const Text('No account yet? Register Now'),
              onPressed: () {
                context.pushRoute(const RegisterRoute1());
              }),
        );
      },
    );
  }
}

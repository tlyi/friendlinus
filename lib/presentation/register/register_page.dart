import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:friendlinus/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:friendlinus/injection.dart';
import 'package:friendlinus/presentation/core/app_bar.dart';
import 'package:friendlinus/presentation/core/dismiss_keyboard.dart';
import 'package:friendlinus/presentation/register/widgets/register_form.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SignInFormBloc>(),
      child: DismissKeyboard(
        child: Scaffold(
          appBar: appBar(
            context: context,
            header: 'Create an Account',
            canGoBack: true,
          ),
          body: Container(
            alignment: Alignment.center,
            child: SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  maxHeight: MediaQuery.of(context).size.height -
                      (MediaQuery.of(context).padding.top + kToolbarHeight),
                ),
                child: RegisterForm(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

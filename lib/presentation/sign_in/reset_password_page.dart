import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:friendlinus/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:friendlinus/injection.dart';
import 'package:friendlinus/presentation/core/app_bar.dart';
import 'package:friendlinus/presentation/sign_in/widgets/reset_password_form.dart';

class ResetPasswordPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SignInFormBloc>(),
      child: Scaffold(
        appBar: appBar(
          context: context,
          header: 'Reset Password',
          canGoBack: true,
        ),
        body: Container(
          margin: const EdgeInsets.all(30.0),
          alignment: Alignment.center,
          child: SingleChildScrollView(
            child: ConstrainedBox(
              constraints:
                  BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
              child: ResetPasswordForm(),
            ),
          ),
        ),
      ),
    );
  }
}

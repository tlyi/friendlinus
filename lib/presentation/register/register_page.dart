import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:friendlinus/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:friendlinus/injection.dart';
import 'package:friendlinus/presentation/core/app_bar.dart';
import 'package:friendlinus/presentation/register/widgets/register_form.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(
        context: context,
        header: 'Reset Password',
        canGoBack: true,
      ),
      body: BlocProvider(
        create: (context) => getIt<SignInFormBloc>(),
        child: RegisterForm(),
      ),
    );
  }
}

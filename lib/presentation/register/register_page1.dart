import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:friendlinus/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:friendlinus/injection.dart';
import 'package:friendlinus/presentation/register/widgets/register_form.dart';

class RegisterPage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: BlocProvider(
        create: (context) => getIt<SignInFormBloc>(),
        child: RegisterForm(),
      ),
    ));
  }
}

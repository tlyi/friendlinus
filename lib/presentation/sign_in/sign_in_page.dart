import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:friendlinus/application/auth/auth_bloc.dart';
import 'package:friendlinus/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:friendlinus/presentation/sign_in/widgets/sign_in_form.dart';
import 'package:get_it/get_it.dart';
import '../../injection.dart';
import '../register/register_page1.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          alignment: Alignment.center,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Image.asset(
                  'images/logo.png',
                  width: MediaQuery.of(context).size.width * 0.6,
                  height: MediaQuery.of(context).size.width * 0.6,
                ),
                Padding(
                  padding: EdgeInsets.all(30.0),
                  child: BlocProvider(
                    create: (context) => getIt<SignInFormBloc>(),
                    child: SignInForm(),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

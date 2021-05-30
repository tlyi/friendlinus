import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:friendlinus/application/auth/auth_bloc.dart';
import 'package:friendlinus/injection.dart';
import 'package:auto_route/auto_route.dart';
import 'package:friendlinus/presentation/routes/router.gr.dart';

class HomePage extends StatelessWidget {
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
                Text("Home",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                SizedBox(height: 30),
                Image.asset(
                  'images/logo.png',
                  width: MediaQuery.of(context).size.width * 0.6,
                  height: MediaQuery.of(context).size.width * 0.6,
                ),
                BlocProvider(
                  create: (context) => getIt<AuthBloc>(),
                  child: _buildSignOutButton(context),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSignOutButton(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 20.0),
        width: MediaQuery.of(context).size.width * 0.62,
        child: ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Color(0xFF7BA5BB))),
            child: const Text("Sign Out"),
            onPressed: () {
              context.read<AuthBloc>().add(
                    const AuthEvent.signedOut(),
                  );
              context.replaceRoute(SplashRoute());
            }));
  }
}

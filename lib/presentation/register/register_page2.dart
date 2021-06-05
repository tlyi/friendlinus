import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:friendlinus/presentation/register/widgets/register_form2.dart';

class RegisterPage2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Align(
          alignment: Alignment.topCenter,
          child: SingleChildScrollView(
            child: SafeArea(
              minimum: EdgeInsets.all(30.0),
              child: RegisterForm2(),
            ),
          ),
        ),
      ),
    );
  }
}


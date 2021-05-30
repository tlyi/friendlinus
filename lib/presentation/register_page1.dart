import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:friendlinus/application/auth/sign_in_form/sign_in_form_bloc.dart';

class RegisterPage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFormBloc, SignInFormState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Form(
            child: Scaffold(
              body: Container(
                margin: const EdgeInsets.all(30.0),
                alignment: Alignment.center,
                child:
                    Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
                  _buildVerifyMessage(),
                  _buildIDField(context),
                  SizedBox(height: 15),
                  _buildPasswordField(context),
                  _buildVerifyButton(context)
                ]),
              ),
            ),
          );
        });
  }

  Widget _buildVerifyMessage() {
    return Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                "Sign up now with your NUSNET ID!",
                style: new TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            Text("An authentication link will be sent to your NUS Email."),
          ],
        ));
  }

  Widget _buildIDField(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        labelText: 'NUSNET ID',
      ),
      inputFormatters: [
        FilteringTextInputFormatter.deny(
            RegExp(r"\s\b|\b\s")) //Prevents whitespace
      ],
    );
  }

  Widget _buildPasswordField(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        labelText: 'Password',
      ),
      obscureText: true,
      autocorrect: false,
      onChanged: (value) => context
          .read<SignInFormBloc>()
          .add(SignInFormEvent.passwordChanged(value)),
      validator: (_) =>
          context.read<SignInFormBloc>().state.password.value.fold(
                (f) => f.maybeMap(
                    shortPassword: (_) => 'Password too short',
                    orElse: () => null),
                (_) => null,
              ),
      inputFormatters: [
        FilteringTextInputFormatter.deny(
            RegExp(r"\s\b|\b\s")) //Prevents whitespace
      ],
    );
  }

  Widget _buildVerifyButton(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20.0),
      width: MediaQuery.of(context).size.width * 0.62,
      child: ElevatedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Color(0xFF7BA5BB))),
          child: const Text("Sign Up Now"),
          onPressed: () {}),
    );
  }
}

import 'package:flutter/material.dart';
import 'register_page1.dart';

class LogInPage extends StatelessWidget {
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
                  child: LogInForm(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class LogInForm extends StatefulWidget {
  @override
  _LogInFormState createState() => _LogInFormState();
}

class _LogInFormState extends State<LogInForm> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          _buildEmail(),
          SizedBox(height: 20),
          _buildPassword(),
          _buildLogInButton(context),
          _buildRegisterButton(),
        ],
      ),
    );
  }

  Widget _buildEmail() {
    return TextFormField(
      controller: emailController,
      validator: (value) =>
          (value == null || value.isEmpty) ? "Please input email" : null,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        labelText: 'Email',
      ),
    );
  }

  Widget _buildPassword() {
    return TextFormField(
      obscureText: true,
      controller: passwordController,
      validator: (value) =>
          (value == null || value.isEmpty) ? "Please input password" : null,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        labelText: "Password",
      ),
    );
  }

  Widget _buildLogInButton(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20.0),
      width: MediaQuery.of(context).size.width * 0.62,
      child: ElevatedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Color(0xFF7BA5BB))),
          child: const Text("Log In"),
          onPressed: () {
            if (_formKey.currentState!.validate()) {
              ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: Text('Processing Data')));
            }
          }),
    );
  }

  Widget _buildRegisterButton() {
    return Container(
      margin: const EdgeInsets.only(top: 10.0),
      child: TextButton(
          child: const Text('No account yet? Register Now'),
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => RegisterPage1()));
          }),
    );
  }
}

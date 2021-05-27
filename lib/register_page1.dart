import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'register_page2.dart';

class RegisterPage1 extends StatefulWidget {
  @override
  _RegisterPage1State createState() => _RegisterPage1State();
}

class _RegisterPage1State extends State<RegisterPage1> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Scaffold(
        body: Container(
          margin: const EdgeInsets.all(30.0),
          alignment: Alignment.center,
          child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
            _buildVerifyMessage(),
            _buildIDField(),
            _buildVerifyButton(context)
          ]),
        ),
      ),
    );
  }

  Widget _buildVerifyMessage() {
    return Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                "Verify your NUSNET ID",
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

  Widget _buildIDField() {
    return TextFormField(
      validator: (value) =>
          (value == null || value.isEmpty) ? "Please input NUSNET ID" : null,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        labelText: 'NUSNET ID',
      ),
    );
  }

  Widget _buildVerifyButton(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20.0),
      width: MediaQuery.of(context).size.width * 0.62,
      child: ElevatedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Color(0xFF7BA5BB))),
          child: const Text("Verify Now"),
          onPressed: () {
            if (_formKey.currentState!.validate()) {
              ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: Text('Processing Data')));
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => RegisterPage2())); //temporary
            }
          }),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class RegisterPage1 extends StatelessWidget {
  Future<FirebaseApp> _initializeFirebase() async {
    FirebaseApp firebaseApp = await Firebase.initializeApp();
    return firebaseApp;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          margin: const EdgeInsets.all(30.0),
          alignment: Alignment.center,
          child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
            _buildIDField(),
          ]),
        ),
      ),
    );
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
}

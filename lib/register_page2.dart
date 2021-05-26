import 'package:flutter/material.dart';
import 'home_page.dart';

class RegisterPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Align(
          alignment: Alignment.topCenter,
          child: SafeArea(
            minimum: EdgeInsets.all(30.0),
            child: RegisterForm(),
          ),
        )
      )
    );
  }
}

class RegisterForm extends StatefulWidget {
  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
        SizedBox(height: 20),
        _buildHeader(),
        //Add Profile picture? Or not now
        SizedBox(height: 20),
        _buildUsernameField(),
        SizedBox(height: 20),
        _buildCourseField(),
        SizedBox(height: 20),
        _buildBioField(),
        SizedBox(height: 20),
        _buildModuleField(),
        SizedBox(height: 20),
        _buildRegisterButton(context),
      ],
      ),
    );
  }

  Widget _buildHeader() {
    return Text(
      "Register",
      style: new TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 18,
      ),
    );
  }

  Widget _buildUsernameField() {
    return Column(children: <Widget>[
      Text("Username"),
      TextFormField(
        validator: (value) =>
            (value == null || value.isEmpty) ? "Required Field" : null,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          labelText: 'Pick a username',
        ),
      ),
    ]);
  }

  Widget _buildCourseField() {
    return Column(children: <Widget>[
      Text("Course of Study"),
      TextFormField(
        validator: (value) =>
        (value == null || value.isEmpty) ? "Required Field" : null,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          labelText: 'What is your course?',
        ),
      ),
    ]);
  }

  Widget _buildBioField() {
    return Column(children: <Widget>[
      Text("Biography"),
      TextFormField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          labelText: 'Tell us something about yourself!',
        ),
      ),
    ]);
  }

  Widget _buildModuleField() {
    return Column(children: <Widget>[
      Text("Modules of Interest"),
      TextFormField(
        validator: (value) =>
        (value == null || value.isEmpty) ? "Required Field" : null,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          labelText: 'Subscribe to Module Forums',
        ),
      ),
    ]);
  }

  Widget _buildRegisterButton(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20.0),
      width: MediaQuery.of(context).size.width * 0.62,
      child: ElevatedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Color(0xFF7BA5BB))),
          child: const Text("Register"),
          onPressed: () {
            if (_formKey.currentState!.validate()) {
              ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: Text('Processing Data')));
            }
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => Home_Page()));
          }),
    );
  }
}

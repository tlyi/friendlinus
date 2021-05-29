/* import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:friendlinus/locator.dart';
import 'package:friendlinus/services/authentication_service.dart';
import 'home_page.dart';

class RegisterPage2 extends StatelessWidget {
  final AuthenticationService _authenticationService =
      locator<AuthenticationService>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Align(
          alignment: Alignment.topCenter,
          child: SingleChildScrollView(
            child: SafeArea(
              minimum: EdgeInsets.all(30.0),
              child: RegisterForm(),
            ),
          ),
        ),
      ),
    );
  }
}

class RegisterForm extends StatefulWidget {
  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController courseController = TextEditingController();
  TextEditingController bioController = TextEditingController();
  TextEditingController moduleController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          SizedBox(height: 20),
          _buildHeader(),
          //Add Profile picture? Or not now
          SizedBox(height: 20),
          _buildUsernameField(),
          SizedBox(height: 20),
          _buildPasswordField(),
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
        controller: usernameController,
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

  Widget _buildPasswordField() {
    return Column(children: <Widget>[
      Text("Password"),
      TextFormField(
        controller: passwordController,
        validator: (value) => (value == null || value.isEmpty)
            ? "Required Field"
            : (value.length < 6)
                ? "Password must be at least 6 characters long"
                : null,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          labelText: 'Enter a password',
        ),
      ),
    ]);
  }

  Widget _buildCourseField() {
    return Column(children: <Widget>[
      Text("Course of Study"),
      TextFormField(
        controller: courseController,
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
        controller: bioController,
        keyboardType: TextInputType.multiline,
        maxLines: null,
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
        controller: moduleController,
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
                .push(MaterialPageRoute(builder: (context) => HomePage()));
          }),
    );
  }
}
*/

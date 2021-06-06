/* import 'package:flutter/material.dart';
import 'package:friendlinus/application/auth/auth_bloc.dart';
import 'package:friendlinus/domain/auth/user_profile.dart';
import 'package:friendlinus/infrastructure/profile/user_firestore.dart';

class RegisterForm2 extends StatelessWidget {
  const RegisterForm2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(30.0),
        alignment: Alignment.center,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ElevatedButton(
              onPressed: () async {
                await UserFirestore.createUser(UserProfile(
                    username: 'username',
                    course: 'course',
                    bio: 'bio',
                    module: 'module'));
              },
              child: const Text('Register Profile'),
            ),
          ],
        ));
  }
}


class RegisterForm2 extends StatelessWidget {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController courseController = TextEditingController();
  TextEditingController bioController = TextEditingController();
  TextEditingController moduleController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
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
            /*if (_formKey.currentState!.validate()) {
              ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: Text('Processing Data')));
            }
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => HomePage()));
                */
              
          }),
    );
  }
}
*/
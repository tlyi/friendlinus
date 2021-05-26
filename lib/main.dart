import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:friendlinus/login_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(OurApp());
}

class OurApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LogInPage(),
    );
  }
}

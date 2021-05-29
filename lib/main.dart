import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:friendlinus/injection.dart';
import 'package:injectable/injectable.dart';
import 'pages/login_page.dart';
import 'locator.dart';

Future<void> main() async {
  //setupServices();
  configureInjection(Environment.prod);
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

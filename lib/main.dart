import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:friendlinus/injection.dart';
import 'package:friendlinus/presentation/core/app_widget.dart';
import 'package:injectable/injectable.dart';
import 'presentation/sign_in/sign_in_page.dart';
import 'locator.dart';

Future<void> main() async {
  //setupServices();
  configureInjection(Environment.prod);
  runApp(AppWidget());
}


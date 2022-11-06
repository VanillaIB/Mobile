import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_application_2/Controller/auth_service.dart';
import 'MyApp.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:provider/provider.dart';

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MultiProvider(
    providers: [ChangeNotifierProvider(create: (context) => AuthService())],
    child: MyApp(),
  ));
}

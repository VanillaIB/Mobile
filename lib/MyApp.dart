import 'package:flutter/material.dart';
import 'package:flutter_application_2/Pages/login/ResetPassword.dart';
import 'package:flutter_application_2/Pages/login/SendPass.dart';
import 'Pages/login/LoginPage.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Quindimliça receitas',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.deepOrange),
        home: LoginPage(),
        routes: <String, WidgetBuilder>{
          '/LoginPage': (BuildContext context) => LoginPage(),
          '/ResetPassword': (BuildContext context) => ResetPasswordPage(),
          '/Sendpass': (BuildContext context) => SendEmail(),
        });
  }
}

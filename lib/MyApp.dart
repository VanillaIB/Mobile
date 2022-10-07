import 'package:flutter/material.dart';
import 'package:flutter_application_2/Pages/HomePage/HomePage.dart';
import 'package:flutter_application_2/Pages/MyRevenues.dart';
import 'package:flutter_application_2/Pages/login/ResetPassword.dart';
import 'package:flutter_application_2/Pages/login/SendPass.dart';
import 'package:flutter_application_2/Pages/nova_receita/NovaReceita.dart';
import 'Pages/login/LoginPage.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quindimliça receitas',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      /* * ! Alterar a homepage*/
      home: NovaReceita(),
      routes: <String, WidgetBuilder>{
        '/HomePage': (BuildContext context) => const HomePage(),
        '/LoginPage': (BuildContext context) => LoginPage(),
        '/ResetPassword': (BuildContext context) => ResetPasswordPage(),
        '/Sendpass': (BuildContext context) => SendEmail(),
      },
    );
  }
}

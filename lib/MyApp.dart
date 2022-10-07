import 'package:flutter/material.dart';
import 'package:flutter_application_2/Pages/homepage/homepage.dart';
import 'package:flutter_application_2/Pages/login/novasenha.dart';
import 'Pages/login/paginalogin.dart';
import 'Pages/login/senhaok.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quindimliça receitas',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      /* * ! Alterar a homepage*/
      home: LoginPage(),
      routes: <String, WidgetBuilder>{
        '/HomePage': (BuildContext context) => const HomePage(),
        '/LoginPage': (BuildContext context) => LoginPage(),
        '/ResetPassword': (BuildContext context) => ResetPasswordPage(),
        '/Sendpass': (BuildContext context) => SendEmail(),
      },
    );
  }
}

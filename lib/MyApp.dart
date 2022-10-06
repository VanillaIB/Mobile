import 'package:flutter/material.dart';
import 'package:flutter_application_2/Pages/HomePage/HomePage.dart';
import 'package:flutter_application_2/Pages/MyRevenues.dart';
import 'package:flutter_application_2/Pages/NewRevenuesPage.dart';
import 'package:flutter_application_2/Pages/ResetPassword.dart';
import 'package:flutter_application_2/Pages/RevenuesPage.dart';
import 'package:flutter_application_2/Pages/SendPass.dart';

import 'Pages/LoginPage.dart';
import 'Pages/favorites/favorites_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quindimliça receitas',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      /* * ! Alterar a homepage*/
      home: HomePage(),
      routes: <String, WidgetBuilder>{
        '/HomePage': (BuildContext context) => HomePage(),
        '/LoginPage': (BuildContext context) => LoginPage(),
        '/ResetPassword': (BuildContext context) => ResetPasswordPage(),
        '/Sendpass': (BuildContext context) => SendEmail(),
        '/ReceitaPage': (BuildContext context) => ReceitaPage(),
        '/NovaReceita': (BuildContext context) => NewRevenues(),
      },
    );
  }
}

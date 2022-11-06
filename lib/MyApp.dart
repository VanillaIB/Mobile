import 'package:flutter/material.dart';
import 'package:flutter_application_2/Pages/HomePage/HomePage.dart';
import 'package:flutter_application_2/Pages/login/novasenha.dart';

import 'package:flutter_application_2/Pages/nova_receita/novareceita.dart';
import 'package:flutter_application_2/Pages/receitasfavoritas/minhareceitas.dart';
import 'package:flutter_application_2/Widgets/auth_check.dart';
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
      home: AuthCheck(),
      routes: <String, WidgetBuilder>{
        '/HomePage': (BuildContext context) => const HomePage(),
        '/LoginPage': (BuildContext context) => PaginaLogin(),
        '/ResetPassword': (BuildContext context) => ResetPasswordPage(),
        '/Sendpass': (BuildContext context) => const SendEmail(),
      },
    );
  }
}

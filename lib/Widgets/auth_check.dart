import 'package:flutter/material.dart';
import 'package:flutter_application_2/Pages/HomePage/HomePage.dart';
import 'package:flutter_application_2/Pages/login/paginalogin.dart';
import 'package:flutter_application_2/Pages/receitasfavoritas/minhareceitas.dart';
import 'package:provider/provider.dart';
import 'package:flutter_application_2/Controller/auth_service.dart';

class AuthCheck extends StatefulWidget {
  const AuthCheck({Key? key}) : super(key: key);

  @override
  _AuthCheckState createState() => _AuthCheckState();
}

class _AuthCheckState extends State<AuthCheck> {
  @override
  Widget build(BuildContext context) {
    AuthService auth = Provider.of<AuthService>(context);

    if (auth.isLoading)
      return loading();
    else if (auth.usuario == null)
      return PaginaLogin();
    else
      return HomePage();
  }

  loading() {
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}

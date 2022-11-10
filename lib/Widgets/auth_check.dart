import 'package:flutter/material.dart';
import 'package:flutter_application_2/Pages/HomePage/HomePage.dart';
import 'package:flutter_application_2/Pages/login/paginalogin.dart';
import 'package:provider/provider.dart';
import 'package:flutter_application_2/Controller/auth_service.dart';

class AuthCheck extends StatelessWidget {
  const AuthCheck({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<AuthService>(builder: (context, auth, child) {
      //AuthService auth = Provider.of<AuthService>(context);

      if (auth.isLoading)
        return loading();
      else if (auth.usuario == null)
        return PaginaLogin();
      else
        return HomePage();
    });
  }

  loading() {
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}

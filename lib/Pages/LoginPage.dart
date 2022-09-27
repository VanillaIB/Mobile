import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.yellow,
        body: Padding(
          padding: EdgeInsets.all(80),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch, //alinhamento
              mainAxisAlignment: MainAxisAlignment.center, //alinhamento
              children: [
                TextFormField(
                  //campo 1 do form
                  autofocus: true,
                  keyboardType: TextInputType.text,
                  style:
                      new TextStyle(color: Colors.orangeAccent, fontSize: 20),
                  decoration: InputDecoration(
                      labelText: "Nome do Usuário",
                      labelStyle: TextStyle(color: Colors.orangeAccent)),
                ),
                Divider(),
                TextFormField(
                  //campo 2 do form
                  autofocus: true,
                  obscureText: true, //tonar a senha invisivel
                  keyboardType: TextInputType.text,
                  style:
                      new TextStyle(color: Colors.orangeAccent, fontSize: 20),
                  decoration: InputDecoration(
                      labelText: "Senha",
                      labelStyle: TextStyle(color: Colors.orangeAccent)),
                ),
                Divider(),
                ButtonTheme(
                  height: 60,
                  child: RaisedButton(
                    onPressed: () => {},
                    child: Text(
                      "Enviar",
                      style: TextStyle(color: Colors.orange),
                    ),
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

import 'package:flutter/material.dart';

class SendEmail extends StatelessWidget {
  const SendEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black38,
          onPressed: () => Navigator.pop(context, false),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 60, left: 40, right: 40),
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        width: 200,
                        height: 200,
                        child: Image.asset(
                          "assets/reset-password-icon.png",
                          width: 100,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "E-mail enviado",
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "O link de redefinição de senha foi enviado para o e-mail informado! Aguarde alguns minutos e verifique sua caixa de e-mail!",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

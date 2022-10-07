import 'package:flutter/material.dart';
import 'package:flutter_application_2/Pages/HomePage/HomePage.dart';
import 'package:flutter_application_2/Pages/login/LoginPage.dart';
import 'package:flutter_svg/flutter_svg.dart';

class menulateral extends StatelessWidget {
  const menulateral({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final nome = 'Fulano de Tal';
    final email = 'fulanodetal@gmail.com';
    final Image = 'assets/images/porco_marzipa.jpg';
    return Drawer(
      child: Material(
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            headerMenu(
              fotoPerfil: Image,
              nome: nome,
              email: email,
              onClicked: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => HomePage())),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  itemlista(
                    text: "Minha conta",
                    icon: Icons.people,
                    onClicked: () => itemSelecionado(context, 0),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  itemlista(
                    text: "Receitas Favoritas",
                    icon: Icons.favorite_border_outlined,
                    onClicked: () => itemSelecionado(context, 1),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  itemlista(
                    text: "Adicionar minha receita",
                    icon: Icons.receipt_long_outlined,
                    onClicked: () => itemSelecionado(context, 2),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Divider(
                    color: Colors.black,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  itemlista(
                    text: "Sair",
                    icon: Icons.exit_to_app,
                    onClicked: () => itemSelecionado(context, 3),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget itemlista(
      {required String text, required IconData icon, VoidCallback? onClicked}) {
    final color = Colors.black;

    return ListTile(
      leading: Icon(
        icon,
        color: color,
      ),
      title: Text(
        text,
        style: TextStyle(color: color),
      ),
      onTap: onClicked,
    );
  }

  void itemSelecionado(BuildContext context, int index) {
    Navigator.of(context).pop();
    switch (index) {
      case 0:
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => menulateral(),
          ),
        );
        break;
      case 1:
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => menulateral(),
          ),
        );
        break;
      case 2:
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => menulateral(),
          ),
        );
        break;
      case 3:
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => LoginPage(),
          ),
        );
        break;
    }
  }

  headerMenu(
          {required String fotoPerfil,
          required String nome,
          required String email,
          required VoidCallback onClicked}) =>
      InkWell(
        onTap: onClicked,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 40),
          child: Row(
            children: [
              CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage('assets/images/porco_marzipa.png'),
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    nome,
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    email,
                    style: TextStyle(fontSize: 14, color: Colors.black),
                  )
                ],
              )
            ],
          ),
        ),
      );
}

import 'package:flutter/material.dart';
import 'package:flutter_application_2/Pages/HomePage/HomePage.dart';
import 'package:flutter_application_2/Pages/login/paginalogin.dart';
import 'package:flutter_application_2/Pages/nova_receita/novareceita.dart';
import 'package:provider/provider.dart';

import '../../Controller/auth_service.dart';
import '../receitasfavoritas.dart';

class MenuLateral extends StatelessWidget {
  const MenuLateral({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const nome = 'Fulano de Tal';
    const email = 'fulanodetal@gmail.com';
    const image = 'assets/images/porco_marzipa.jpg';
    return Drawer(
      child: Material(
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            headerMenu(
              fotoPerfil: image,
              nome: nome,
              email: email,
              onClicked: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const HomePage())),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
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
                  const Divider(
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
                      onClicked: () => {
                            context.read<AuthService>().logout(),
                            itemSelecionado(context, 3),
                          }),
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
    const color = Colors.black;

    return ListTile(
      leading: Icon(
        icon,
        color: color,
      ),
      title: Text(
        text,
        style: const TextStyle(color: color),
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
            builder: (context) => const HomePage(),
          ),
        );
        break;
      case 1:
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => MyRevenues(),
          ),
        );
        break;
      case 2:
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => NovaReceita(),
          ),
        );
        break;
      case 3:
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => PaginaLogin(),
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
          padding: const EdgeInsets.symmetric(vertical: 40),
          child: Row(
            children: [
              const CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage('assets/images/porco_marzipa.png'),
              ),
              const SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    nome,
                    style: const TextStyle(fontSize: 20, color: Colors.black),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    email,
                    style: const TextStyle(fontSize: 14, color: Colors.black),
                  )
                ],
              )
            ],
          ),
        ),
      );
}

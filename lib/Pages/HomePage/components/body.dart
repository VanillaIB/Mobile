import 'package:flutter/material.dart';
import 'package:flutter_application_2/constants.dart';

class BodyHome extends StatelessWidget {
  const BodyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          child: Text(
            "Receitas maravilhindas",
            style: Theme.of(context)
                .textTheme
                .headline5
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        Categorias()
      ],
    );
  }
}

class Categorias extends StatefulWidget {
  @override
  State<Categorias> createState() => CategoriasState();
}

class CategoriasState extends State<Categorias> {
  List<String> categorias = ["Todos", "Doces", "Salgados", "Bolos", "Carnes"];
  int categoriaSelecionada = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categorias.length,
        itemBuilder: (context, index) => buildCategorias(index),
      ),
    );
  }

  Widget buildCategorias(int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            categorias[index],
            style: TextStyle(fontWeight: FontWeight.bold, color: ktextcolor),
          ),
          Container(
              margin: EdgeInsets.only(top: kDefaultPaddin / 4),
              height: 2,
              width: 30,
              color: categoriaSelecionada == index
                  ? Colors.black
                  : Colors.transparent)
        ],
      ),
    );
  }
}

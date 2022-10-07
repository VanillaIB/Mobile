import 'package:flutter/material.dart';

import '../../../constants.dart';

class Categorias extends StatefulWidget {
  @override
  State<Categorias> createState() => CategoriasState();
}

class CategoriasState extends State<Categorias> {
  List<String> categorias = ["Todos", "Doces", "Salgados", "Bolos", "Carnes"];
  int categoriaSelecionada = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: paddingpadrao),
      child: SizedBox(
        height: 25,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categorias.length,
          itemBuilder: (context, index) => buildCategorias(index),
        ),
      ),
    );
  }

  Widget buildCategorias(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          categoriaSelecionada = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: paddingpadrao),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              categorias[index],
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: categoriaSelecionada == index
                      ? cortextopadrao
                      : cortextopadraolight),
            ),
            Container(
                margin: const EdgeInsets.only(top: paddingpadrao / 4),
                height: 2,
                width: 30,
                color: categoriaSelecionada == index
                    ? Colors.black
                    : Colors.transparent)
          ],
        ),
      ),
    );
  }
}

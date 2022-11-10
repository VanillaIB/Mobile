import 'package:flutter/material.dart';
import 'package:flutter_application_2/Models/Receita.dart';
import 'package:flutter_application_2/Pages/homepage/components/receitas_ativas.dart';
import 'package:flutter_application_2/Controller/constants.dart';
import 'categorias.dart';

class BodyHome extends StatelessWidget {
  const BodyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding:
              const EdgeInsets.fromLTRB(paddingpadrao, 20, paddingpadrao, 0),
          child: Text(
            "Nossas categorias",
            style: Theme.of(context)
                .textTheme
                .headline5
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        Categorias(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: paddingpadrao),
            child: GridView.builder(
              itemCount: receitas.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: paddingpadrao,
                  crossAxisSpacing: paddingpadrao,
                  childAspectRatio: 1),
              itemBuilder: (context, index) => ReceitasAtivas(
                product: receitas[index],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

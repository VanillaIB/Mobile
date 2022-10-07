import 'package:flutter/material.dart';
import 'package:flutter_application_2/Models/Product.dart';
import 'package:flutter_application_2/Pages/HomePage/components/receitas_ativas.dart';
import 'package:flutter_application_2/constants.dart';
import 'categorias.dart';

class BodyHome extends StatelessWidget {
  const BodyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: paddingpadrao),
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
              itemCount: products.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: paddingpadrao,
                  crossAxisSpacing: paddingpadrao,
                  childAspectRatio: 1),
              itemBuilder: (context, index) => ReceitasAtivas(
                product: products[index],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

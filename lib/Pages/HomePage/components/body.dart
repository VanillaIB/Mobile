import 'package:flutter/material.dart';
import 'package:flutter_application_2/Models/Product.dart';
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
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          child: Text(
            "Nossas categorias",
            style: Theme.of(context)
                .textTheme
                .headline5
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        Categorias(),
        Container(
          height: 180,
          width: 160,
          decoration: BoxDecoration(
            color: products[0].color,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Image.asset(products[0].image),
        )
      ],
    );
  }
}

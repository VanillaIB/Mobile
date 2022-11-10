import 'package:flutter/material.dart';
import 'package:flutter_application_2/Pages/detalhes_receitas/components/body.dart';
import 'package:flutter_application_2/Controller/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../Models/Receita.dart';
import '../../Models/appbargeral.dart';

class TelaDetalhes extends StatelessWidget {
  final Receita product;

  const TelaDetalhes({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 162, 0),
      appBar: buildAppBar(context),
      body: Body(product: product),
    );
  }
}

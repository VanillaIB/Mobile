import 'package:flutter/material.dart';

import '../../../Models/Receita.dart';
import '../../../Controller/constants.dart';

class Descricao extends StatelessWidget {
  const Descricao({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Receita product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: paddingpadrao),
      child: Text(
        product.description,
        style: const TextStyle(height: 1.5),
      ),
    );
  }
}

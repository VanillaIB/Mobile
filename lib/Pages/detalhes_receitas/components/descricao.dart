import 'package:flutter/material.dart';

import '../../../Models/Product.dart';
import '../../../constants.dart';

class descricao extends StatelessWidget {
  const descricao({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: paddingpadrao),
      child: Text(
        product.description,
        style: TextStyle(height: 1.5),
      ),
    );
  }
}

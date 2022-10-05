import 'package:flutter/material.dart';
import 'package:flutter_application_2/Pages/detalhes_receitas/tela_detalhes.dart';

import '../../../Models/Product.dart';
import '../../../constants.dart';

class ReceitasAtivas extends StatelessWidget {
  final Product product;
  // final Function press;
  const ReceitasAtivas({
    Key? key,
    //  required this.press,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => TelaDetalhes(
            product: products[0],
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            alignment: FractionalOffset.bottomCenter,
            decoration: BoxDecoration(
              color: product.color,
              image: DecorationImage(
                  image: AssetImage(product.image), fit: BoxFit.cover),
            ),
            child: Image.asset(product.image),
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [0.3, 1],
                colors: [
                  Color(0xFFF58524),
                  Color(0XFFF92B7F),
                ],
              ),
            ),
            alignment: Alignment.center,
            height: 40.0,
            child: Text(
              product.title,
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 16.0,
                  color: Colors.white),
            ),
          )

          /*
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin / 4),
            child: Text(
              product.title,
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
          ),*/
        ],
      ),
    );
  }
}

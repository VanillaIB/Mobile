import 'package:flutter/material.dart';
import '../../../Models/Receita.dart';
import '../../../Controller/constants.dart';

class ImagemReceita extends StatelessWidget {
  const ImagemReceita({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Receita product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: paddingpadrao),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.fromLTRB(0, 5, 0, 0),
            child: const Text(
              "Faça essa receita maravilhosa: ",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(15, 15, 0, 15),
            child: Text(
              product.title,
              style: Theme.of(context)
                  .textTheme
                  .headline4
                  ?.copyWith(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(80.0),
                  child: Image.asset(
                    product.image,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

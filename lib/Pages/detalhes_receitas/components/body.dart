import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/Models/Product.dart';
import 'ImagemProduto.dart';

class Body extends StatelessWidget {
  final Product product;
  const Body({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    //Recuperar o tamanho total
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  // ignore: prefer_const_constructors
                  decoration: BoxDecoration(
                    // ignore: prefer_const_constructors
                    color: Color.fromARGB(255, 255, 255, 255),
                    // ignore: prefer_const_constructors
                    borderRadius: BorderRadius.only(
                      // ignore: prefer_const_constructors
                      topLeft: Radius.circular(24),
                      // ignore: prefer_const_constructors
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[],
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(15, 200, 0, 0),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            product.description,
                            style: TextStyle(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Imagem_receita(product: product),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

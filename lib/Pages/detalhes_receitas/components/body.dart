import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/Models/Receita.dart';
import 'package:flutter_application_2/Controller/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'imagemproduto.dart';
import 'descricao.dart';

class Body extends StatelessWidget {
  final Receita product;
  const Body({super.key, required this.product});

  get ktextcolor => null;

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
                  padding: EdgeInsets.only(
                    top: size.height * 0.19,
                    left: paddingpadrao,
                  ),
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
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              IconButton(
                                onPressed: () {},
                                icon: SvgPicture.asset(
                                  "assets/icons/heart.svg",
                                  color: ktextcolor,
                                ),
                              ),
                              const Text("Favoritar")
                            ],
                          ),
                        ],
                      ),
                      Descricao(product: product)
                    ],
                  ),
                ),
                ImagemReceita(product: product),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_application_2/Models/Product.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_application_2/Pages/HomePage/HomePage.dart';

class FavoriteRevenues extends StatelessWidget {
  final lista = products.length;
  FavoriteRevenues({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBarCriado(),
        body: GridView.builder(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemCount: products.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  //here you can add youy action on grid element Tab
                },
                child: Card(
                  child: Stack(
                    alignment: FractionalOffset.bottomCenter,
                    children: <Widget>[
                      Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                        image: AssetImage(products[index].image),
                        fit: BoxFit.cover,
                      ))),
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
                          products[index].title,
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 16.0,
                              color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
              );
            }));
  }
}

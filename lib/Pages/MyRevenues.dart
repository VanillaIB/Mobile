import 'package:flutter/material.dart';
import 'package:flutter_application_2/Pages/HomePage/HomePage.dart';
import 'package:flutter_application_2/Models/Product.dart';
import 'package:flutter_application_2/Pages/NewRevenuesPage.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_application_2/Pages/HomePage/HomePage.dart';

class MyRevenues extends StatelessWidget {
  final lista = products.length;
  MyRevenues({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBarCriado(),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              GridView.builder(
                  shrinkWrap: true,
                  primary: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
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
                  }),
              Center(
                child: Container(
                  height: 60,
                  alignment: Alignment.centerLeft,
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
                    borderRadius: BorderRadius.all(
                      Radius.circular(25),
                    ),
                  ),
                  child: SizedBox.expand(
                    child: TextButton(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "Criar nova receita",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ],
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => NewRevenues(),
                            ),
                          );
                        }),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}

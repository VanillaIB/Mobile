import 'package:flutter/material.dart';
import 'package:flutter_application_2/Models/Receita.dart';
import 'package:flutter_svg/svg.dart';
import '../../Controller/constants.dart';

class MyRevenues extends StatelessWidget {
  final lista = receitas.length;
  MyRevenues({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(
                  paddingpadrao, 20, paddingpadrao, 20),
              child: Text(
                "Suas receitas favoritas",
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
            ),
            GridView.builder(
                shrinkWrap: true,
                primary: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemCount: receitas.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {},
                    child: Card(
                      child: Stack(
                        alignment: FractionalOffset.bottomCenter,
                        children: <Widget>[
                          Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                            image: AssetImage(receitas[index].image),
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
                              receitas[index].title,
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
          ],
        ),
      ),
    );
  }
}

AppBar buildAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 1,
    leading: IconButton(
      icon: SvgPicture.asset('assets/icons/back.svg'),
      onPressed: () => Navigator.pop(context),
    ),
    actions: <Widget>[
      IconButton(
        icon: SvgPicture.asset('assets/icons/heart.svg'),
        onPressed: () {},
      ),
      const SizedBox(
        width: paddingpadrao / 2,
      )
    ],
  );
}

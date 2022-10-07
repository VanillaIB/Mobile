import 'package:flutter/material.dart';
import 'package:flutter_application_2/Pages/homepage/components/body.dart';
import 'package:flutter_application_2/Pages/menu_lateral/menulateral.dart';
import 'package:flutter_application_2/Controller/constants.dart';
import 'package:flutter_svg/svg.dart';

import '../minhareceitas.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarCriado(context),
      drawer: const MenuLateral(),
      body: const BodyHome(),
    );
  }
}

AppBar appBarCriado(BuildContext context) {
  return AppBar(
    automaticallyImplyLeading: false,
    backgroundColor: Colors.white,
    leading: Builder(builder: (context) {
      return IconButton(
        icon: SvgPicture.asset("assets/icons/list.svg"),
        onPressed: () {
          Scaffold.of(context).openDrawer();
        },
      );
    }),
    actions: <Widget>[
      IconButton(
        icon: SvgPicture.asset(
          "assets/icons/search.svg",
          color: cortextopadrao,
        ),
        onPressed: () {},
      ),
      IconButton(
        icon: SvgPicture.asset(
          "assets/icons/heart.svg",
          color: cortextopadrao,
        ),
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MyRevenues(),
          ),
        ),
      ),
      const SizedBox(width: paddingpadrao / 2)
    ],
  );
}

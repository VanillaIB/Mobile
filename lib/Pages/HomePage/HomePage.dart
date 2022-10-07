import 'package:flutter/material.dart';
import 'package:flutter_application_2/Pages/HomePage/components/body.dart';
import 'package:flutter_application_2/Pages/menu_lateral/menulateral.dart';
import 'package:flutter_application_2/constants.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarCriado(context),
      drawer: menulateral(),
      body: BodyHome(),
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
        onPressed: () {},
      ),
      SizedBox(width: paddingpadrao / 2)
    ],
  );
}

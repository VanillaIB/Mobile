import 'package:flutter/material.dart';
import 'package:flutter_application_2/Pages/detalhes_receitas/components/body.dart';
import 'package:flutter_application_2/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../Models/Product.dart';

class TelaDetalhes extends StatelessWidget {
  final Product product;

  const TelaDetalhes({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 162, 0),
      appBar: buildAppBar(context),
      body: Body(product: product),
    );
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
          icon: SvgPicture.asset('assets/icons/back.svg'),
          onPressed: () {},
        ),
        IconButton(
          icon: SvgPicture.asset('assets/icons/back.svg'),
          onPressed: () {},
        ),
        SizedBox(
          width: paddingpadrao / 2,
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_application_2/Controller/constants.dart';
import 'package:flutter_svg/svg.dart';

AppBar buildAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 1,
    leading: IconButton(
      icon: SvgPicture.asset('assets/icons/back.svg'),
      onPressed: () => Navigator.pop(context),
    ),
    actions: <Widget>[
      const SizedBox(
        width: paddingpadrao / 2,
      )
    ],
  );
}

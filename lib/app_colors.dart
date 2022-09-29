import 'package:flutter/material.dart';

class MyColors {
  static const MaterialColor primary = MaterialColor(
    0xC4D585FF,
    <int, Color>{
      50: Color.fromRGBO(164, 179, 111, .1),
      100: Color.fromRGBO(164, 179, 111, 0.2),
      400: Color.fromRGBO(164, 179, 111, 0.5),
      800: Color.fromRGBO(164, 179, 111, .9),
      900: Color.fromRGBO(214, 224, 127, 1.0),
    },
  );

  static const MaterialColor primaryLight = MaterialColor(
    0x0F1500FF,
    <int, Color>{
      50: Color.fromRGBO(15, 21, 0, .1),
      100: Color.fromRGBO(15, 21, 0, .2),
      400: Color.fromRGBO(15, 21, 0, 0.5),
      800: Color.fromRGBO(15, 21, 0, .9),
      900: Color.fromRGBO(15, 21, 0, 1.0),
    },
  );

  static const MaterialColor grey = MaterialColor(
    0xFFE2E7EA,
    <int, Color>{
      50: Color.fromRGBO(109, 120, 126, .1),
      100: Color.fromRGBO(109, 120, 126, .2),
      600: Color.fromRGBO(109, 120, 126, 0.7),
      700: Color.fromRGBO(109, 120, 126, .8),
      800: Color.fromRGBO(109, 120, 126, .9),
      900: Color.fromRGBO(109, 120, 126, 1.0),
    },
  );
}

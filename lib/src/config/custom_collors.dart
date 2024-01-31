import 'package:flutter/material.dart';

Map<int, Color> _swatchOpacity = {
  50: const Color.fromRGBO(139, 195, 74, .1),
  100: const Color.fromRGBO(139, 195, 74, .2),
  200: const Color.fromRGBO(139, 195, 74, .3),
  300: const Color.fromRGBO(139, 195, 74, .4),
  400: const Color.fromRGBO(139, 195, 74, .5),
  500: const Color.fromRGBO(139, 195, 74, .6),
};

abstract class CustomColors {
  static Color customContrastColor = Colors.red.shade700;

  static MaterialColor customSwatchColor =
      MaterialColor(0xff31C6F7, _swatchOpacity);
}

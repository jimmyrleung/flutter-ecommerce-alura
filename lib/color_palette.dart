import 'package:flutter/material.dart';

class ColorPalette {
  // Define a color sample
  static Map<int, Color> _lilacSample = {
    50: Color.fromRGBO(178, 155, 178, 0.05),
    100: Color.fromRGBO(178, 155, 178, 0.1),
    200: Color.fromRGBO(178, 155, 178, 0.2),
    300: Color.fromRGBO(178, 155, 178, 0.3),
    400: Color.fromRGBO(178, 155, 178, 0.4),
    500: Color.fromRGBO(178, 155, 178, 0.5),
    600: Color.fromRGBO(178, 155, 178, 0.6),
    700: Color.fromRGBO(178, 155, 178, 0.7),
    800: Color.fromRGBO(178, 155, 178, 0.8),
    900: Color.fromRGBO(178, 155, 178, 0.9),
  };

  // Create a new MaterialColor
  MaterialColor lilac = MaterialColor(0xFFB29BB2, _lilacSample);
}

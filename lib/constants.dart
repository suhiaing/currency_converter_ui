import 'package:flutter/material.dart';

class Variables {
  static const prefixIcons = Icon(Icons.monetization_on_outlined,
      size: 19, color: Color.fromARGB(255, 91, 91, 91));

  static const colors = Color.fromARGB(255, 64, 64, 64);

  static const underlineInputBorders = UnderlineInputBorder(
    borderSide: BorderSide(color: colors),
    borderRadius: BorderRadius.only(),
  );

  static const double widths = 220;

  static const alignment = MainAxisAlignment.spaceEvenly;
}

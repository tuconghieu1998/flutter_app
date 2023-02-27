import 'package:flutter/material.dart';

class ColorPalette {
  static const Color primaryColor = Color(0xff6357CC);
  static const Color secondColor = Color(0xff8F67E8);
  static const Color yellowColor = Color(0xffFFC107);

  static const Color dividerColor = Color(0xff8F67E8);
  static const Color text1Color = Color(0xff313131);
  static const Color text2Color = Color(0xff636363);
  static const Color subTitleColor = Color(0xff838383);
  static const Color backgroundScaffoldColor = Color(0xffF2F2F2);
  
}

class Gradients {
  static const Gradient defaultGradientBackground = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomLeft,
    colors: [
      ColorPalette.primaryColor,
      ColorPalette.secondColor
    ],
  );
}
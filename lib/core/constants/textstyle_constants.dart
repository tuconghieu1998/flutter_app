import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/core/constants/color_constants.dart';

class TextStyles {
  TextStyles(this.context);

  BuildContext? context;

  static const TextStyle defaultStyle = TextStyle(
    fontSize: 14,
    color: ColorPalette.text1Color,
    fontWeight: FontWeight.w400,
    height: 16/14
  );
}

extension ExtendedTextStyle on TextStyle {
  TextStyle get light {
    return copyWith(fontWeight: FontWeight.w300);
  }
  TextStyle get semibold {
    return copyWith(fontWeight: FontWeight.w600);
  }
  TextStyle get bold {
    return copyWith(fontWeight: FontWeight.w700);
  }
  TextStyle get text1Color {
    return copyWith(color: ColorPalette.text1Color);
  }
  TextStyle get whiteTextColor {
    return copyWith(color: Colors.white);
  }


}
import 'package:flutter/material.dart';

abstract class CustomMaterialColor{
  static const MaterialColor primary = MaterialColor(_primaryPrimaryValue, <int, Color>{
    50: Color(0xFFe9eaf3),
    100: Color(0xFFc8cae2),
    200: Color(0xFFa5a8cf),
    300: Color(0xFF8286bb),
    400: Color(0xFF696bac),
    500: Color(0xFF52529e),
    600: Color(0xFF4c4a95),
    700: Color(_primaryPrimaryValue),
    800: Color(0xFF3c367d),
    900: Color(0xFF2f2666)
  });
  static const int _primaryPrimaryValue = 0xFF444089;

  // static const MaterialColor primaryAccent = MaterialColor(_primaryAccentValue, <int, Color>{
  //   100: Color(0xFFFFFFFF),
  //   200: Color(_primaryAccentValue),
  //   400: Color(0xFFFFA8A9),
  //   700: Color(0xFFFF8F90)
  // });
  //
  // static const int _primaryAccentValue = 0xFFFFDBDC;

  static const Color secondary = Color(0xFFEFF0F6);
  static const Color error = Color(0xFFFF0000);
  static const Color dark = Color(0xFF312C2C);
  static const Color subTitleColor = Color(0xFF4E4B66);
  static const Color subTitleColor2 = Color(0xFF95949C);
  static const Color grey = Color(0xFFAAAAAA);
}
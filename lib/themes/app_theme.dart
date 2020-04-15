import 'package:flutter/material.dart';

class app_theme {
  static Color bg = Color(0xff07213B);
  static Color w = Color(0xffE5E7E9);
  static Color g = Color(0xff16DE93);
  static Color r = Color(0xffFB5E5C);
  static Color bglite = Color(0xffF0D3153);

  static TextStyle title = TextStyle(fontSize: 24, fontWeight: FontWeight.bold);
  static TextStyle subtitleMain = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
  );
  static TextStyle stdtw = TextStyle(color: app_theme.w);
  static TextStyle stdtr = TextStyle(color: app_theme.r);
  static TextStyle stdtb = TextStyle(fontWeight: FontWeight.bold);

  static EdgeInsets pv10 = EdgeInsets.symmetric(vertical: 12.0);
}
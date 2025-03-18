import 'package:flutter/material.dart';

class TypographyStyle {
  TitleStyle title = TitleStyle();
  CommomTextStyle commom = CommomTextStyle();
}

class TitleStyle extends TextStyle {
  TextStyle get xs => TextStyle(fontSize: 18, fontWeight: FontWeight.w600);
  TextStyle get sm => TextStyle(fontSize: 22, fontWeight: FontWeight.w600);
  TextStyle get md => TextStyle(fontSize: 26, fontWeight: FontWeight.w600);
  TextStyle get lg => TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
  TextStyle get xlg => TextStyle(fontSize: 32, fontWeight: FontWeight.w600);
}

class CommomTextStyle extends TextStyle {
  TextStyle get xs => TextStyle(fontSize: 12, fontWeight: FontWeight.normal);
  TextStyle get sm => TextStyle(fontSize: 14, fontWeight: FontWeight.normal);
  TextStyle get md => TextStyle(fontSize: 16, fontWeight: FontWeight.normal);
  TextStyle get lg => TextStyle(fontSize: 18, fontWeight: FontWeight.normal);
  TextStyle get xlg => TextStyle(fontSize: 20, fontWeight: FontWeight.normal);
}

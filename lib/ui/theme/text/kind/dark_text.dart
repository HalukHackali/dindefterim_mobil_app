import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../text_theme.dart';

class TextThemeDark implements ITextTheme {
  @override
  late TextTheme data;
  @override
  final Color? primaryColor;

  @override
  TextStyle? bodyText1;

  @override
  TextStyle? bodyText2;

  @override
  TextStyle? headline1;

  @override
  TextStyle? headline2;

  @override
  TextStyle? headline3;

  @override
  TextStyle? headline4;

  @override
  TextStyle? headline5;

  @override
  TextStyle? headline6;

  @override
  TextStyle? subtitle1;

  @override
  TextStyle? subtitle2;

  @override
  String? fontFamily;

  TextThemeDark(this.primaryColor) {
    data = const TextTheme(
      headline6: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
      subtitle1: TextStyle(fontSize: 10.0),
    ).apply(bodyColor: primaryColor);

    fontFamily = GoogleFonts.arvo().fontFamily;
  }
}
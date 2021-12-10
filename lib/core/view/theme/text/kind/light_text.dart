import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../text_theme.dart';

class TextThemeLight implements ITextTheme {

  @override
  late final TextTheme data;

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

  @override
  final Color? primaryColor;

  TextThemeLight(this.primaryColor) {

    fontFamily = GoogleFonts.balsamiqSans().fontFamily;

    data = const TextTheme(
      headline1: TextStyle(fontSize: 96.0, fontWeight: FontWeight.normal),
      headline2: TextStyle(fontSize: 60.0, fontWeight: FontWeight.normal,),
      headline3: TextStyle(fontSize: 48.0, fontWeight: FontWeight.normal,),
      headline4: TextStyle(fontSize: 34.0, fontWeight: FontWeight.normal,),
      headline5: TextStyle(fontSize: 24.0, fontWeight: FontWeight.normal,),
      headline6: TextStyle(fontSize: 20.0, fontWeight: FontWeight.normal),

      subtitle1: TextStyle(fontSize: 16.0, fontWeight: FontWeight.normal,),
      subtitle2: TextStyle(fontSize: 14.0, fontWeight: FontWeight.normal,),

      bodyText1: TextStyle(fontSize: 16.0, fontWeight: FontWeight.normal,),
      bodyText2: TextStyle(fontSize: 14.0, fontWeight: FontWeight.normal,),


      caption: TextStyle(fontSize: 12.0, fontWeight: FontWeight.normal,),

      overline: TextStyle(fontSize: 10.0, fontWeight: FontWeight.normal,),

    ).apply(bodyColor: primaryColor);
  }
}

/// The 2018 spec has thirteen text styles:
/// ```
/// NAME         SIZE  WEIGHT  SPACING
/// headline1    96.0  light   -1.5
/// headline2    60.0  light   -0.5
/// headline3    48.0  regular  0.0
/// headline4    34.0  regular  0.25
/// headline5    24.0  regular  0.0
/// headline6    20.0  medium   0.15
/// subtitle1    16.0  regular  0.15
/// subtitle2    14.0  medium   0.1
/// body1        16.0  regular  0.5   (bodyText1)
/// body2        14.0  regular  0.25  (bodyText2)
/// button       14.0  medium   1.25
/// caption      12.0  regular  0.4
/// overline     10.0  regular  1.5
/// ```
import 'package:dindefterim_sari/features/okul/view/mainpage_view.dart';
import 'package:flutter/material.dart';

import 'core/view/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeManager.craeteTheme(AppThemeLight()),
      // theme: ThemeManager.craeteTheme(AppThemeDark()),
      title: 'DinDefterim',
      home: MainPageView(),
    );
  }
}

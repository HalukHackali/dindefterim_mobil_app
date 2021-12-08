library main;

import 'package:flutter/material.dart';
import 'features/okul/view/anasayfa_view.dart';

part './core/view/theme/_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      title: 'DinDefterim',
      theme: _myTheme,
      home: const AnaSayfaView(),
    );
  }
}



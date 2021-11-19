import 'package:flutter/material.dart';
import 'package:dindefterim_sari/core/view/theme/theme.dart';

import 'features/okul/view/anasayfa_view.dart';

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
      theme: myTheme,

      /*
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      */
      home: const AnaSayfaView(),
    );
  }
}



import 'package:flutter/material.dart';
import 'features/okul/view/user_view/feature/app_screen.dart';
import 'features/okul/view/user_view/size_confige.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      title: 'Dindefterim App',
      theme: ThemeData(
        fontFamily: "Nunito",
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Builder(builder: (context) {
        SizeConfig.initSize(context);
        return const ApprScreen();
      }),
    );
  }
}

import 'package:dindefterim_sari/config/constants.dart';
import 'package:dindefterim_sari/config/size_confige.dart';
import 'package:flutter/material.dart';

import '1.unite_icerik/unite_1.dart';
import '2.unite_icerik/unite_2.dart';
import '3.unite_icerik/unite_3.dart';
import '4.unite_icerik/unite_4.dart';
import '5.unite_icerik/unite_5.dart';

class OnikinciiSinif extends StatefulWidget {
  const OnikinciiSinif({Key? key}) : super(key: key);

  @override
  _OnikinciiSinifState createState() => _OnikinciiSinifState();
}

class _OnikinciiSinifState extends State<OnikinciiSinif> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: kBackgroundColor,
        appBar: AppBar(
          backgroundColor: const Color(0xff9182F9),
          iconTheme: const IconThemeData(
            color: Color(0xffEFF2F7),
          ),
          title: Text(
            "12.Sınıf Üniteler",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: const Color(0xffEFF2F7),
              fontSize: getRelativeWidth(0.061),
            ),
          ),
          bottom: const TabBar(
            tabs: [
              Tab(text: "1.Ünite"),
              Tab(text: "2.Ünite"),
              Tab(text: "3.Ünite"),
              Tab(text: "4.Ünite"),
              Tab(text: "5.Ünite"),
            ],
            indicatorColor: Color(0xff586191),
            labelColor: Color(0xffEFF2F7),
          ),
        ),
        body: const TabBarView(
          children: [
            Oniki_A_Birinci_Unite(),
            Oniki_B_Ikinci_Unite(),
            Oniki_C_Ucuncu_Unite(),
            Oniki_C_Ucuncu_Unite(),
            Oniki_E_Besinci_Unite(),
          ],
        ),
      ),
    );
  }
}

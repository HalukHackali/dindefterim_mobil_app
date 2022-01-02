import 'package:dindefterim_sari/core/constants.dart';
import 'package:dindefterim_sari/core/size_confige.dart';
import 'package:flutter/material.dart';

import '1.unite_icerik/unite_1.dart';
import '2.unite_icerik/unite_2.dart';
import '3.unite_icerik/unite_3.dart';
import '4.unite_icerik/unite_4.dart';
import '5.unite_icerik/unite_5.dart';

class OnuncuSinif extends StatefulWidget {
  const OnuncuSinif({Key? key}) : super(key: key);

  @override
  _OnuncuSinifState createState() => _OnuncuSinifState();
}

class _OnuncuSinifState extends State<OnuncuSinif> {
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
            "10.Sınıf Üniteler",
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
            On_A_Birinci_Unite(),
            On_B_Ikinci_Unite(),
            On_C_Ucuncu_Unite(),
            On_D_Dorduncu_Unite(),
            On_E_Besinci_Unite(),
          ],
        ),
      ),
    );
  }
}

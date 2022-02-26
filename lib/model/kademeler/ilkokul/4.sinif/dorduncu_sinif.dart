import 'package:dindefterim_sari/core/constants.dart';
import 'package:dindefterim_sari/core/size_confige.dart';
import 'package:flutter/material.dart';

import '1.unite_icerik/unite_1.dart';
import '2.unite_icerik/unite_2.dart';
import '3.unite_icerik/unite_3.dart';
import '4.unite_icerik/unite_4.dart';
import '5.unite_icerik/unite_5.dart';

class DorduncuSinif extends StatefulWidget {
  const DorduncuSinif({Key? key}) : super(key: key);

  @override
  _DorduncuSinifState createState() => _DorduncuSinifState();
}

class _DorduncuSinifState extends State<DorduncuSinif> {
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
            "4.Sınıf Üniteler",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: const Color(0xffEFF2F7),
              //fontSize: getRelativeWidth(0.061),
              fontSize: UIHelper.getSiniflarTitleHeight() * 0.8,
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
            indicator: BoxDecoration(color: Color(0xff586191)),
            indicatorColor: Color(0xff586191),
            labelColor: Color(0xffEFF2F7),
          ),
        ),
        body: const TabBarView(
          children: [
            Dort_A_Birinci_Unite(),
            Dort_B_Ikinci_Unite(),
            Dort_C_Ucuncu_Unite(),
            Dort_D_Dorduncu_Unite(),
            Dort_E_Besinci_Unite(),
          ],
        ),
      ),
    );
  }
}

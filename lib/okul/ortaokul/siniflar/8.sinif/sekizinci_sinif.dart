import 'package:flutter/material.dart';

import '1.unite_icerik/unite_1.dart';
import '2.unite_icerik/unite_2.dart';
import '3.unite_icerik/unite_3.dart';
import '4.unite_icerik/unite_4.dart';
import '5.unite_icerik/unite_5.dart';


class sekizinciSinif extends StatefulWidget {
  const sekizinciSinif({Key? key}) : super(key: key);

  @override
  _sekizinciSinifState createState() => _sekizinciSinifState();
}

class _sekizinciSinifState extends State<sekizinciSinif> {
  int _aktifIcerikNo = 0;
  late List<Widget> _icerikler;



  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text("8.Sınıf Üniteler"),

          bottom: const TabBar(
            tabs: [
              Tab(text: "1.Ünite"),
              Tab(text: "2.Ünite"),
              Tab(text: "3.Ünite"),
              Tab(text: "4.Ünite"),
              Tab(text: "5.Ünite"),
            ],
            indicatorColor: Colors.white,
            labelColor: Colors.white,
          ),
        ),
        body: const TabBarView(
          children: [
            Sekizinci_A_Birinci_Unite(),
            Sekizinci_B_Ikinci_Unite(),
            Sekizinci_C_Ucuncu_Unite(),
            Sekizinci_D_Dorduncu_Unite(),
            Sekizinci_E_Besinci_Unite(),



          ],
        ),
      ),
    );
  }
}



import 'package:flutter/material.dart';

import 'package:dindefterim_sari/screens/layout/kavramlar_ogrenme_alani_widget.dart';
import 'package:dindefterim_sari/screens/layout/no_ready_page.dart';
import 'package:dindefterim_sari/screens/layout/unite_adi.dart';
import 'package:dindefterim_sari/screens/layout/unite_alt_konu_adi.dart';
import 'package:dindefterim_sari/screens/layout/unite_icerik.dart';
import 'package:flutter/material.dart';

class Oniki_B_Ikinci_Unite extends StatefulWidget {
  const Oniki_B_Ikinci_Unite();

  @override
  _Oniki_B_Ikinci_UniteState createState() => _Oniki_B_Ikinci_UniteState();
}

class _Oniki_B_Ikinci_UniteState extends State<Oniki_B_Ikinci_Unite> {
  bool shouldPop = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WillPopScope(
          onWillPop: () async {
            return shouldPop;
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Flex(
              direction: Axis.vertical,
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        const UniteAdi("Anadoluda İslam"),
                        const SizedBox(height: 10),
                        KavramlarOgrenmeAlani("Alim", "Fakih", "Tasavvuf", "Veli", "Din ve Kültür"),
                        const SizedBox(height: 10),
                        unitAltKonuAdiBant(context,
                          'Türklerin Müslüman Olmaları',
                          const UniteIcerik(
                            unideninAdi:
                            'Türklerin Müslüman Olmaları',
                            mdLinkF:  UniteIcerikMarkDown(mdLink: "assets/markdown/siniflar_md/5.siniflar_md/5_1_1_unite_icerik.md",),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(context,
                          'Milletimizin İslam Anlayışının Oluşmasında Etkili Olan Bazı Şahsiyetler',
                          const UniteIcerik(
                            unideninAdi:
                            'Milletimizin İslam Anlayışının Oluşmasında Etkili Olan Bazı Şahsiyetler',
                            mdLinkF:  UniteIcerikMarkDown(mdLink: "assets/markdown/siniflar_md/5.siniflar_md/5_1_1_unite_icerik.md",),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          'Nisâ Suresi 69. Ayetı',
                          const UniteIcerik(
                            unideninAdi:
                            'Nisâ Suresi 69. Ayet',
                            mdLinkF:  UniteIcerikMarkDown(mdLink: "assets/markdown/siniflar_md/5.siniflar_md/5_1_1_unite_icerik.md",),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          "Ünite Soruları - hazırlanıyor",
                          const NoReadyPage(),
                        ),
                        const SizedBox(height: 5),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}

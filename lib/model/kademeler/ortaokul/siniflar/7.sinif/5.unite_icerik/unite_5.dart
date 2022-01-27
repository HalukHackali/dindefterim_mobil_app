import 'package:flutter/material.dart';

import 'package:dindefterim_sari/screens/layout/kavramlar_ogrenme_alani_widget.dart';
import 'package:dindefterim_sari/screens/layout/no_ready_page.dart';
import 'package:dindefterim_sari/screens/layout/unite_adi.dart';
import 'package:dindefterim_sari/screens/layout/unite_alt_konu_adi.dart';



class Yedi_E_Besinci_Unite extends StatefulWidget {
  const Yedi_E_Besinci_Unite();

  @override
  _Yedi_E_Besinci_UniteState createState() => _Yedi_E_Besinci_UniteState();
}

class _Yedi_E_Besinci_UniteState extends State<Yedi_E_Besinci_Unite> {

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
                        const UniteAdi("İslam Düşüncesinde Yorumlar"),
                        const SizedBox(height: 10),
                        KavramlarOgrenmeAlani("1.Kavram", "2.Kavram", "3.Kavram", "4.Kavram", "1.Öğrenme Alanı"),
                        const SizedBox(height: 10),
                        unitAltKonuAdiBant(context,
                            'Din Anlayışındaki Yorum Farklılıklarının Sebepleri',
                            const NoReadyPage(), ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(context,
                            'İslam Düşüncesinde Yorum Biçimleri',
                            const NoReadyPage(), ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                            context,
                            'İslam Düşüncesinde Tasavvufi Yorumlar',
                            const NoReadyPage(),
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
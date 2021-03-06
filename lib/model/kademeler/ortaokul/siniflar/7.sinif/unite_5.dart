import 'package:flutter/material.dart';

import 'package:dindefterim_sari/ui/layout/kavramlar_ogrenme_alani_widget.dart';
import 'package:dindefterim_sari/ui/layout/unite_adi.dart';
import 'package:dindefterim_sari/ui/layout/unite_alt_konu_adi.dart';
import 'package:dindefterim_sari/ui/layout/unite_icerik.dart';

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
                        KavramlarOgrenmeAlani("Fıkıh", "İtikat",
                            "Tasavvuf", "Mezhep", "İnanç"),
                        const SizedBox(height: 10),
                        unitAltKonuAdiBant(
                          context,
                          'Din Anlayışındaki Yorum Farklılıklarının Sebepleri',
                          const UniteIcerik(
                            konuAdi:
                            'Din Anlayışındaki Yorum Farklılıklarının Sebepleri',
                            mdLinkF: KonuIcerikMarkDown(
                              mdLink:
                              "assets/markdown/siniflar_md/7.siniflar_md/5.unite/7_5_1_unite_icerik.md",
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          'İslam Düşüncesinde Yorum Biçimleri',
                          const UniteIcerik(
                            konuAdi:
                            'İslam Düşüncesinde Yorum Biçimleri',
                            mdLinkF: KonuIcerikMarkDown(
                              mdLink:
                              "assets/markdown/siniflar_md/7.siniflar_md/5.unite/7_5_2_unite_icerik.md",
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          'İslam Düşüncesinde Tasavvufi Yorumlar',
                          const UniteIcerik(
                            konuAdi:
                            'İslam Düşüncesinde Tasavvufi Yorumlar',
                            mdLinkF: KonuIcerikMarkDown(
                              mdLink:
                              "assets/markdown/siniflar_md/7.siniflar_md/5.unite/7_5_3_unite_icerik.md",
                            ),
                          ),                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          "Ünite Soruları - hazırlanıyor",
                          const UniteIcerik(
                            konuAdi:
                            "Ünite Soruları - hazırlanıyor",
                            mdLinkF: KonuIcerikMarkDown(
                              mdLink:
                              "assets/markdown/siniflar_md/7.siniflar_md/5.unite/7_5_4_unite_icerik.md",
                            ),
                          ),                        ),
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

import 'package:flutter/material.dart';

import 'package:dindefterim_sari/ui/layout/kavramlar_ogrenme_alani_widget.dart';
import 'package:dindefterim_sari/ui/layout/unite_adi.dart';
import 'package:dindefterim_sari/ui/layout/unite_alt_konu_adi.dart';
import 'package:dindefterim_sari/ui/layout/unite_icerik.dart';
class Yedi_D_Dorduncu_Unite extends StatefulWidget {
  const Yedi_D_Dorduncu_Unite();

  @override
  _Yedi_D_Dorduncu_UniteState createState() => _Yedi_D_Dorduncu_UniteState();
}

class _Yedi_D_Dorduncu_UniteState extends State<Yedi_D_Dorduncu_Unite> {
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
                        const UniteAdi("Allahın Kulu ve Elçisi Hz.Muhammed"),
                        const SizedBox(height: 10),
                        KavramlarOgrenmeAlani("Risalet", "Nübüvvet",
                            "Hatem-ul Embiya", "", "Hz.Muhammed"),
                        const SizedBox(height: 10),
                        unitAltKonuAdiBant(
                          context,
                          'Allah’ın (c.c.) Kulu Hz. Muhammed (s.a.v.)',
                          const UniteIcerik(
                            konuAdi:
                            'Allah’ın (c.c.) Kulu Hz. Muhammed (s.a.v.)',
                            mdLinkF: KonuIcerikMarkDown(
                              mdLink:
                              "assets/markdown/siniflar_md/7.siniflar_md/4.unite/7_4_1_unite_icerik.md",
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          'Allah’ın (c.c.) Elçisi Hz. Muhammed (s.a.v.)',
                          const UniteIcerik(
                            konuAdi:
                            'Allah’ın (c.c.) Elçisi Hz. Muhammed (s.a.v.)',
                            mdLinkF: KonuIcerikMarkDown(
                              mdLink:
                              "assets/markdown/siniflar_md/7.siniflar_md/4.unite/7_4_2_unite_icerik.md",
                            ),
                          ),                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          'Bir Sure Tanıyorum: Kâfirun Suresi ve Anlamı',
                          const UniteIcerik(
                            konuAdi:
                            'Bir Sure Tanıyorum: Kâfirun Suresi ve Anlamı',
                            mdLinkF: KonuIcerikMarkDown(
                              mdLink:
                              "assets/markdown/siniflar_md/7.siniflar_md/4.unite/7_4_3_unite_icerik.md",
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
                              "assets/markdown/siniflar_md/7.siniflar_md/4.unite/7_4_4_unite_icerik.md",
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

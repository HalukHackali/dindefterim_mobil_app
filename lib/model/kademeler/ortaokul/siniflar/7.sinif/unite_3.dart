import 'package:flutter/material.dart';

import 'package:dindefterim_sari/ui/layout/kavramlar_ogrenme_alani_widget.dart';
import 'package:dindefterim_sari/ui/layout/unite_adi.dart';
import 'package:dindefterim_sari/ui/layout/unite_alt_konu_adi.dart';
import 'package:dindefterim_sari/ui/layout/unite_icerik.dart';

class Yedi_C_Ucuncu_Unite extends StatefulWidget {
  const Yedi_C_Ucuncu_Unite();

  @override
  _Yedi_C_Ucuncu_UniteState createState() => _Yedi_C_Ucuncu_UniteState();
}

class _Yedi_C_Ucuncu_UniteState extends State<Yedi_C_Ucuncu_Unite> {
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
                        const UniteAdi("Ahlaki Davranışlar"),
                        const SizedBox(height: 10),
                        KavramlarOgrenmeAlani("Değer", "Tutum",
                            "Davranış", "Ahlak", "Ahlak"),
                        const SizedBox(height: 10),
                        unitAltKonuAdiBant(
                          context,
                          'Güzel Ahlaki Tutum ve Davranışlar',
                          const UniteIcerik(
                            konuAdi:
                            'Güzel Ahlaki Tutum ve Davranışlar',
                            mdLinkF: KonuIcerikMarkDown(
                              mdLink:
                              "assets/markdown/siniflar_md/7.siniflar_md/3.unite/7_3_1_unite_icerik.md",
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          'Bir Peygamber Tanıyorum: Hz. Salih (a.s.)',
                          const UniteIcerik(
                            konuAdi:
                            'Bir Peygamber Tanıyorum: Hz. Salih (a.s.)',
                            mdLinkF: KonuIcerikMarkDown(
                              mdLink:
                              "assets/markdown/siniflar_md/7.siniflar_md/3.unite/7_3_2_unite_icerik.md",
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          'Bir Sure Tanıyorum: Felak Suresi ve Anlamı',
                          const UniteIcerik(
                            konuAdi:
                            'Bir Sure Tanıyorum: Felak Suresi ve Anlamı',
                            mdLinkF: KonuIcerikMarkDown(
                              mdLink:
                              "assets/markdown/siniflar_md/7.siniflar_md/3.unite/7_3_3_unite_icerik.md",
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          "Ünite Soruları - hazırlanıyor",
                          const UniteIcerik(
                            konuAdi:
                            "Ünite Soruları - hazırlanıyor",
                            mdLinkF: KonuIcerikMarkDown(
                              mdLink:
                              "assets/markdown/siniflar_md/7.siniflar_md/3.unite/7_3_4_unite_icerik.md",
                            ),
                          ),
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

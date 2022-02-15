import 'package:dindefterim_sari/screens/layout/unite_icerik.dart';
import 'package:flutter/material.dart';

import 'package:dindefterim_sari/screens/layout/kavramlar_ogrenme_alani_widget.dart';
import 'package:dindefterim_sari/screens/layout/no_ready_page.dart';
import 'package:dindefterim_sari/screens/layout/unite_adi.dart';
import 'package:dindefterim_sari/screens/layout/unite_alt_konu_adi.dart';

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
                        KavramlarOgrenmeAlani("1.Kavram", "2.Kavram",
                            "3.Kavram", "4.Kavram", "1.Öğrenme Alanı"),
                        const SizedBox(height: 10),
                        unitAltKonuAdiBant(
                          context,
                          'Güzel Ahlaki Tutum ve Davranışlar',
                          const UniteIcerik(
                            unideninAdi:
                            'Güzel Ahlaki Tutum ve Davranışlar',
                            mdLinkF: UniteIcerikMarkDown(
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
                            unideninAdi:
                            'Bir Peygamber Tanıyorum: Hz. Salih (a.s.)',
                            mdLinkF: UniteIcerikMarkDown(
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
                            unideninAdi:
                            'Bir Sure Tanıyorum: Felak Suresi ve Anlamı',
                            mdLinkF: UniteIcerikMarkDown(
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
                            unideninAdi:
                            "Ünite Soruları - hazırlanıyor",
                            mdLinkF: UniteIcerikMarkDown(
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

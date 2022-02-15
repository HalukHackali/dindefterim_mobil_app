import 'package:dindefterim_sari/screens/layout/unite_icerik.dart';
import 'package:flutter/material.dart';

import 'package:dindefterim_sari/screens/layout/kavramlar_ogrenme_alani_widget.dart';
import 'package:dindefterim_sari/screens/layout/no_ready_page.dart';
import 'package:dindefterim_sari/screens/layout/unite_adi.dart';
import 'package:dindefterim_sari/screens/layout/unite_alt_konu_adi.dart';

class Bes_D_Dorduncu_Unite extends StatefulWidget {
  const Bes_D_Dorduncu_Unite();

  @override
  _Bes_D_Dorduncu_UniteState createState() => _Bes_D_Dorduncu_UniteState();
}

class _Bes_D_Dorduncu_UniteState extends State<Bes_D_Dorduncu_Unite> {
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
                        const UniteAdi("Hz.Muhammed’in Hayatı"),
                        const SizedBox(height: 10),
                        KavramlarOgrenmeAlani("1.Kavram", "2.Kavram",
                            "3.Kavram", "4.Kavram", "1.Öğrenme Alanı"),
                        const SizedBox(height: 10),
                        unitAltKonuAdiBant(
                          context,
                          'Hz.Muhammed’in(sav) Daveti:Mekke Dönemi',
                          const UniteIcerik(
                            unideninAdi:
                                'Hz.Muhammed’in(sav) Daveti:Mekke Dönemi',
                            mdLinkF: UniteIcerikMarkDown(
                              mdLink:
                                  "assets/markdown/siniflar_md/6.siniflar_md/4.unite/6_4_1_unite_icerik.md",
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          'Hicret',
                          const UniteIcerik(
                            unideninAdi: 'Hicret',
                            mdLinkF: UniteIcerikMarkDown(
                              mdLink:
                                  "assets/markdown/siniflar_md/6.siniflar_md/4.unite/6_4_2_unite_icerik.md",
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          'Hz.Muhammed’in(sav) Daveti:Medine Dönemi',
                          const UniteIcerik(
                            unideninAdi:
                                'Hz.Muhammed’in(sav) Daveti:Medine Dönemi',
                            mdLinkF: UniteIcerikMarkDown(
                              mdLink:
                                  "assets/markdown/siniflar_md/6.siniflar_md/4.unite/6_4_3_unite_icerik.md",
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          'Bir Sure Tanıyorum: Nasr Suresi ve Anlamı',
                          const UniteIcerik(
                            unideninAdi:
                                'Bir Sure Tanıyorum: Nasr Suresi ve Anlam',
                            mdLinkF: UniteIcerikMarkDown(
                              mdLink:
                                  "assets/markdown/siniflar_md/6.siniflar_md/4.unite/6_4_4_unite_icerik.md",
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

import 'package:flutter/material.dart';

import 'package:dindefterim_sari/ui/layout/kavramlar_ogrenme_alani_widget.dart';
import 'package:dindefterim_sari/ui/layout/unite_adi.dart';
import 'package:dindefterim_sari/ui/layout/unite_alt_konu_adi.dart';
import 'package:dindefterim_sari/ui/layout/unite_icerik.dart';

class Alti_D_Dorduncu_Unite extends StatefulWidget {
  const Alti_D_Dorduncu_Unite();

  @override
  _Alti_D_Dorduncu_UniteState createState() => _Alti_D_Dorduncu_UniteState();
}

class _Alti_D_Dorduncu_UniteState extends State<Alti_D_Dorduncu_Unite> {
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
                        KavramlarOgrenmeAlani("Davet", "Tebliğ", "Ensar",
                            "Muhacir", "Hz.Muhammed"),
                        const SizedBox(height: 10),
                        unitAltKonuAdiBant(
                          context,
                          'Hz.Muhammed’in(sav) Daveti:Mekke Dönemi',
                          const UniteIcerik(
                            konuAdi:
                                'Hz.Muhammed’in(sav) Daveti:Mekke Dönemi',
                            mdLinkF: KonuIcerikMarkDown(
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
                            konuAdi: 'Hicret',
                            mdLinkF: KonuIcerikMarkDown(
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
                            konuAdi:
                                'Hz.Muhammed’in(sav) Daveti:Medine Dönemi',
                            mdLinkF: KonuIcerikMarkDown(
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
                            konuAdi:
                                'Bir Sure Tanıyorum: Nasr Suresi ve Anlam',
                            mdLinkF: KonuIcerikMarkDown(
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

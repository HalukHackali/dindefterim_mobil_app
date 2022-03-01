import 'package:flutter/material.dart';

import 'package:dindefterim_sari/ui/layout/kavramlar_ogrenme_alani_widget.dart';
import 'package:dindefterim_sari/ui/layout/unite_adi.dart';
import 'package:dindefterim_sari/ui/layout/unite_alt_konu_adi.dart';
import 'package:dindefterim_sari/ui/layout/unite_icerik.dart';

class Alti_E_Besinci_Unite extends StatefulWidget {
  const Alti_E_Besinci_Unite();

  @override
  _Alti_E_Besinci_UniteState createState() => _Alti_E_Besinci_UniteState();
}

class _Alti_E_Besinci_UniteState extends State<Alti_E_Besinci_Unite> {
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
                        const UniteAdi("Temel Değerlerimiz"),
                        const SizedBox(height: 10),
                        KavramlarOgrenmeAlani("Bayram", "Vatan",
                            "Bayrak", "Marş", "Kültür"),
                        const SizedBox(height: 10),
                        unitAltKonuAdiBant(
                          context,
                          'Toplumumuzu Birleştiren Temel Değerler',
                          const UniteIcerik(
                            konuAdi:
                                'Toplumumuzu Birleştiren Temel Değerler',
                            mdLinkF: KonuIcerikMarkDown(
                              mdLink:
                                  "assets/markdown/siniflar_md/6.siniflar_md/5.unite/6_5_1_unite_icerik.md",
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          'Dinî Bayramlar, Önemli Gün ve Geceler',
                          const UniteIcerik(
                            konuAdi:
                                'Dinî Bayramlar, Önemli Gün ve Geceler',
                            mdLinkF: KonuIcerikMarkDown(
                              mdLink:
                                  "assets/markdown/siniflar_md/6.siniflar_md/5.unite/6_5_1_unite_icerik.md",
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

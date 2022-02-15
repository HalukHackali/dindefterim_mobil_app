import 'package:dindefterim_sari/screens/layout/unite_icerik.dart';
import 'package:flutter/material.dart';

import 'package:dindefterim_sari/screens/layout/kavramlar_ogrenme_alani_widget.dart';
import 'package:dindefterim_sari/screens/layout/no_ready_page.dart';
import 'package:dindefterim_sari/screens/layout/unite_adi.dart';
import 'package:dindefterim_sari/screens/layout/unite_alt_konu_adi.dart';

class Bes_E_Besinci_Unite extends StatefulWidget {
  const Bes_E_Besinci_Unite();

  @override
  _Bes_E_Besinci_UniteState createState() => _Bes_E_Besinci_UniteState();
}

class _Bes_E_Besinci_UniteState extends State<Bes_E_Besinci_Unite> {
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
                            unideninAdi:
                                'Toplumumuzu Birleştiren Temel Değerler',
                            mdLinkF: UniteIcerikMarkDown(
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
                            unideninAdi:
                                'Dinî Bayramlar, Önemli Gün ve Geceler',
                            mdLinkF: UniteIcerikMarkDown(
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

import 'package:flutter/material.dart';

import 'package:dindefterim_sari/screens/layout/unite_icerik.dart';
import 'package:dindefterim_sari/screens/layout/kavramlar_ogrenme_alani_widget.dart';
import 'package:dindefterim_sari/screens/layout/unite_adi.dart';
import 'package:dindefterim_sari/screens/layout/unite_alt_konu_adi.dart';

class Sekizinci_C_Ucuncu_Unite extends StatefulWidget {
  const Sekizinci_C_Ucuncu_Unite();

  @override
  _Sekizinci_C_Ucuncu_UniteState createState() =>
      _Sekizinci_C_Ucuncu_UniteState();
}

class _Sekizinci_C_Ucuncu_UniteState extends State<Sekizinci_C_Ucuncu_Unite> {
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
                        const UniteAdi("Din ve Hayat"),
                        const SizedBox(height: 10),
                        KavramlarOgrenmeAlani("Birey", "Toplum",
                            "Akıl", "Nesil", "İnanç"),
                        const SizedBox(height: 10),
                        unitAltKonuAdiBant(
                          context,
                          'Din, Birey ve Toplum',
                          const UniteIcerik(
                            unideninAdi:
                                'Din, Birey ve Toplum',
                            mdLinkF: UniteIcerikMarkDown(
                              mdLink:
                                  "assets/markdown/siniflar_md/8.siniflar_md/3.unite/8_3_1_unite_icerik.md",
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          'Dinin Temel Gayesi',
                          const UniteIcerik(
                            unideninAdi: 'Dinin Temel Gayesi',
                            mdLinkF: UniteIcerikMarkDown(
                              mdLink:
                                  "assets/markdown/siniflar_md/8.siniflar_md/3.unite/8_3_2_unite_icerik.md",
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          'Bir Peygamber Tanıyorum: Hz.Yusuf(as)',
                          const UniteIcerik(
                            unideninAdi:
                                'Bir Peygamber Tanıyorum: Hz.Yusuf(as)',
                            mdLinkF: UniteIcerikMarkDown(
                              mdLink:
                                  "assets/markdown/siniflar_md/8.siniflar_md/3.unite/8_3_3_unite_icerik.md",
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          'Asr Suresi ve Anlamı',
                          const UniteIcerik(
                            unideninAdi: 'Asr Suresi ve Anlamı',
                            mdLinkF: UniteIcerikMarkDown(
                              mdLink:
                                  "assets/markdown/siniflar_md/8.siniflar_md/3.unite/8_3_4_unite_icerik.md",
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          'Ünite Soruları - hazırlanıyor',
                          const UniteIcerik(
                            unideninAdi: 'Ünite Soruları - hazırlanıyor',
                            mdLinkF: UniteIcerikMarkDown(
                              mdLink:
                                  "assets/markdown/siniflar_md/8.siniflar_md/3.unite/8_3_5_unite_icerik.md",
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

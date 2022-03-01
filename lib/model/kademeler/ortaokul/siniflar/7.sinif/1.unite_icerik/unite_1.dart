import 'package:flutter/material.dart';

import 'package:dindefterim_sari/ui/layout/kavramlar_ogrenme_alani_widget.dart';
import 'package:dindefterim_sari/ui/layout/unite_adi.dart';
import 'package:dindefterim_sari/ui/layout/unite_alt_konu_adi.dart';
import 'package:dindefterim_sari/ui/layout/unite_icerik.dart';

class Yedi_A_Birinci_Unite extends StatefulWidget {
  const Yedi_A_Birinci_Unite();

  @override
  _Yedi_A_Birinci_UniteState createState() => _Yedi_A_Birinci_UniteState();
}

class _Yedi_A_Birinci_UniteState extends State<Yedi_A_Birinci_Unite> {
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
                        const UniteAdi("Melek ve Ahiret İnancı"),
                        const SizedBox(height: 10),
                        KavramlarOgrenmeAlani(
                            "Haşr", "Sur", "Kıyamet", "Mahşer", "İnanç"),
                        const SizedBox(height: 10),
                        unitAltKonuAdiBant(
                          context,
                          'Görülen ve Görülemeyen Varlıklar',
                          const UniteIcerik(
                            unideninAdi:
                            'Görülen ve Görülemeyen Varlıklar',
                            mdLinkF: UniteIcerikMarkDown(
                              mdLink:
                                  "assets/markdown/siniflar_md/7.siniflar_md/1.unite/7_1_1_unite_icerik.md",
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          'Melekler ve Özellikleri',
                          const UniteIcerik(
                            unideninAdi:
                            'Melekler ve Özellikleri',
                            mdLinkF: UniteIcerikMarkDown(
                              mdLink:
                              "assets/markdown/siniflar_md/7.siniflar_md/1.unite/7_1_2_unite_icerik.md",
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          'Dünya ve Ahiret Hayatı',
                          const UniteIcerik(
                            unideninAdi:
                            'Dünya ve Ahiret Hayatı',
                            mdLinkF: UniteIcerikMarkDown(
                              mdLink:
                              "assets/markdown/siniflar_md/7.siniflar_md/1.unite/7_1_3_unite_icerik.md",
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          'Ahiret Hayatının Aşamaları',
                          const UniteIcerik(
                            unideninAdi:
                            'Ahiret Hayatının Aşamaları',
                            mdLinkF: UniteIcerikMarkDown(
                              mdLink:
                              "assets/markdown/siniflar_md/7.siniflar_md/1.unite/7_1_4_unite_icerik.md",
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          "Ahiret İnancının İnsan Davranışlarına Etkisi",
                          const UniteIcerik(
                            unideninAdi:
                            "Ahiret İnancının İnsan Davranışlarına Etkisi",
                            mdLinkF: UniteIcerikMarkDown(
                              mdLink:
                              "assets/markdown/siniflar_md/7.siniflar_md/1.unite/7_1_5_unite_icerik.md",
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          "Bir Peygamber Tanıyorum: Hz. İsa (a.s.)",
                          const UniteIcerik(
                            unideninAdi:
                            "Bir Peygamber Tanıyorum: Hz. İsa (a.s.)",
                            mdLinkF: UniteIcerikMarkDown(
                              mdLink:
                              "assets/markdown/siniflar_md/7.siniflar_md/1.unite/7_1_6_unite_icerik.md",
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          "Bir Sure Tanıyorum: Nâs Suresi ve Anlamı",
                          const UniteIcerik(
                            unideninAdi:
                            "Bir Sure Tanıyorum: Nâs Suresi ve Anlamı",
                            mdLinkF: UniteIcerikMarkDown(
                              mdLink:
                              "assets/markdown/siniflar_md/7.siniflar_md/1.unite/7_1_7_unite_icerik.md",
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

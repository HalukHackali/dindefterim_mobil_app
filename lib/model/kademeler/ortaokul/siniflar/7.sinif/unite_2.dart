import 'package:flutter/material.dart';

import 'package:dindefterim_sari/ui/layout/kavramlar_ogrenme_alani_widget.dart';
import 'package:dindefterim_sari/ui/layout/unite_adi.dart';
import 'package:dindefterim_sari/ui/layout/unite_alt_konu_adi.dart';
import 'package:dindefterim_sari/ui/layout/unite_icerik.dart';
class Yedi_B_Ikinci_Unite extends StatefulWidget {
  const Yedi_B_Ikinci_Unite();

  @override
  _Yedi_B_Ikinci_UniteState createState() => _Yedi_B_Ikinci_UniteState();
}

class _Yedi_B_Ikinci_UniteState extends State<Yedi_B_Ikinci_Unite> {
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
                        const UniteAdi("Hac ve Kurban"),
                        const SizedBox(height: 10),
                        KavramlarOgrenmeAlani("Hac", "Umre",
                            "Tavaf", "Kurban", "İbadet"),
                        const SizedBox(height: 10),
                        unitAltKonuAdiBant(
                          context,
                          'İslam’da Hac İbadeti ve Önemi',
                          const UniteIcerik(
                            konuAdi:
                            'İslam’da Hac İbadeti ve Önemi',
                            mdLinkF: KonuIcerikMarkDown(
                              mdLink:
                                  "assets/markdown/siniflar_md/7.siniflar_md/2.unite/7_2_1_unite_icerik.md",
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          'Haccın Yapılışı',
                          const UniteIcerik(
                            konuAdi:
                            'Haccın Yapılışı',
                            mdLinkF: KonuIcerikMarkDown(
                              mdLink:
                                  "assets/markdown/siniflar_md/7.siniflar_md/2.unite/7_2_2_unite_icerik.md",
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          'Umre ve Önemi',
                          const UniteIcerik(
                            konuAdi:
                            'Umre ve Önemi',
                            mdLinkF: KonuIcerikMarkDown(
                              mdLink:
                                  "assets/markdown/siniflar_md/7.siniflar_md/2.unite/7_2_3_unite_icerik.md",
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          'Kurban İbadeti ve Önemi',
                          const UniteIcerik(
                            konuAdi:
                            'Kurban İbadeti ve Önemi',
                            mdLinkF: KonuIcerikMarkDown(
                              mdLink:
                                  "assets/markdown/siniflar_md/7.siniflar_md/2.unite/7_2_4_unite_icerik.md",
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          'Bir Peygamber Tanıyorum: Hz. İsmail (a.s.)',
                          const UniteIcerik(
                            konuAdi:
                            'Bir Peygamber Tanıyorum: Hz. İsmail (a.s.)',
                            mdLinkF: KonuIcerikMarkDown(
                              mdLink:
                                  "assets/markdown/siniflar_md/7.siniflar_md/2.unite/7_2_5_unite_icerik.md",
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          "Bir Ayet Tanıyorum: En’âm Suresi 162. Ayet",
                          const UniteIcerik(
                            konuAdi:
                            "Bir Ayet Tanıyorum: En’âm Suresi 162. Ayet",
                            mdLinkF: KonuIcerikMarkDown(
                              mdLink:
                                  "assets/markdown/siniflar_md/7.siniflar_md/2.unite/7_2_6_unite_icerik.md",
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
                                  "assets/markdown/siniflar_md/7.siniflar_md/2.unite/7_2_7_unite_icerik.md",
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

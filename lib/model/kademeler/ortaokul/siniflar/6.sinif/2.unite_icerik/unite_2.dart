import 'package:flutter/material.dart';

import 'package:dindefterim_sari/screens/layout/unite_icerik.dart';
import 'package:dindefterim_sari/screens/layout/kavramlar_ogrenme_alani_widget.dart';
import 'package:dindefterim_sari/screens/layout/unite_adi.dart';
import 'package:dindefterim_sari/screens/layout/unite_alt_konu_adi.dart';




class Bes_B_Ikinci_Unite extends StatefulWidget {
  const Bes_B_Ikinci_Unite();

  @override
  _Bes_B_Ikinci_UniteState createState() => _Bes_B_Ikinci_UniteState();
}

class _Bes_B_Ikinci_UniteState extends State<Bes_B_Ikinci_Unite> {
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
                        const UniteAdi("Namaz"),
                        const SizedBox(height: 10),
                        KavramlarOgrenmeAlani("Namaz", "Rekat", "Secde", "Rukü", "İbadet"),
                        const SizedBox(height: 10),
                        unitAltKonuAdiBant(context,
                            'Namaz İbadeti ve Önemi',
                          const UniteIcerik(
                            unideninAdi: 'Namaz İbadeti ve Önemi',
                            mdLinkF: UniteIcerikMarkDown(
                              mdLink:
                              "assets/markdown/siniflar_md/6.siniflar_md/2.unite/6_2_1_unite_icerik.md",
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(context,
                            'Namaz Çeşitleri',
                          const UniteIcerik(
                            unideninAdi: 'Namaz Çeşitleri',
                            mdLinkF: UniteIcerikMarkDown(
                              mdLink:
                              "assets/markdown/siniflar_md/6.siniflar_md/2.unite/6_2_2_unite_icerik.md",
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                            context,
                            'Namazın Kılınışı',
                          const UniteIcerik(
                            unideninAdi: 'Namazın Kılınışı',
                            mdLinkF: UniteIcerikMarkDown(
                              mdLink:
                              "assets/markdown/siniflar_md/6.siniflar_md/2.unite/6_2_3_unite_icerik.md",
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          'Namazın Tablosu',
                          const UniteIcerik(
                            unideninAdi: 'Namazın Tablosu',
                            mdLinkF: UniteIcerikMarkDown(
                              mdLink:
                              "assets/markdown/siniflar_md/6.siniflar_md/2.unite/6_2_4_unite_icerik.md",
                            ),
                          ),
                        ),

                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                            context,
                            'Bir Peygamber Tanıyorum: Hz. Zekeriya (a.s.)',
                          const UniteIcerik(
                            unideninAdi: 'Bir Peygamber Tanıyorum: Hz. Zekeriya (a.s.)',
                            mdLinkF: UniteIcerikMarkDown(
                              mdLink:
                              "assets/markdown/siniflar_md/6.siniflar_md/2.unite/6_2_5_unite_icerik.md",
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                            context,
                            'Bir Sure Tanıyorum: Fil Suresi ve Anlamı',
                          const UniteIcerik(
                            unideninAdi: 'Bir Sure Tanıyorum: Fil Suresi ve Anlamı',
                            mdLinkF: UniteIcerikMarkDown(
                              mdLink:
                              "assets/markdown/siniflar_md/6.siniflar_md/2.unite/6_2_6_unite_icerik.md",
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                            context,
                            "Ünite Soruları - hazırlanıyor",
                          const UniteIcerik(
                            unideninAdi: 'Ünite Soruları - hazırlanıyor',
                            mdLinkF: UniteIcerikMarkDown(
                              mdLink:
                              "assets/markdown/siniflar_md/6.siniflar_md/2.unite/6_2_7_unite_icerik.md",
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

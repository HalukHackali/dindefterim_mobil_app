import 'package:dindefterim_sari/quiz/screens/main_menu.dart';
import 'package:dindefterim_sari/ui/layout/kavramlar_ogrenme_alani_widget.dart';
import 'package:dindefterim_sari/ui/layout/unite_adi.dart';
import 'package:dindefterim_sari/ui/layout/unite_alt_konu_adi.dart';
import 'package:dindefterim_sari/ui/layout/unite_icerik.dart';

import 'package:flutter/material.dart';

class Dort_B_Ikinci_Unite extends StatefulWidget {
  const Dort_B_Ikinci_Unite();

  @override
  _Dort_B_Ikinci_UniteState createState() => _Dort_B_Ikinci_UniteState();
}

class _Dort_B_Ikinci_UniteState extends State<Dort_B_Ikinci_Unite> {
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
                        const UniteAdi("İslamı Tanıyalım"),
                        const SizedBox(height: 10),
                        KavramlarOgrenmeAlani(
                            "İman", "İslam", "Kur'an", "Din", "İnanç"),
                        const SizedBox(height: 10),
                        unitAltKonuAdiBant(
                          context,
                          "İslam’ın İnanç Esasları",
                          const UniteIcerik(
                            konuAdi:
                            "İslam’ın İnanç Esasları",
                            mdLinkF: KonuIcerikMarkDown(
                              mdLink:
                              "assets/markdown/siniflar_md/4.siniflar_md/2.unite/4_2_1_unite_icerik.md",
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          "İslam’ın Şartları",
                          const UniteIcerik(
                            konuAdi:
                            "İslam’ın Şartları",
                            mdLinkF: KonuIcerikMarkDown(
                              mdLink:
                              "assets/markdown/siniflar_md/4.siniflar_md/2.unite/4_2_2_unite_icerik.md",
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          "Kur’an-ı Kerim",
                          const UniteIcerik(
                            konuAdi:
                            "Kur’an-ı Kerim",
                            mdLinkF: KonuIcerikMarkDown(
                              mdLink:
                              "assets/markdown/siniflar_md/4.siniflar_md/2.unite/4_2_3_unite_icerik.md",
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          "Bir Dua Tanıyorum: Âmentü Duası ve Anlamı",
                          const UniteIcerik(
                            konuAdi:
                            "Bir Dua Tanıyorum: Âmentü Duası ve Anlamı",
                            mdLinkF: KonuIcerikMarkDown(
                              mdLink:
                              "assets/markdown/siniflar_md/4.siniflar_md/2.unite/4_2_4_unite_icerik.md",
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          "Ünite Soruları - hazırlanıyor",
                          AppQuizTest(),                        ),
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

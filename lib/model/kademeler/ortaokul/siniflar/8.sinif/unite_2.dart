import 'package:flutter/material.dart';

import 'package:dindefterim_sari/ui/layout/kavramlar_ogrenme_alani_widget.dart';
import 'package:dindefterim_sari/ui/layout/unite_adi.dart';
import 'package:dindefterim_sari/ui/layout/unite_alt_konu_adi.dart';
import 'package:dindefterim_sari/ui/layout/unite_icerik.dart';

class Sekizinci_B_Ikinci_Unite extends StatefulWidget {
  const Sekizinci_B_Ikinci_Unite();

  @override
  _Sekizinci_B_Ikinci_UniteState createState() =>
      _Sekizinci_B_Ikinci_UniteState();
}

class _Sekizinci_B_Ikinci_UniteState extends State<Sekizinci_B_Ikinci_Unite> {
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
                        const UniteAdi("Zekat ve Sadaka"),
                        const SizedBox(height: 10),
                        KavramlarOgrenmeAlani("Nisap", "Sadaka",
                            "İnfak", "Zekat", "İbadet"),
                        const SizedBox(height: 10),
                        unitAltKonuAdiBant(
                          context,
                          'İslam’ın Paylaşma ve Yardımlaşmaya Verdiği Önem',
                          const UniteIcerik(
                            konuAdi: 'İslam’ın Paylaşma ve Yardımlaşmaya Verdiği Önem',
                            mdLinkF: KonuIcerikMarkDown(
                              mdLink:
                                  "assets/markdown/siniflar_md/8.siniflar_md/2.unite/8_2_1_unite_icerik.md",
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          'Zekât ve Sadaka İbadeti',
                          const UniteIcerik(
                            konuAdi: 'Zekât ve Sadaka İbadeti',
                            mdLinkF: KonuIcerikMarkDown(
                              mdLink:
                                  "assets/markdown/siniflar_md/8.siniflar_md/2.unite/8_2_2_unite_icerik.md",
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          'Zekât ve Sadakanın Bireysel ve Toplumsal Faydaları',
                          const UniteIcerik(
                            konuAdi: 'Zekât ve Sadakanın Bireysel ve Toplumsal Faydaları',
                            mdLinkF: KonuIcerikMarkDown(
                              mdLink:
                                  "assets/markdown/siniflar_md/8.siniflar_md/2.unite/8_2_3_unite_icerik.md",
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          "Hz.Şuayb(as)'ın Hayatı",
                          const UniteIcerik(
                            konuAdi: "Hz.Şuayb(as)'ın Hayatı",
                            mdLinkF: KonuIcerikMarkDown(
                              mdLink:
                              "assets/markdown/siniflar_md/8.siniflar_md/2.unite/8_2_4_unite_icerik.md",
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          'Bir Sure Tanıyorum: Maûn Suresi ve Anlamı',
                          const UniteIcerik(
                            konuAdi: 'Bir Sure Tanıyorum: Maûn Suresi ve Anlamı',
                            mdLinkF: KonuIcerikMarkDown(
                              mdLink:
                                  "assets/markdown/siniflar_md/8.siniflar_md/2.unite/8_2_5_unite_icerik.md",
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          "Ünite Soruları - hazırlanıyor",
                          const UniteIcerik(
                            konuAdi: 'Ünite Soruları - hazırlanıyor',
                            mdLinkF: KonuIcerikMarkDown(
                              mdLink:
                                  "assets/markdown/siniflar_md/8.siniflar_md/2.unite/8_2_6_unite_icerik.md",
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

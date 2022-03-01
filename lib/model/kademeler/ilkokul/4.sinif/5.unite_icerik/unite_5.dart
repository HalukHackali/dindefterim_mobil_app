import '../../../../../ui/layout/kavramlar_ogrenme_alani_widget.dart';
import '../../../../../ui/layout/unite_adi.dart';
import '../../../../../ui/layout/unite_alt_konu_adi.dart';
import '../../../../../ui/layout/unite_icerik.dart';

import 'package:flutter/material.dart';

class Dort_E_Besinci_Unite extends StatefulWidget {
  const Dort_E_Besinci_Unite();

  @override
  _Dort_E_Besinci_UniteState createState() => _Dort_E_Besinci_UniteState();
}

class _Dort_E_Besinci_UniteState extends State<Dort_E_Besinci_Unite> {
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
                        const UniteAdi("Din ve Temizlik"),
                        const SizedBox(height: 10),
                        KavramlarOgrenmeAlani(
                            "Abdest", "Taharet", "", "", "İbadet"),
                        const SizedBox(height: 10),
                        unitAltKonuAdiBant(
                          context,
                          'İslam Dini ve Temizlik',
                          const UniteIcerik(
                            unideninAdi:
                            'İslam Dini ve Temizlik',
                            mdLinkF: UniteIcerikMarkDown(
                              mdLink:
                              "assets/markdown/siniflar_md/4.siniflar_md/5.unite/4_5_1_unite_icerik.md",
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          'Bedenimi ve Giysilerimi Temiz Tutarım',
                          const UniteIcerik(
                            unideninAdi:
                                'Bedenimi ve Giysilerimi Temiz Tutarım',
                            mdLinkF: UniteIcerikMarkDown(
                              mdLink:
                              "assets/markdown/siniflar_md/4.siniflar_md/5.unite/4_5_2_unite_icerik.md",
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          'Evimi ve Okulumu Temiz Tutarım',
                          const UniteIcerik(
                            unideninAdi:
                            'Evimi ve Okulumu Temiz Tutarım',
                            mdLinkF: UniteIcerikMarkDown(
                              mdLink:
                              "assets/markdown/siniflar_md/4.siniflar_md/5.unite/4_5_3_unite_icerik.md",
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          'Çevremi Temiz Tutarım',
                          const UniteIcerik(
                            unideninAdi:
                            'Çevremi Temiz Tutarım',
                            mdLinkF: UniteIcerikMarkDown(
                              mdLink:
                              "assets/markdown/siniflar_md/4.siniflar_md/5.unite/4_5_4_unite_icerik.md",
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          "Ünite Soruları - hazırlanıyor",
                          const UniteIcerik(
                            unideninAdi:
                            "Ünite Soruları - hazırlanıyor",
                            mdLinkF: UniteIcerikMarkDown(
                              mdLink:
                              "assets/markdown/siniflar_md/4.siniflar_md/5.unite/4_5_5_unite_icerik.md",
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
          ),
      ),
    );
  }
}

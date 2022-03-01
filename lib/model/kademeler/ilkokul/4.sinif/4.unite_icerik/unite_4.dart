import '../../../../../ui/layout/kavramlar_ogrenme_alani_widget.dart';
import '../../../../../ui/layout/unite_adi.dart';
import '../../../../../ui/layout/unite_alt_konu_adi.dart';
import '../../../../../ui/layout/unite_icerik.dart';

import 'package:flutter/material.dart';

class Dort_D_Dorduncu_Unite extends StatefulWidget {
  const Dort_D_Dorduncu_Unite();

  @override
  _Dort_D_Dorduncu_UniteState createState() => _Dort_D_Dorduncu_UniteState();
}

class _Dort_D_Dorduncu_UniteState extends State<Dort_D_Dorduncu_Unite> {
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
                        const UniteAdi("Hz. Muhammedi Tanıyalım "),
                        const SizedBox(height: 10),
                        KavramlarOgrenmeAlani("Ehl-i Beyt", "Mevlid", "Cahiliye",
                            "El-Emin", "Hz.Muhammed"),
                        const SizedBox(height: 10),
                        unitAltKonuAdiBant(
                          context,
                          "Hz. Muhammed’in (as) Doğduğu Çevre",
                          const UniteIcerik(
                            unideninAdi:
                                'Hz. Muhammed’in (as) Doğduğu Çevre',
                            mdLinkF: UniteIcerikMarkDown(
                              mdLink:
                              "assets/markdown/siniflar_md/4.siniflar_md/4.unite/4_4_1_unite_icerik.md",
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          "Hz. Muhammed’in (as) Ailesi",
                          const UniteIcerik(
                            unideninAdi: "Hz. Muhammed’in (as) Ailesi",
                            mdLinkF: UniteIcerikMarkDown(
                              mdLink:
                              "assets/markdown/siniflar_md/4.siniflar_md/4.unite/4_4_2_unite_icerik.md",
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          ' Hz. Muhammed’in (as) Doğumu',
                          const UniteIcerik(
                            unideninAdi: ' Hz. Muhammed’in (as) Doğumu',
                            mdLinkF: UniteIcerikMarkDown(
                              mdLink:
                              "assets/markdown/siniflar_md/4.siniflar_md/4.unite/4_4_3_unite_icerik.md",
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          'Çocukluk ve Gençlik Yılları',
                          const UniteIcerik(
                            unideninAdi: 'Çocukluk ve Gençlik Yılları',
                            mdLinkF: UniteIcerikMarkDown(
                              mdLink:
                              "assets/markdown/siniflar_md/4.siniflar_md/4.unite/4_4_4_unite_icerik.md",
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          'Hz. Muhammed’in (as) Mekke ve Medine Yılları',
                          const UniteIcerik(
                            unideninAdi:
                                'Hz. Muhammed’in (as) Mekke ve Medine Yılları',
                            mdLinkF: UniteIcerikMarkDown(
                              mdLink:
                              "assets/markdown/siniflar_md/4.siniflar_md/4.unite/4_4_5_unite_icerik.md",
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          'Salli ve Barik Duaları ve Anlamları',
                          const UniteIcerik(
                            unideninAdi: 'Salli ve Barik Duaları ve Anlamları',
                            mdLinkF: UniteIcerikMarkDown(
                              mdLink:
                              "assets/markdown/siniflar_md/4.siniflar_md/4.unite/4_4_6_unite_icerik.md",
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
                              "assets/markdown/siniflar_md/4.siniflar_md/4.unite/4_4_7_unite_icerik.md",
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

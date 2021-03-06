import 'package:dindefterim_sari/ui/layout/kavramlar_ogrenme_alani_widget.dart';
import 'package:dindefterim_sari/ui/layout/no_ready_page.dart';
import 'package:dindefterim_sari/ui/layout/unite_adi.dart';
import 'package:dindefterim_sari/ui/layout/unite_alt_konu_adi.dart';
import 'package:dindefterim_sari/ui/layout/unite_icerik.dart';
import 'package:flutter/material.dart';

class On_E_Besinci_Unite extends StatefulWidget {
  const On_E_Besinci_Unite();

  @override
  _On_E_Besinci_UniteState createState() => _On_E_Besinci_UniteState();
}

class _On_E_Besinci_UniteState extends State<On_E_Besinci_Unite> {
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
                        const UniteAdi(
                            "İslam Düşüncesinde Siyasi, İtikadi ve Fıkhi Yorumlar"),
                        const SizedBox(height: 10),
                        KavramlarOgrenmeAlani(
                            "İtikad", "Mezhep", "Fıkıh", "Tevil", "İnanç"),
                        const SizedBox(height: 10),
                        unitAltKonuAdiBant(
                          context,
                          'Dinî Yorum Farklılıklarının Sebepleri',
                          const UniteIcerik(
                            konuAdi:
                                'Dinî Yorum Farklılıklarının Sebepleri',
                            mdLinkF: KonuIcerikMarkDown(
                              mdLink:
                                  "assets/markdown/siniflar_md/5.siniflar_md/5_1_1_unite_icerik.md",
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          'Dinî Yorumlarla İlgili Bazı Kavramlar',
                          const UniteIcerik(
                            konuAdi:
                            'Dinî Yorumlarla İlgili Bazı Kavramlar',
                            mdLinkF: KonuIcerikMarkDown(
                              mdLink:
                                  "assets/markdown/siniflar_md/5.siniflar_md/5_1_1_unite_icerik.md",
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          'İslam Düşüncesinde İtikadi ve Siyasi Yorumlar',
                          const UniteIcerik(
                            konuAdi:
                            'İslam Düşüncesinde İtikadi ve Siyasi Yorumlar',
                            mdLinkF: KonuIcerikMarkDown(
                              mdLink:
                                  "assets/markdown/siniflar_md/5.siniflar_md/5_1_1_unite_icerik.md",
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          'İslam Düşüncesinde Fıkhi Yorumlar',
                          const UniteIcerik(
                            konuAdi:
                            'İslam Düşüncesinde Fıkhi Yorumlar',
                            mdLinkF: KonuIcerikMarkDown(
                              mdLink:
                                  "assets/markdown/siniflar_md/5.siniflar_md/5_1_1_unite_icerik.md",
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          'Nisâ Suresi 59. Ayet',
                          const UniteIcerik(
                            konuAdi: 'Nisâ Suresi 59. Ayet',
                            mdLinkF: KonuIcerikMarkDown(
                              mdLink:
                                  "assets/markdown/siniflar_md/5.siniflar_md/5_1_1_unite_icerik.md",
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          "Ünite Soruları - hazırlanıyor",
                          const NoReadyPage(),
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

import 'package:dindefterim_sari/ui/layout/kavramlar_ogrenme_alani_widget.dart';
import 'package:dindefterim_sari/ui/layout/no_ready_page.dart';
import 'package:dindefterim_sari/ui/layout/unite_adi.dart';
import 'package:dindefterim_sari/ui/layout/unite_alt_konu_adi.dart';
import 'package:dindefterim_sari/ui/layout/unite_icerik.dart';
import 'package:flutter/material.dart';

class Dokuz_D_Dorduncu_Unite extends StatefulWidget {
  const Dokuz_D_Dorduncu_Unite();

  @override
  _Dokuz_D_Dorduncu_UniteState createState() => _Dokuz_D_Dorduncu_UniteState();
}

class _Dokuz_D_Dorduncu_UniteState extends State<Dokuz_D_Dorduncu_Unite> {
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
                        const UniteAdi("Gençlik ve Değerler"),
                        const SizedBox(height: 10),
                        KavramlarOgrenmeAlani(
                            "Değer", "Ahlak", "Örf", "Adet", "Ahlak"),
                        const SizedBox(height: 10),
                        unitAltKonuAdiBant(
                          context,
                          'Değerler ve Değerlerin Kaynağı',
                          const UniteIcerik(
                            unideninAdi: 'Değerler ve Değerlerin Kaynağı',
                            mdLinkF: UniteIcerikMarkDown(
                              mdLink:
                                  "assets/markdown/siniflar_md/5.siniflar_md/5_1_1_unite_icerik.md",
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          'Gençlerin Kişilik Gelişiminde Değerlerin Yeri ve Önemi',
                          const UniteIcerik(
                            unideninAdi:
                            'Gençlerin Kişilik Gelişiminde Değerlerin Yeri ve Önemi',
                            mdLinkF: UniteIcerikMarkDown(
                              mdLink:
                                  "assets/markdown/siniflar_md/5.siniflar_md/5_1_1_unite_icerik.md",
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          'Temel Değerler',
                          const UniteIcerik(
                            unideninAdi:
                            'Temel Değerler',
                            mdLinkF: UniteIcerikMarkDown(
                              mdLink:
                                  "assets/markdown/siniflar_md/5.siniflar_md/5_1_1_unite_icerik.md",
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          'İsrâ Suresi 23-29. Ayetler',
                          const UniteIcerik(
                            unideninAdi:
                            'İsrâ Suresi 23-29. Ayetler',
                            mdLinkF: UniteIcerikMarkDown(
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

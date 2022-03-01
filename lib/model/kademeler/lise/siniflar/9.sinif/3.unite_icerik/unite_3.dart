import 'package:dindefterim_sari/ui/layout/kavramlar_ogrenme_alani_widget.dart';
import 'package:dindefterim_sari/ui/layout/no_ready_page.dart';
import 'package:dindefterim_sari/ui/layout/unite_adi.dart';
import 'package:dindefterim_sari/ui/layout/unite_alt_konu_adi.dart';
import 'package:dindefterim_sari/ui/layout/unite_icerik.dart';
import 'package:flutter/material.dart';

class Dokuz_C_Ucuncu_Unite extends StatefulWidget {
  const Dokuz_C_Ucuncu_Unite();

  @override
  _Dokuz_C_Ucuncu_UniteState createState() => _Dokuz_C_Ucuncu_UniteState();
}

class _Dokuz_C_Ucuncu_UniteState extends State<Dokuz_C_Ucuncu_Unite> {
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
                        const UniteAdi("İslam ve İbadet"),
                        const SizedBox(height: 10),
                        KavramlarOgrenmeAlani("İbadet", "Mükellef", "Salih Amel", "İhlas", "İbadet"),
                        const SizedBox(height: 10),
                        unitAltKonuAdiBant(context,
                          'İslam’da İbadet ve Kapsamı',
                          const UniteIcerik(
                            unideninAdi:
                            'İslam’da İbadet ve Kapsamı',
                            mdLinkF:  UniteIcerikMarkDown(mdLink: "assets/markdown/siniflar_md/5.siniflar_md/5_1_1_unite_icerik.md",),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(context,
                          'İslam’da İbadetin Amacı ve Önemi',
                          const UniteIcerik(
                            unideninAdi:
                            'İslam’da İbadetin Amacı ve Önemi',
                            mdLinkF:  UniteIcerikMarkDown(mdLink: "assets/markdown/siniflar_md/5.siniflar_md/5_1_1_unite_icerik.md",),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          'İslam’da İbadet Yükümlülüğü',
                          const UniteIcerik(
                            unideninAdi:
                            'İslam’da İbadet Yükümlülüğü',
                            mdLinkF:  UniteIcerikMarkDown(mdLink: "assets/markdown/siniflar_md/5.siniflar_md/5_1_1_unite_icerik.md",),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          'İslam’da İbadetlerin Temel İlkeleri',
                          const UniteIcerik(
                            unideninAdi:
                            'İslam’da İbadetlerin Temel İlkeleri',
                            mdLinkF:  UniteIcerikMarkDown(mdLink: "assets/markdown/siniflar_md/5.siniflar_md/5_1_1_unite_icerik.md",),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          'İslam’da İbadet Ahlak İlişkisi',
                          const UniteIcerik(
                            unideninAdi:
                            'İslam’da İbadet Ahlak İlişkisi',
                            mdLinkF:  UniteIcerikMarkDown(mdLink: "assets/markdown/siniflar_md/5.siniflar_md/5_1_1_unite_icerik.md",),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          'Bakara Suresi 177. Ayet',
                          const UniteIcerik(
                            unideninAdi:
                            'Bakara Suresi 177. Ayet',
                            mdLinkF:  UniteIcerikMarkDown(mdLink: "assets/markdown/siniflar_md/5.siniflar_md/5_1_1_unite_icerik.md",),
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

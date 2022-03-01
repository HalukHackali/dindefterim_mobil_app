import 'package:dindefterim_sari/ui/layout/kavramlar_ogrenme_alani_widget.dart';
import 'package:dindefterim_sari/ui/layout/no_ready_page.dart';
import 'package:dindefterim_sari/ui/layout/unite_adi.dart';
import 'package:dindefterim_sari/ui/layout/unite_alt_konu_adi.dart';
import 'package:dindefterim_sari/ui/layout/unite_icerik.dart';
import 'package:flutter/material.dart';

class On_C_Ucuncu_Unite extends StatefulWidget {
  const On_C_Ucuncu_Unite();

  @override
  _On_C_Ucuncu_UniteState createState() => _On_C_Ucuncu_UniteState();
}

class _On_C_Ucuncu_UniteState extends State<On_C_Ucuncu_Unite> {
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
                        const UniteAdi("Din ve Hayat"),
                        const SizedBox(height: 10),
                        KavramlarOgrenmeAlani("Din", "Sanat", "İktisat", "Sosyal Değişim", "Din ve Kültür"),
                        const SizedBox(height: 10),
                        unitAltKonuAdiBant(context,
                          'Din, Kültür ve Sanat',
                          const UniteIcerik(
                            konuAdi:
                            'Din, Kültür ve Sanat',
                            mdLinkF:  KonuIcerikMarkDown(mdLink: "assets/markdown/siniflar_md/5.siniflar_md/5_1_1_unite_icerik.md",),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(context,
                          'Din ve Çevre',
                          const UniteIcerik(
                            konuAdi:
                            'Din ve Çevre',
                            mdLinkF:  KonuIcerikMarkDown(mdLink: "assets/markdown/siniflar_md/5.siniflar_md/5_1_1_unite_icerik.md",),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          'Din ve Sosyal Değişim',
                          const UniteIcerik(
                            konuAdi:
                            'Din ve Sosyal Değişim',
                            mdLinkF:  KonuIcerikMarkDown(mdLink: "assets/markdown/siniflar_md/5.siniflar_md/5_1_1_unite_icerik.md",),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          'Din ve Ekonomi',
                          const UniteIcerik(
                            konuAdi:
                            'Din ve Ekonomi',
                            mdLinkF:  KonuIcerikMarkDown(mdLink: "assets/markdown/siniflar_md/5.siniflar_md/5_1_1_unite_icerik.md",),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          'Din ve Sosyal Adalet',
                          const UniteIcerik(
                            konuAdi:
                            'Din ve Sosyal Adalet',
                            mdLinkF:  KonuIcerikMarkDown(mdLink: "assets/markdown/siniflar_md/5.siniflar_md/5_1_1_unite_icerik.md",),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          'Âl-i İmrân Suresi 103-105. Ayet',
                          const UniteIcerik(
                            konuAdi:
                            'Âl-i İmrân Suresi 103-105. Ayet',
                            mdLinkF:  KonuIcerikMarkDown(mdLink: "assets/markdown/siniflar_md/5.siniflar_md/5_1_1_unite_icerik.md",),
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

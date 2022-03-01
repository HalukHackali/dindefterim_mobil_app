import 'package:dindefterim_sari/ui/layout/kavramlar_ogrenme_alani_widget.dart';
import 'package:dindefterim_sari/ui/layout/no_ready_page.dart';
import 'package:dindefterim_sari/ui/layout/unite_adi.dart';
import 'package:dindefterim_sari/ui/layout/unite_alt_konu_adi.dart';
import 'package:dindefterim_sari/ui/layout/unite_icerik.dart';
import 'package:flutter/material.dart';

class Dokuz_B_Ikinci_Unite extends StatefulWidget {
  const Dokuz_B_Ikinci_Unite();

  @override
  _Dokuz_B_Ikinci_UniteState createState() => _Dokuz_B_Ikinci_UniteState();
}

class _Dokuz_B_Ikinci_UniteState extends State<Dokuz_B_Ikinci_Unite> {
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
                        const UniteAdi("Din ve İslam"),
                        const SizedBox(height: 10),
                        KavramlarOgrenmeAlani("Din", "Fıtrat", "Hanif", "İman", "İnanç"),
                        const SizedBox(height: 10),
                        unitAltKonuAdiBant(context,
                          'Dinin Tanımı ve Kaynağı',
                          const UniteIcerik(
                            unideninAdi:
                            'Dinin Tanımı ve Kaynağı',
                            mdLinkF:  UniteIcerikMarkDown(mdLink: "assets/markdown/siniflar_md/5.siniflar_md/5_1_1_unite_icerik.md",),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(context,
                          'İnsanın Doğası ve Din',
                          const UniteIcerik(
                            unideninAdi:
                            'İnsanın Doğası ve Din',
                            mdLinkF:  UniteIcerikMarkDown(mdLink: "assets/markdown/siniflar_md/5.siniflar_md/5_1_1_unite_icerik.md",),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          'İman ve İslam İlişkisi',
                          const UniteIcerik(
                            unideninAdi:
                            'İman ve İslam İlişkisi',
                            mdLinkF:  UniteIcerikMarkDown(mdLink: "assets/markdown/siniflar_md/5.siniflar_md/5_1_1_unite_icerik.md",),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          'İslam İnanç Esaslarının Özellikleri',
                          const UniteIcerik(
                            unideninAdi:
                            'İslam İnanç Esaslarının Özellikleri',
                            mdLinkF:  UniteIcerikMarkDown(mdLink: "assets/markdown/siniflar_md/5.siniflar_md/5_1_1_unite_icerik.md",),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          'Nisâ Suresi 136. Ayet',
                          const UniteIcerik(
                            unideninAdi:
                            'Nisâ Suresi 136. Ayet',
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

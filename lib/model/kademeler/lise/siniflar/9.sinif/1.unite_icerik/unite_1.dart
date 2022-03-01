


import 'package:dindefterim_sari/ui/layout/kavramlar_ogrenme_alani_widget.dart';
import 'package:dindefterim_sari/ui/layout/no_ready_page.dart';
import 'package:dindefterim_sari/ui/layout/unite_adi.dart';
import 'package:dindefterim_sari/ui/layout/unite_alt_konu_adi.dart';
import 'package:dindefterim_sari/ui/layout/unite_icerik.dart';
import 'package:flutter/material.dart';


class Dokuz_A_Birinci_Unite extends StatefulWidget {
  const Dokuz_A_Birinci_Unite();

  @override
  Dokuz_A_Birinci_UniteState createState() => Dokuz_A_Birinci_UniteState();
}

class Dokuz_A_Birinci_UniteState extends State<Dokuz_A_Birinci_Unite> {
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
                        const UniteAdi("Bilgi ve İnanç"),
                        const SizedBox(height: 10),
                        KavramlarOgrenmeAlani("İslam", "İnanç", "Akad", "Vahiy", "İnanç"),
                        const SizedBox(height: 10),
                        unitAltKonuAdiBant(context,
                          'İslam’da Bilgi Kaynakları',
                          const UniteIcerik(
                            konuAdi:
                            '1.Alt konu başlığı',
                            mdLinkF:  KonuIcerikMarkDown(mdLink: "assets/markdown/siniflar_md/5.siniflar_md/5_1_1_unite_icerik.md",),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(context,
                          'İslam İnancında İmanın Mahiyeti',
                          const UniteIcerik(
                            konuAdi:
                            'İslam İnancında İmanın Mahiyeti',
                            mdLinkF:  KonuIcerikMarkDown(mdLink: "assets/markdown/siniflar_md/5.siniflar_md/5_1_1_unite_icerik.md",),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          'İsrâ 36. Ayet ve Mülk  23. Ayet',
                          const UniteIcerik(
                            konuAdi:
                            'İsrâ 36. Ayet ve Mülk  23. Ayet',
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


import 'package:dindefterim_sari/ui/layout/kavramlar_ogrenme_alani_widget.dart';
import 'package:dindefterim_sari/ui/layout/no_ready_page.dart';
import 'package:dindefterim_sari/ui/layout/unite_adi.dart';
import 'package:dindefterim_sari/ui/layout/unite_alt_konu_adi.dart';
import 'package:dindefterim_sari/ui/layout/unite_icerik.dart';
import 'package:flutter/material.dart';

class Oniki_A_Birinci_Unite extends StatefulWidget {
  const Oniki_A_Birinci_Unite();

  @override
  Oniki_A_Birinci_UniteState createState() => Oniki_A_Birinci_UniteState();
}

class Oniki_A_Birinci_UniteState extends State<Oniki_A_Birinci_Unite> {
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
                        const UniteAdi("İslam ve Bilim"),
                        const SizedBox(height: 10),
                        KavramlarOgrenmeAlani("İlim", "Bilim", "Alim", "Bilgin", "Din ve Kültür"),
                        const SizedBox(height: 10),
                        unitAltKonuAdiBant(context,
                          'Din-Bilim İlişkisi',
                          const UniteIcerik(
                            konuAdi:
                            'Din-Bilim İlişkisi',
                            mdLinkF:  KonuIcerikMarkDown(mdLink: "assets/markdown/siniflar_md/5.siniflar_md/5_1_1_unite_icerik.md",),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(context,
                          'İslam Medeniyetinde Bilim ve Düşüncenin Gelişimi',
                          const UniteIcerik(
                            konuAdi:
                            'İslam Medeniyetinde Bilim ve Düşüncenin Gelişimi',
                            mdLinkF:  KonuIcerikMarkDown(mdLink: "assets/markdown/siniflar_md/5.siniflar_md/5_1_1_unite_icerik.md",),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          'İslam Medeniyetinde Öne Çıkan Eğitim Kurumları',
                          const UniteIcerik(
                            konuAdi:
                            'İslam Medeniyetinde Öne Çıkan Eğitim Kurumları',
                            mdLinkF:  KonuIcerikMarkDown(mdLink: "assets/markdown/siniflar_md/5.siniflar_md/5_1_1_unite_icerik.md",),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          'Müslümanların Bilim Alanında Yaptığı Öncü ve Özgün Çalışmalar',
                          const UniteIcerik(
                            konuAdi:
                            'Müslümanların Bilim Alanında Yaptığı Öncü ve Özgün Çalışmalar',
                            mdLinkF:  KonuIcerikMarkDown(mdLink: "assets/markdown/siniflar_md/5.siniflar_md/5_1_1_unite_icerik.md",),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          'Fâtır Suresi 27-28. Ayetler',
                          const UniteIcerik(
                            konuAdi:
                            'Fâtır Suresi 27-28. Ayetler',
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

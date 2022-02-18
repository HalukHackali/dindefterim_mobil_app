
import 'package:dindefterim_sari/screens/layout/kavramlar_ogrenme_alani_widget.dart';
import 'package:dindefterim_sari/screens/layout/no_ready_page.dart';
import 'package:dindefterim_sari/screens/layout/unite_adi.dart';
import 'package:dindefterim_sari/screens/layout/unite_alt_konu_adi.dart';
import 'package:dindefterim_sari/screens/layout/unite_icerik.dart';
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
                            unideninAdi:
                            'Din-Bilim İlişkisi',
                            mdLinkF:  UniteIcerikMarkDown(mdLink: "assets/markdown/siniflar_md/5.siniflar_md/5_1_1_unite_icerik.md",),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(context,
                          'İslam Medeniyetinde Bilim ve Düşüncenin Gelişimi',
                          const UniteIcerik(
                            unideninAdi:
                            'İslam Medeniyetinde Bilim ve Düşüncenin Gelişimi',
                            mdLinkF:  UniteIcerikMarkDown(mdLink: "assets/markdown/siniflar_md/5.siniflar_md/5_1_1_unite_icerik.md",),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          'İslam Medeniyetinde Öne Çıkan Eğitim Kurumları',
                          const UniteIcerik(
                            unideninAdi:
                            'İslam Medeniyetinde Öne Çıkan Eğitim Kurumları',
                            mdLinkF:  UniteIcerikMarkDown(mdLink: "assets/markdown/siniflar_md/5.siniflar_md/5_1_1_unite_icerik.md",),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          'Müslümanların Bilim Alanında Yaptığı Öncü ve Özgün Çalışmalar',
                          const UniteIcerik(
                            unideninAdi:
                            'Müslümanların Bilim Alanında Yaptığı Öncü ve Özgün Çalışmalar',
                            mdLinkF:  UniteIcerikMarkDown(mdLink: "assets/markdown/siniflar_md/5.siniflar_md/5_1_1_unite_icerik.md",),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          'Fâtır Suresi 27-28. Ayetler',
                          const UniteIcerik(
                            unideninAdi:
                            'Fâtır Suresi 27-28. Ayetler',
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

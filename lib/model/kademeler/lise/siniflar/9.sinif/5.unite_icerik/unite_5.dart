import 'package:dindefterim_sari/screens/layout/kavramlar_ogrenme_alani_widget.dart';
import 'package:dindefterim_sari/screens/layout/no_ready_page.dart';
import 'package:dindefterim_sari/screens/layout/unite_adi.dart';
import 'package:dindefterim_sari/screens/layout/unite_alt_konu_adi.dart';
import 'package:dindefterim_sari/screens/layout/unite_icerik.dart';
import 'package:flutter/material.dart';


class Dokuz_E_Besinci_Unite extends StatefulWidget {
  const Dokuz_E_Besinci_Unite();

  @override
  _Dokuz_E_Besinci_UniteState createState() => _Dokuz_E_Besinci_UniteState();
}

class _Dokuz_E_Besinci_UniteState extends State<Dokuz_E_Besinci_Unite> {
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
                        const UniteAdi("Gönül Coğrafyamız"),
                        const SizedBox(height: 10),
                        KavramlarOgrenmeAlani("Kültür", "Medeniyet", "", "", "Din ve Kültür"),
                        const SizedBox(height: 10),
                        unitAltKonuAdiBant(context,
                            'İslam Medeniyeti ve Özellikleri',
                            const UniteIcerik(
                              unideninAdi:
                              'İslam Medeniyeti ve Özellikleri',
                              mdLinkF:  UniteIcerikMarkDown(mdLink: "assets/markdown/siniflar_md/5.siniflar_md/5_1_1_unite_icerik.md",),
                            ),
                            ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(context,
                            'İslam Medeniyetinin Farklı Coğrafyalardaki İzleri',
                            const UniteIcerik(
                              unideninAdi:
                              'İslam Medeniyetinin Farklı Coğrafyalardaki İzleri',
                              mdLinkF:  UniteIcerikMarkDown(mdLink: "assets/markdown/siniflar_md/5.siniflar_md/5_1_1_unite_icerik.md",),
                            ),
                            ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                            context,
                            'Hucurât Suresi 13. Ayet',
                            const UniteIcerik(
                              unideninAdi:
                              'Hucurât Suresi 13. Ayet',
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

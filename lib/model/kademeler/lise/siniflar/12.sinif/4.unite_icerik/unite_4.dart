import 'package:dindefterim_sari/ui/layout/kavramlar_ogrenme_alani_widget.dart';
import 'package:dindefterim_sari/ui/layout/no_ready_page.dart';
import 'package:dindefterim_sari/ui/layout/unite_adi.dart';
import 'package:dindefterim_sari/ui/layout/unite_alt_konu_adi.dart';
import 'package:dindefterim_sari/ui/layout/unite_icerik.dart';
import 'package:flutter/material.dart';


class OnikiD_Dorduncu_Unite extends StatefulWidget {
  const OnikiD_Dorduncu_Unite();

  @override
  _OnikiD_Dorduncu_UniteState createState() => _OnikiD_Dorduncu_UniteState();
}

class _OnikiD_Dorduncu_UniteState extends State<OnikiD_Dorduncu_Unite> {
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
                        const UniteAdi("Güncel Dini Meseleler"),
                        const SizedBox(height: 10),
                        KavramlarOgrenmeAlani("İcma", "Helal", "Mekruh", "Mübah", "İnanç"),
                        const SizedBox(height: 10),
                        unitAltKonuAdiBant(context,
                            'Dinî Meselelerin Çözümünde Temel İlke ve Yöntemler',
                            const UniteIcerik(
                              unideninAdi:
                              'Dinî Meselelerin Çözümünde Temel İlke ve Yöntemler',
                              mdLinkF:  UniteIcerikMarkDown(mdLink: "assets/markdown/siniflar_md/5.siniflar_md/5_1_1_unite_icerik.md",),
                            ),
                            ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(context,
                            'İktisadi Hayatla İlgili Meseleler',
                            const UniteIcerik(
                              unideninAdi:
                              'İktisadi Hayatla İlgili Meseleler',
                              mdLinkF:  UniteIcerikMarkDown(mdLink: "assets/markdown/siniflar_md/5.siniflar_md/5_1_1_unite_icerik.md",),
                            ),
                            ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                            context,
                            'Gıda Maddeleri ve Bağımlılıkla İlgili Meselelerı',
                            const UniteIcerik(
                              unideninAdi:
                              'Gıda Maddeleri ve Bağımlılıkla İlgili Meseleler',
                              mdLinkF:  UniteIcerikMarkDown(mdLink: "assets/markdown/siniflar_md/5.siniflar_md/5_1_1_unite_icerik.md",),
                            ),
                            ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                            context,
                            'Sağlık ve Tıpla İlgili Meseleler',
                            const UniteIcerik(
                              unideninAdi:
                              'Sağlık ve Tıpla İlgili Meseleler',
                              mdLinkF:  UniteIcerikMarkDown(mdLink: "assets/markdown/siniflar_md/5.siniflar_md/5_1_1_unite_icerik.md",),
                            ),
                            ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                            context,
                            'En’âm suresi 151-152. Ayetler',
                            const UniteIcerik(
                              unideninAdi:
                              'En’âm suresi 151-152. Ayetler',
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

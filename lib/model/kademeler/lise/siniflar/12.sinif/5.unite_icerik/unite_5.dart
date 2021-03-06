import 'package:dindefterim_sari/ui/layout/kavramlar_ogrenme_alani_widget.dart';
import 'package:dindefterim_sari/ui/layout/no_ready_page.dart';
import 'package:dindefterim_sari/ui/layout/unite_adi.dart';
import 'package:dindefterim_sari/ui/layout/unite_alt_konu_adi.dart';
import 'package:dindefterim_sari/ui/layout/unite_icerik.dart';
import 'package:flutter/material.dart';


class Oniki_E_Besinci_Unite extends StatefulWidget {
  const Oniki_E_Besinci_Unite();

  @override
  _Oniki_E_Besinci_UniteState createState() => _Oniki_E_Besinci_UniteState();
}

class _Oniki_E_Besinci_UniteState extends State<Oniki_E_Besinci_Unite> {
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
                        const UniteAdi("Hint Ve Çin Dinleri"),
                        const SizedBox(height: 10),
                        KavramlarOgrenmeAlani("Karma", "Tanasüh", "Reekarnasyon", "", "İnanç"),
                        const SizedBox(height: 10),
                        unitAltKonuAdiBant(context,
                            'Hinduizm',
                            const UniteIcerik(
                              konuAdi:
                              'Hinduizm',
                              mdLinkF:  KonuIcerikMarkDown(mdLink: "assets/markdown/siniflar_md/5.siniflar_md/5_1_1_unite_icerik.md",),
                            ),
                            ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(context,
                            'Budizm',
                            const UniteIcerik(
                              konuAdi:
                              'Budizm',
                              mdLinkF:  KonuIcerikMarkDown(mdLink: "assets/markdown/siniflar_md/5.siniflar_md/5_1_1_unite_icerik.md",),
                            ),
                            ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                            context,
                            'Konfüçyanizm',
                            const UniteIcerik(
                              konuAdi:
                              'Konfüçyanizm',
                              mdLinkF:  KonuIcerikMarkDown(mdLink: "assets/markdown/siniflar_md/5.siniflar_md/5_1_1_unite_icerik.md",),
                            ),
                            ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                            context,
                            'Taoizm',
                            const UniteIcerik(
                              konuAdi:
                              'Taoizm',
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

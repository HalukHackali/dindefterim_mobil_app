import 'package:dindefterim_sari/screens/layout/kavramlar_ogrenme_alani_widget.dart';
import 'package:dindefterim_sari/screens/layout/no_ready_page.dart';
import 'package:dindefterim_sari/screens/layout/unite_adi.dart';
import 'package:dindefterim_sari/screens/layout/unite_alt_konu_adi.dart';
import 'package:dindefterim_sari/screens/layout/unite_icerik.dart';
import 'package:flutter/material.dart';

class Onbir_D_Dorduncu_Unite extends StatefulWidget {
  const Onbir_D_Dorduncu_Unite();

  @override
  _Onbir_D_Dorduncu_UniteState createState() => _Onbir_D_Dorduncu_UniteState();
}

class _Onbir_D_Dorduncu_UniteState extends State<Onbir_D_Dorduncu_Unite> {
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
                        const UniteAdi("İnançla İlgili Meseleler"),
                        const SizedBox(height: 10),
                        KavramlarOgrenmeAlani(
                            "***", "***", "***", "***", "**** ****"),
                        const SizedBox(height: 10),
                        unitAltKonuAdiBant(
                          context,
                          'İnançla İlgili Felsefi Yaklaşımlar',
                          const UniteIcerik(
                            unideninAdi: 'İnançla İlgili Felsefi Yaklaşımlar',
                            mdLinkF: UniteIcerikMarkDown(
                              mdLink:
                                  "assets/markdown/siniflar_md/5.siniflar_md/5_1_1_unite_icerik.md",
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          'Yeni Dinî Hareketler',
                          const UniteIcerik(
                            unideninAdi: 'Yeni Dinî Hareketler',
                            mdLinkF: UniteIcerikMarkDown(
                              mdLink:
                                  "assets/markdown/siniflar_md/5.siniflar_md/5_1_1_unite_icerik.md",
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          'En’âm Suresi 59. Ayet',
                          const UniteIcerik(
                            unideninAdi: 'En’âm Suresi 59. Ayet',
                            mdLinkF: UniteIcerikMarkDown(
                              mdLink:
                                  "assets/markdown/siniflar_md/5.siniflar_md/5_1_1_unite_icerik.md",
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          'Lokmân Suresi 27. Ayet',
                          const UniteIcerik(
                            unideninAdi: 'Lokmân Suresi 27. Ayet',
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

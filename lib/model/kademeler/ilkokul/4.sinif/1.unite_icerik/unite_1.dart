
import 'package:dindefterim_sari/screens/layout/kavramlar_ogrenme_alani_widget.dart';
import 'package:dindefterim_sari/screens/layout/no_ready_page.dart';
import 'package:dindefterim_sari/screens/layout/unite_adi.dart';
import 'package:dindefterim_sari/screens/layout/unite_alt_konu_adi.dart';
import 'package:dindefterim_sari/screens/layout/unite_icerik.dart';
import 'package:flutter/material.dart';

class Dort_A_Birinci_Unite extends StatefulWidget {
  const Dort_A_Birinci_Unite();

  @override
  _Dort_A_Birinci_UniteState createState() => _Dort_A_Birinci_UniteState();
}

class _Dort_A_Birinci_UniteState extends State<Dort_A_Birinci_Unite> {
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
                        const UniteAdi("4.Sınıf 1.Ünite Adı"),
                        const SizedBox(
                          height: 10,
                        ),
                        KavramlarOgrenmeAlani(
                            "*****", "***", "***", "***", "***"),
                        const SizedBox(height: 10),
                        unitAltKonuAdiBant(
                            context,
                            "1.Ünite 1.Konu",
                            const UniteIcerik(
                              unideninAdi: '1.Ünite 1.Konu',
                              mdLinkF: UniteIcerikMarkDown(
                                mdLink:
                                    "assets/markdown/siniflar_md/5.siniflar_md/5_1_1_unite_icerik.md",
                              ),
                            ),
                            ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                            context,
                            "Allah(cc) Yaratandır",
                            const UniteIcerik(
                              unideninAdi: "Allah(cc) Yaratandır",
                              mdLinkF: UniteIcerikMarkDown(
                                mdLink:
                                    "assets/markdown/siniflar_md/5.siniflar_md/5_1_2_unite_icerik.md",
                              ),
                            ),
                            ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                            context,
                            "Allah(cc) Rahman ve Rahimdir",
                            const UniteIcerik(
                              unideninAdi: 'Allah(cc) Rahman ve Rahimdir',
                              mdLinkF: UniteIcerikMarkDown(
                                mdLink:
                                    "assets/markdown/siniflar_md/5.siniflar_md/5_1_3_unite_icerik.md",
                              ),
                            ),
                            ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                            context,
                            "Allah(cc) Görür ve İşitir",
                            const UniteIcerik(
                              unideninAdi: 'Allah(cc) Görür ve İşitir',
                              mdLinkF: UniteIcerikMarkDown(
                                mdLink:
                                    "assets/markdown/siniflar_md/5.siniflar_md/5_1_4_unite_icerik.md",
                              ),
                            ),
                            ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                            context,
                            "Allah'ın(cc) Her Şeye Gücü Yeter",
                            const UniteIcerik(
                              unideninAdi: "Allah'ın(cc) Her Şeye Gücü Yeter",
                              mdLinkF: UniteIcerikMarkDown(
                                mdLink:
                                    "assets/markdown/siniflar_md/5.siniflar_md/5_1_5_unite_icerik.md",
                              ),
                            ),
                            ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                            context,
                            "Allah(cc) ile İrtibat: Dua",
                            const UniteIcerik(
                              unideninAdi: 'Allah(cc) ile İrtibat: Duar',
                              mdLinkF: UniteIcerikMarkDown(
                                mdLink:
                                    "assets/markdown/siniflar_md/5.siniflar_md/5_1_6_unite_icerik.md",
                              ),
                            ),
                            ),
                        const SizedBox(
                          height: 5,
                        ),
                        unitAltKonuAdiBant(
                            context,
                            "Bir Peygamber Tanıyorum: Hz.İbrahim",
                            const UniteIcerik(
                              unideninAdi:
                                  'Bir Peygamber Tanıyorum: Hz.İbrahim',
                              mdLinkF: UniteIcerikMarkDown(
                                mdLink:
                                    "assets/markdown/siniflar_md/5.siniflar_md/5_1_7_unite_icerik.md",
                              ),
                            ),
                            ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                            context,
                            "Bir Sure Öğreniyorum: İhlas Suresi",
                            const UniteIcerik(
                              unideninAdi: 'Bir Sure Öğreniyorum: İhlas Suresi',
                              mdLinkF: UniteIcerikMarkDown(
                                mdLink:
                                    "assets/markdown/siniflar_md/5.siniflar_md/5_1_8_unite_icerik.md",
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

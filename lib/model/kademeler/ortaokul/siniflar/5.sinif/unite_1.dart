import 'package:flutter/material.dart';

import 'package:dindefterim_sari/ui/layout/kavramlar_ogrenme_alani_widget.dart';
import 'package:dindefterim_sari/ui/layout/no_ready_page.dart';
import 'package:dindefterim_sari/ui/layout/unite_adi.dart';
import 'package:dindefterim_sari/ui/layout/unite_alt_konu_adi.dart';
import 'package:dindefterim_sari/ui/layout/unite_icerik.dart';

class Bes_A_Birinci_Unite extends StatelessWidget {

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
                        const UniteAdi("Allah İnancı"),
                        const SizedBox(
                          height: 10,
                        ),
                        KavramlarOgrenmeAlani(
                            "Rahman", "Rahim", "Kadir", "İlim", "İnanç"),
                        const SizedBox(height: 10),
                        unitAltKonuAdiBant(
                          context,
                          "Allah(cc) Vardır ve Birdir",
                          const UniteIcerik(
                            konuAdi: 'Allah(cc) Vardır ve Birdir',
                            mdLinkF: KonuIcerikMarkDown(
                              mdLink:
                                  "assets/markdown/siniflar_md/5.siniflar_md/1.unite/5_1_1_unite_icerik.md",
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          "Allah(cc) Yaratandır",
                          const UniteIcerik(
                            konuAdi: "Allah(cc) Yaratandır",
                            mdLinkF: KonuIcerikMarkDown(
                              mdLink:
                                  "assets/markdown/siniflar_md/5.siniflar_md/1.unite/5_1_2_unite_icerik.md",
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          "Allah(cc) Rahman ve Rahimdir",
                          const UniteIcerik(
                            konuAdi: 'Allah(cc) Rahman ve Rahimdir',
                            mdLinkF: KonuIcerikMarkDown(
                              mdLink:
                                  "assets/markdown/siniflar_md/5.siniflar_md/1.unite/5_1_3_unite_icerik.md",
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          "Allah(cc) Görür ve İşitir",
                          const UniteIcerik(
                            konuAdi: 'Allah(cc) Görür ve İşitir',
                            mdLinkF: KonuIcerikMarkDown(
                              mdLink:
                                  "assets/markdown/siniflar_md/5.siniflar_md/1.unite/5_1_4_unite_icerik.md",
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          "Allah'ın(cc) Her Şeye Gücü Yeter",
                          const UniteIcerik(
                            konuAdi: "Allah'ın(cc) Her Şeye Gücü Yeter",
                            mdLinkF: KonuIcerikMarkDown(
                              mdLink:
                                  "assets/markdown/siniflar_md/5.siniflar_md/1.unite/5_1_5_unite_icerik.md",
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          "Allah(cc) ile İrtibat: Dua",
                          const UniteIcerik(
                            konuAdi: 'Allah(cc) ile İrtibat: Duar',
                            mdLinkF: KonuIcerikMarkDown(
                              mdLink:
                                  "assets/markdown/siniflar_md/5.siniflar_md/1.unite/5_1_6_unite_icerik.md",
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
                            konuAdi: 'Bir Peygamber Tanıyorum: Hz.İbrahim',
                            mdLinkF: KonuIcerikMarkDown(
                              mdLink:
                                  "assets/markdown/siniflar_md/5.siniflar_md/1.unite/5_1_7_unite_icerik.md",
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          "Bir Sure Öğreniyorum: İhlas Suresi",
                          const UniteIcerik(
                            konuAdi: 'Bir Sure Öğreniyorum: İhlas Suresi',
                            mdLinkF: KonuIcerikMarkDown(
                              mdLink:
                                  "assets/markdown/siniflar_md/5.siniflar_md/1.unite/5_1_8_unite_icerik.md",
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

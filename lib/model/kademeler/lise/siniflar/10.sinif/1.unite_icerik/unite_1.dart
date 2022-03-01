
import 'package:dindefterim_sari/ui/layout/kavramlar_ogrenme_alani_widget.dart';
import 'package:dindefterim_sari/ui/layout/no_ready_page.dart';
import 'package:dindefterim_sari/ui/layout/unite_adi.dart';
import 'package:dindefterim_sari/ui/layout/unite_alt_konu_adi.dart';
import 'package:dindefterim_sari/ui/layout/unite_icerik.dart';
import 'package:flutter/material.dart';

class On_A_Birinci_Unite extends StatefulWidget {
  const On_A_Birinci_Unite();

  @override
  On_A_Birinci_UniteState createState() => On_A_Birinci_UniteState();
}

class On_A_Birinci_UniteState extends State<On_A_Birinci_Unite> {
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
                        const UniteAdi("Allah-İnsan İlişkisi"),
                        const SizedBox(height: 10),
                        KavramlarOgrenmeAlani("Esmâ-i Hüsnâ,", "Tilavet", "Kıraat", "Dua", "Kur’an ve Yorumu"),
                        const SizedBox(height: 10),
                        unitAltKonuAdiBant(context,
                          'Allah İnancı ve İnsan',
                          const UniteIcerik(
                            konuAdi:
                            'Allah İnancı ve İnsan',
                            mdLinkF:  KonuIcerikMarkDown(mdLink: "assets/markdown/siniflar_md/5.siniflar_md/5_1_1_unite_icerik.md",),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(context,
                          'Allah’ın Varlığı ve Birliği',
                          const UniteIcerik(
                            konuAdi:
                            'Allah’ın Varlığı ve Birliği',
                            mdLinkF:  KonuIcerikMarkDown(mdLink: "assets/markdown/siniflar_md/5.siniflar_md/5_1_1_unite_icerik.md",),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          'Allah’ın İsim ve Sıfatları',
                          const UniteIcerik(
                            konuAdi:
                            'Allah’ın İsim ve Sıfatları',
                            mdLinkF:  KonuIcerikMarkDown(mdLink: "assets/markdown/siniflar_md/5.siniflar_md/5_1_1_unite_icerik.md",),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          'Kur’an-ı Kerim’de İnsan ve Özellikleri',
                          const UniteIcerik(
                            konuAdi:
                            'Kur’an-ı Kerim’de İnsan ve Özellikleri',
                            mdLinkF:  KonuIcerikMarkDown(mdLink: "assets/markdown/siniflar_md/5.siniflar_md/5_1_1_unite_icerik.md",),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          'İnsanın Allah İle İrtibatı',
                          const UniteIcerik(
                            konuAdi:
                            'İnsanın Allah İle İrtibatı',
                            mdLinkF:  KonuIcerikMarkDown(mdLink: "assets/markdown/siniflar_md/5.siniflar_md/5_1_1_unite_icerik.md",),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          'Rûm Suresi 18-27. Ayetler',
                          const UniteIcerik(
                            konuAdi:
                            'Rûm Suresi 18-27. Ayetler',
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

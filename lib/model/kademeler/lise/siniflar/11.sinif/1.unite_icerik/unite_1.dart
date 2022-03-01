
import 'package:dindefterim_sari/ui/layout/kavramlar_ogrenme_alani_widget.dart';
import 'package:dindefterim_sari/ui/layout/no_ready_page.dart';
import 'package:dindefterim_sari/ui/layout/unite_adi.dart';
import 'package:dindefterim_sari/ui/layout/unite_alt_konu_adi.dart';
import 'package:dindefterim_sari/ui/layout/unite_icerik.dart';
import 'package:flutter/material.dart';

class Onbir_A_Birinci_Unite extends StatefulWidget {
  const Onbir_A_Birinci_Unite();

  @override
  Onbir_A_Birinci_UniteState createState() => Onbir_A_Birinci_UniteState();
}

class Onbir_A_Birinci_UniteState extends State<Onbir_A_Birinci_Unite> {
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
                        const UniteAdi("Dünya ve Ahiret"),
                        const SizedBox(height: 10),
                        KavramlarOgrenmeAlani("Ahiret", "Vefat", "Cenaze", "", "İnaç"),
                        const SizedBox(height: 10),
                        unitAltKonuAdiBant(context,
                          'Varoluşun ve Hayatın Anlamı',
                          const UniteIcerik(
                            unideninAdi:
                            'Varoluşun ve Hayatın Anlamı',
                            mdLinkF:  UniteIcerikMarkDown(mdLink: "assets/markdown/siniflar_md/5.siniflar_md/5_1_1_unite_icerik.md",),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(context,
                          'Ahiret Âlemi',
                          const UniteIcerik(
                            unideninAdi:
                            'Ahiret Âlemi',
                            mdLinkF:  UniteIcerikMarkDown(mdLink: "assets/markdown/siniflar_md/5.siniflar_md/5_1_1_unite_icerik.md",),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          'Ahirete Uğurlama',
                          const UniteIcerik(
                            unideninAdi:
                            'Ahirete Uğurlama',
                            mdLinkF:  UniteIcerikMarkDown(mdLink: "assets/markdown/siniflar_md/5.siniflar_md/5_1_1_unite_icerik.md",),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          'Bakara Suresi 153-157. Ayetler',
                          const UniteIcerik(
                            unideninAdi:
                            'Bakara Suresi 153-157. Ayetler',
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

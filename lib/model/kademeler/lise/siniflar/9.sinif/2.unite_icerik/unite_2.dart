import 'package:dindefterim_sari/screens/layout/kavramlar_ogrenme_alani_widget.dart';
import 'package:dindefterim_sari/screens/layout/no_ready_page.dart';
import 'package:dindefterim_sari/screens/layout/unite_adi.dart';
import 'package:dindefterim_sari/screens/layout/unite_alt_konu_adi.dart';
import 'package:dindefterim_sari/screens/layout/unite_icerik.dart';
import 'package:flutter/material.dart';

class Dokuz_B_Ikinci_Unite extends StatefulWidget {
  const Dokuz_B_Ikinci_Unite();

  @override
  _Dokuz_B_Ikinci_UniteState createState() => _Dokuz_B_Ikinci_UniteState();
}

class _Dokuz_B_Ikinci_UniteState extends State<Dokuz_B_Ikinci_Unite> {
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
                        const UniteAdi("9.Sınıf 2.Ünite Adı"),
                        const SizedBox(height: 10),
                        KavramlarOgrenmeAlani("***", "***", "***", "***", "**** ****"),
                        const SizedBox(height: 10),
                        unitAltKonuAdiBant(context,
                          '1.Alt konu başlığı',
                          const UniteIcerik(
                            unideninAdi:
                            '1.Alt konu başlığı',
                            mdLinkF:  UniteIcerikMarkDown(mdLink: "assets/markdown/siniflar_md/5.siniflar_md/5_1_1_unite_icerik.md",),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(context,
                          '2.Alt konu başlığı',
                          const UniteIcerik(
                            unideninAdi:
                            '2.Alt konu başlığı',
                            mdLinkF:  UniteIcerikMarkDown(mdLink: "assets/markdown/siniflar_md/5.siniflar_md/5_1_1_unite_icerik.md",),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          '3.Alt konu başlığı',
                          const UniteIcerik(
                            unideninAdi:
                            '3.Alt konu başlığı',
                            mdLinkF:  UniteIcerikMarkDown(mdLink: "assets/markdown/siniflar_md/5.siniflar_md/5_1_1_unite_icerik.md",),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          '4.Alt konu başlığı',
                          const UniteIcerik(
                            unideninAdi:
                            '4.Alt konu başlığı',
                            mdLinkF:  UniteIcerikMarkDown(mdLink: "assets/markdown/siniflar_md/5.siniflar_md/5_1_1_unite_icerik.md",),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          '5.Alt konu başlığı',
                          const UniteIcerik(
                            unideninAdi:
                            '5.Alt konu başlığı',
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

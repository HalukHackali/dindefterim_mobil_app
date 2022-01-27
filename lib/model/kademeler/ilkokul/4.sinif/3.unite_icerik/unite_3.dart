import 'package:dindefterim_sari/screens/layout/kavramlar_ogrenme_alani_widget.dart';
import 'package:dindefterim_sari/screens/layout/no_ready_page.dart';
import 'package:dindefterim_sari/screens/layout/unite_adi.dart';
import 'package:dindefterim_sari/screens/layout/unite_alt_konu_adi.dart';
import 'package:dindefterim_sari/screens/layout/unite_icerik.dart';
import 'package:flutter/material.dart';

class Dort_C_Ucuncu_Unite extends StatefulWidget {
  const Dort_C_Ucuncu_Unite();

  @override
  _Dort_C_Ucuncu_UniteState createState() => _Dort_C_Ucuncu_UniteState();
}

class _Dort_C_Ucuncu_UniteState extends State<Dort_C_Ucuncu_Unite> {
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
                        const UniteAdi("Güzel Ahlak"),
                        const SizedBox(height: 10),
                        KavramlarOgrenmeAlani(
                            "***", "***", "***", "****", "Ahlak"),
                        const SizedBox(height: 10),
                        unitAltKonuAdiBant(
                          context,
                          "Din Güzel Ahlaktır",
                          const UniteIcerik(
                            unideninAdi: 'Nezaket Kuralları',
                            mdLinkF: UniteIcerikMarkDown(
                              mdLink:
                                  "assets/markdown/siniflar_md/5.siniflar_md/5_1_1_unite_icerik.md",
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          "İnsani İlişkilerin Temeli: Sevgi ve Saygı",
                          const UniteIcerik(
                            unideninAdi: 'Selamlaşma Adabı',
                            mdLinkF: UniteIcerikMarkDown(
                              mdLink:
                                  "assets/markdown/siniflar_md/5.siniflar_md/5_1_1_unite_icerik.md",
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          "Bir Sure Tanıyorum: Fâtiha Suresi ve Anlamı",
                          const UniteIcerik(
                            unideninAdi: 'İletişim ve Konuşma Adabı',
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

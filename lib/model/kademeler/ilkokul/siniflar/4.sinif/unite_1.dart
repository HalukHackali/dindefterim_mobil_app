
import 'package:dindefterim_sari/quiz/screens/main_menu.dart';
import 'package:dindefterim_sari/ui/layout/kavramlar_ogrenme_alani_widget.dart';
import 'package:dindefterim_sari/ui/layout/unite_adi.dart';
import 'package:dindefterim_sari/ui/layout/unite_alt_konu_adi.dart';
import 'package:dindefterim_sari/ui/layout/unite_icerik.dart';
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
                      const UniteAdi("Günlük Hayattaki Dini İfadeler"),
                      const SizedBox(
                        height: 10,
                      ),
                      KavramlarOgrenmeAlani(
                          "Dua", "Selam", "Şükür", "Hamd", "İbadet"),
                      const SizedBox(height: 10),
                      unitAltKonuAdiBant(
                        context,
                        "Günlük Konuşmalarda Dinî İfadeler",
                        const UniteIcerik(
                          konuAdi: "Günlük Konuşmalarda Dinî İfadeler",
                          mdLinkF: KonuIcerikMarkDown(
                            mdLink:
                                "assets/markdown/siniflar_md/4.siniflar_md/1.unite/4_1_1_unite_icerik.md",
                          ),
                        ),
                      ),
                      const SizedBox(height: 5),
                      unitAltKonuAdiBant(
                        context,
                        "Dilek ve Dualarda Geçen Dinî İfadeler",
                        const UniteIcerik(
                          konuAdi: "Dilek ve Dualarda Geçen Dinî İfadeler",
                          mdLinkF: KonuIcerikMarkDown(
                            mdLink:
                                "assets/markdown/siniflar_md/4.siniflar_md/1.unite/4_1_2_unite_icerik.md",
                          ),
                        ),
                      ),
                      const SizedBox(height: 5),
                      unitAltKonuAdiBant(
                        context,
                        "Bir Dua Tanıyorum: Sübhaneke Duası ve Anlamı",
                        const UniteIcerik(
                          konuAdi:
                              "Bir Dua Tanıyorum: Sübhaneke Duası ve Anlamı",
                          mdLinkF: KonuIcerikMarkDown(
                            mdLink:
                                "assets/markdown/siniflar_md/4.siniflar_md/1.unite/4_1_3_unite_icerik.md",
                          ),
                        ),
                      ),
                      const SizedBox(height: 5),
                      unitAltKonuAdiBant(
                        context,
                        "Ünite Soruları - hazırlanıyor",
                        AppQuizTest(),
                      ),
                      const SizedBox(height: 5),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

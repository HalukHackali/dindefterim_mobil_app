import 'package:dindefterim_sari/ui/layout/kavramlar_ogrenme_alani_widget.dart';
import 'package:dindefterim_sari/ui/layout/no_ready_page.dart';
import 'package:dindefterim_sari/ui/layout/unite_adi.dart';
import 'package:dindefterim_sari/ui/layout/unite_alt_konu_adi.dart';
import 'package:dindefterim_sari/ui/layout/unite_icerik.dart';
import 'package:flutter/material.dart';

class Bes_C_Ucuncu_Unite extends StatefulWidget {
  const Bes_C_Ucuncu_Unite();

  @override
  _Bes_C_Ucuncu_UniteState createState() => _Bes_C_Ucuncu_UniteState();
}

class _Bes_C_Ucuncu_UniteState extends State<Bes_C_Ucuncu_Unite> {
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
                        const UniteAdi("Adap ve Nezaket"),
                        const SizedBox(height: 10),
                        KavramlarOgrenmeAlani(
                          "Selam",
                          "Komşuluk",
                          "İletişim",
                          "Adabı-ı Muaşeret",
                          "Ahlak",
                        ),
                        const SizedBox(height: 10),
                        unitAltKonuAdiBant(
                          context,
                          "Nezaket Kuralları",
                          const UniteIcerik(
                            konuAdi: 'Nezaket Kuralları',
                            mdLinkF: KonuIcerikMarkDown(
                              mdLink:
                                  "assets/markdown/siniflar_md/5.siniflar_md/3.unite/5_3_1_unite_icerik.md",
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          "Selamlaşma Adabı",
                          const UniteIcerik(
                            konuAdi: 'Selamlaşma Adabı',
                            mdLinkF: KonuIcerikMarkDown(
                              mdLink:
                              "assets/markdown/siniflar_md/5.siniflar_md/3.unite/5_3_2_unite_icerik.md",
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          "İletişim ve Konuşma Adabı",
                          const UniteIcerik(
                            konuAdi: 'İletişim ve Konuşma Adabı',
                            mdLinkF: KonuIcerikMarkDown(
                              mdLink:
                              "assets/markdown/siniflar_md/5.siniflar_md/3.unite/5_3_3_unite_icerik.md",
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          "Sofra Adabı",
                          const UniteIcerik(
                            konuAdi: 'Sofra Adabı',
                            mdLinkF: KonuIcerikMarkDown(
                              mdLink:
                              "assets/markdown/siniflar_md/5.siniflar_md/3.unite/5_3_4_unite_icerik.md",
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          "Hz.Lokman’dan (a.s.) Öğütler",
                          const UniteIcerik(
                            konuAdi: 'Hz. Lokman’dan (a.s.) Öğütler',
                            mdLinkF: KonuIcerikMarkDown(
                              mdLink:
                              "assets/markdown/siniflar_md/5.siniflar_md/3.unite/5_3_5_unite_icerik.md",
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          "Bir Dua Tanıyorum: Tahiyyat Duası ve Anlamı",
                          const UniteIcerik(
                            konuAdi:
                                'Bir Dua Tanıyorum: Tahiyyat Duası ve Anlamı',
                            mdLinkF: KonuIcerikMarkDown(
                              mdLink:
                              "assets/markdown/siniflar_md/5.siniflar_md/3.unite/5_3_6_unite_icerik.md",
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          "Ünite Soruları - hazırlanıyor",
                          const UniteIcerik(
                            konuAdi:
                            'Ünite Soruları - hazırlanıyor',
                            mdLinkF: KonuIcerikMarkDown(
                              mdLink:
                              "assets/markdown/siniflar_md/5.siniflar_md/3.unite/5_3_7_unite_icerik.md",
                            ),
                          ),
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

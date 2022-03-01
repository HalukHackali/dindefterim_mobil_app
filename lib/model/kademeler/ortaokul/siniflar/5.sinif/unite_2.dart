import 'package:dindefterim_sari/ui/layout/kavramlar_ogrenme_alani_widget.dart';
import 'package:dindefterim_sari/ui/layout/no_ready_page.dart';
import 'package:dindefterim_sari/ui/layout/unite_adi.dart';
import 'package:dindefterim_sari/ui/layout/unite_alt_konu_adi.dart';
import 'package:dindefterim_sari/ui/layout/unite_icerik.dart';
import 'package:flutter/material.dart';

class Bes_B_Ikinci_Unite extends StatefulWidget {
  const Bes_B_Ikinci_Unite();

  @override
  _Bes_B_Ikinci_UniteState createState() => _Bes_B_Ikinci_UniteState();
}

class _Bes_B_Ikinci_UniteState extends State<Bes_B_Ikinci_Unite> {
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
                        const UniteAdi("Ramazan ve Oruc"),
                        const SizedBox(height: 10),
                        KavramlarOgrenmeAlani("İftar", "İmsak", "Teravih", "Oruç", "İbadet"),
                        const SizedBox(height: 10),
                        unitAltKonuAdiBant(
                            context,
                            "Ramazan Orucu ve Önemi",
                            const UniteIcerik(
                              konuAdi: 'Ramazan Orucu ve Önemi',
                              mdLinkF: KonuIcerikMarkDown(
                                mdLink:
                                    "assets/markdown/siniflar_md/5.siniflar_md/2.unite/5_2_1_unite_icerik.md",
                              ),
                            ),
                            ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                            context,
                            "Ramazan ve Orucla İlgili Kavramlar",
                            const UniteIcerik(
                              konuAdi: 'Ramazan ve Orucla İlgili Kavramlar',
                              mdLinkF: KonuIcerikMarkDown(
                                mdLink:
                                "assets/markdown/siniflar_md/5.siniflar_md/2.unite/5_2_2_unite_icerik.md",
                              ),
                            ),
                            ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                            context,
                            "Kültürümüzde Ramzan ve Oruc",
                            const UniteIcerik(
                              konuAdi: 'Kültürümüzde Ramzan ve Oruc',
                              mdLinkF: KonuIcerikMarkDown(
                                mdLink:
                                "assets/markdown/siniflar_md/5.siniflar_md/2.unite/5_2_3_unite_icerik.md",
                              ),
                            ),
                            ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                            context,
                            "Bir Peygamber Tanıyorum:Hz.Davut",
                            const UniteIcerik(
                              konuAdi: 'Bir Peygamber Tanıyorum:Hz.Davut',
                              mdLinkF: KonuIcerikMarkDown(
                                mdLink:
                                "assets/markdown/siniflar_md/5.siniflar_md/2.unite/5_2_4_unite_icerik.md",
                              ),
                            ),
                            ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                            context,
                            "Bir Dua Öğreniyorum: Rabbena Duaları",
                            const UniteIcerik(
                              konuAdi:
                                  'Bir Dua Öğreniyorum: Rabbena Duaları',
                              mdLinkF: KonuIcerikMarkDown(
                                mdLink:
                                "assets/markdown/siniflar_md/5.siniflar_md/2.unite/5_2_5_unite_icerik.md",
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
                              "assets/markdown/siniflar_md/5.siniflar_md/2.unite/5_2_6_unite_icerik.md",
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

import 'package:dindefterim_sari/ui/layout/kavramlar_ogrenme_alani_widget.dart';
import 'package:dindefterim_sari/ui/layout/no_ready_page.dart';
import 'package:dindefterim_sari/ui/layout/unite_adi.dart';
import 'package:dindefterim_sari/ui/layout/unite_alt_konu_adi.dart';
import 'package:dindefterim_sari/ui/layout/unite_icerik.dart';
import 'package:flutter/material.dart';


class Bes_D_Dorduncu_Unite extends StatefulWidget {
  const Bes_D_Dorduncu_Unite();

  @override
  _Bes_D_Dorduncu_UniteState createState() => _Bes_D_Dorduncu_UniteState();
}

class _Bes_D_Dorduncu_UniteState extends State<Bes_D_Dorduncu_Unite> {
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
                        const UniteAdi("Hz. Muhammed ve Aile Hayatı"),
                        const SizedBox(height: 10),
                        KavramlarOgrenmeAlani("Aile", "Kevser", "Yardımlaşma", "Kavram", "Hz.Muhammed"),
                        const SizedBox(height: 10),
                        unitAltKonuAdiBant(
                            context,
                            "Hz. Muhammed’in Evliliği ve Çocukları",
                            const UniteIcerik(
                              konuAdi:
                                  'Hz. Muhammed’in Evliliği ve Çocukları',
                              mdLinkF:  KonuIcerikMarkDown(mdLink: "assets/markdown/siniflar_md/5.siniflar_md/4.unite/5_4_1_unite_icerik.md",),
                            ),
                            ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                            context,
                            "Bir Eş Olarak Hz.Muhammed",
                            const UniteIcerik(
                              konuAdi: "Bir Eş Olarak Hz.Muhammed",
                              mdLinkF:  KonuIcerikMarkDown(mdLink: "assets/markdown/siniflar_md/5.siniflar_md/4.unite/5_4_2_unite_icerik.md",),
                            ),
                            ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                            context,
                            'Bir Baba Olarak Hz.Muhammed',
                            const UniteIcerik(
                              konuAdi: 'Bir Baba Olarak Hz.Muhammed',
                              mdLinkF:  KonuIcerikMarkDown(mdLink: "assets/markdown/siniflar_md/5.siniflar_md/4.unite/5_4_3_unite_icerik.md",),
                            ),
                            ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                            context,
                            'Bir Dede Olarak Hz.Muhammed',
                            const UniteIcerik(
                              konuAdi: 'Bir Dede Olarak Hz.Muhammed',
                              mdLinkF:  KonuIcerikMarkDown(mdLink: "assets/markdown/siniflar_md/5.siniflar_md/4.unite/5_4_4_unite_icerik.md",),
                            ),
                            ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                            context,
                            'Hz.Muhammed ve Ailesinin Örnek Davranışları',
                            const UniteIcerik(
                              konuAdi:
                                  'Hz.Muhammed ve Ailesinin Örnek Davranışları',
                              mdLinkF:  KonuIcerikMarkDown(mdLink: "assets/markdown/siniflar_md/5.siniflar_md/5_4_5_unite_icerik.md",),
                            ),
                            ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                            context,
                            'Hz.Hasan ve Hz.Hüseyin',
                            const UniteIcerik(
                              konuAdi: 'Hz.Hasan ve Hz.Hüseyin',
                              mdLinkF:  KonuIcerikMarkDown(mdLink: "assets/markdown/siniflar_md/5.siniflar_md/4.unite/5_1_6_unite_icerik.md",),
                            ),
                            ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                            context,
                            'Bir Sure Tanıyorum: Kevser Suresi ve Anlamı',
                            const UniteIcerik(
                              konuAdi:
                                  'Bir Sure Tanıyorum: Kevser Suresi ve Anlamı',
                              mdLinkF:  KonuIcerikMarkDown(mdLink: "assets/markdown/siniflar_md/5.siniflar_md/4.unite/5_4_7_unite_icerik.md",),
                            ),
                            ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                            context,
                            "Ünite Soruları - hazırlanıyor",
                          const UniteIcerik(
                            konuAdi:
                            'Ünite Soruları - hazırlanıyor',
                            mdLinkF:  KonuIcerikMarkDown(mdLink: "assets/markdown/siniflar_md/5.siniflar_md/4.unite/5_4_8_unite_icerik.md",),
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
